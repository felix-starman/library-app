`import Ember from 'ember'`

LibrariesIndexRoute = Ember.Route.extend(

  model: ->
    @store.findAll('library')

  actions:

    deleteLibrary: (library) ->
      confirmation = confirm('Are you sure?')
      if (confirmation)
        library.destroyRecord()
)

`export default LibrariesIndexRoute`
