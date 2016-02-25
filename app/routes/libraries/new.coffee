`import Ember from 'ember'`

LibrariesNewRoute = Ember.Route.extend(

  model: ->
    @store.createRecord('library')

  setupController: (controller,model) ->
    @_super(controller,model)
    controller.set('title', 'Create a new Library')
    controller.set('buttonLabel', 'Create')

  renderTemplate: ->
    @render('libraries/form')

  actions:

    saveLibrary: (newLibrary) ->
      newLibrary.save().then( =>
        @transitionTo('libraries'))

    willTransition: ->
      model = @controller.get('model')
      if model.get('isNew')
        model.destroyRecord()
)

`export default LibrariesNewRoute`
