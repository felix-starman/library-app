`import Ember from 'ember'`

LibrariesNewRoute = Ember.Route.extend(

  model: ->
    @store.createRecord('library')

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
