define [
    'jquery',
    'underscore',
    'backbone',
    'jade!templates/sidebar',
    'cs!data'

], ($, _, Backbone, SidebarTemplate, Data) ->

    SidebarView = Backbone.View.extend

        el: $('#sidebar')

        render: ->
            this.$el.html( SidebarTemplate(Data) )

    return new SidebarView
