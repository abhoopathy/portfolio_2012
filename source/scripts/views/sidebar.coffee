define [
    'jquery',
    'underscore',
    'backbone',
    'jade!templates/sidebar',
    'cs!data'

], ($, _, Backbone, SidebarTemplate, Data) ->

    SidebarView = Backbone.View.extend

        el: $('#sidebar')

        make_active: (tag_name) ->
            this.render()
            $a = this.$el.find("a")
            $a.removeClass('active')
            # find link of active page, add .active class
            $a = this.$el.find("a[href='#proj/#{tag_name}']")
            $a.addClass('active')

        rendered: false

        render: ->
            # if this is already rendered, don't rerender
            if !this.rendered
                this.$el.html( SidebarTemplate(Data) )
                this.rendered = true

    return new SidebarView
