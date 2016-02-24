`import Ember from 'ember'`

AdminInvitationsRoute = Ember.Route.extend(

  model: ->
    @store.findAll('invitation')
)

`export default AdminInvitationsRoute`
