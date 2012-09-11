define [
    'jquery',
    'underscore',
    'backbone',

    'jade!templates/brandingPage',

    'cs!data'

], ($, _, Backbone,
    BrandingPageTemplate,
    Data) ->

    MainView = Backbone.View.extend

        el: $('#main_container')

        render: (tag_name) ->

            if tag_name == 'branding'
                this.$el.find('.main_page').html('').fadeOut 75, ->
                    $(this).html( BrandingPageTemplate() ).fadeIn(150)

            else
                project = Data.projects[tag_name]
                this.$el.find('.main_page').html('').fadeOut 75, ->
                    $(this).html( project.template(project) ).fadeIn(150)

    return new MainView
