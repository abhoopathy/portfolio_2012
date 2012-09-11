define [
    'jquery',
    'underscore',
    'backbone',
    'cs!data',

    'cs!views/sidebar'
    'cs!views/main'

], ($, _, Backbone, Data, SidebarView, MainView) ->

    AppRouter = Backbone.Router.extend
        self: this

        routes:
            'home': 'home'
            'proj/:tag_name': 'show_project'
            'branding': 'show_branding_page'

        home: ->
            console.log 'home'

        show_project: (tag_name) ->
            MainView.render(tag_name)

        show_branding_page: () ->
            MainView.render('branding')

    returnable =

        sidebarView: SidebarView

        initialize: ->
            app_router = new AppRouter
            Backbone.history.start()
            this.sidebarView.render()
