`import Ember from 'ember'`

AdminContactsRoute = Ember.Route.extend(

  model: ->
    @store.findAll('contact')
)
`export default AdminContactsRoute`
