`import Ember from 'ember'`

LibrariesEditRoute = Ember.Route.extend(

  model: (params) ->
    @store.findRecord('library', params.library_id)

  setupController: (controller,model) ->
    @_super(controller,model)
    controller.set('title', 'Edit Library')
    controller.set('buttonLabel', 'Save')

  renderTemplate: ->
    @render('libraries/form')

  actions:

    saveLibrary: (newLibrary) ->
      newLibrary.save().then( =>
        @transitionTo('libraries'))

    willTransition: (transition) ->
      model = @controller.get('model')
      if model.get('hasDirtyAttributes')
        confirmation = confirm("Your changes haven't saved yet. Would you like to leave this form?")
        if (confirmation)
          model.rollbackAttributes()
        else
          transition.abort()
)

`export default LibrariesEditRoute`
