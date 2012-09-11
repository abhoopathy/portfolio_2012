define [
    'jquery',
    'underscore',
    'backbone',

    'cs!views/sidebar'
    'cs!views/main'

], ($, _, Backbone, SidebarView, MainView) ->

    AppRouter = Backbone.Router.extend
        self: this

        routes:
            'proj/:tag_name': 'show_project'
            'branding': 'show_branding_page'
            '': 'home'

        home: ->
            this.show_project('venmoHomepage')

        show_project: (tag_name) ->
            SidebarView.make_active(tag_name)
            MainView.render(tag_name)

        show_branding_page: () ->
            MainView.render('branding')

    returnable =

        sidebarView: SidebarView

        initialize: ->
            app_router = new AppRouter
            Backbone.history.start()
            this.sidebarView.render()
