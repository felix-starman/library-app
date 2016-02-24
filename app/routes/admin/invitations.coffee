`import Ember from 'ember'`

AdminInvitationsRoute = Ember.Route.extend(

  model: ->
    @store.findAll('invitation')

  actions:

    deleteInvitation: (invitation) ->
      confirmation = confirm('Are you sure?')
      if (confirmation)
        invitation.destroyRecord()
)

`export default AdminInvitationsRoute`
