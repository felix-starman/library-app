`import Ember from 'ember'`

LibrariesIndexRoute = Ember.Route.extend(

  model: @store.findAll('library')
)

`export default LibrariesIndexRoute`
