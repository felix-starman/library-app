`import Ember from 'ember'`

LibrariesNewRoute = Ember.Route.extend(

  model: ->
    @store.findAll('library')

  actions:

    saveLibrary: (newLibrary) ->
      `newLibrary.save().then(() => this.transitionTo('libraries'));`

    willTransition: ->
      model = @controller.get('model')
      if model.get('isNew')
        model.destroyRecord()
)

`export default LibrariesNewRoute`
