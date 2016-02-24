`import Ember from 'ember'`

LibrariesNewRoute = Ember.Route.extend(

  model: @store.findAll('library')

  actions:

    saveLibrary: (newLibrary) ->
      newLibrary.save().then( ->
        @transitionTo('libraries')
      )

    willTranstition: ->
      @controller.get('model').rollbackAttributes()
)

`export default LibrariesNewRoute`
