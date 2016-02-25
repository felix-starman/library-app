`import Ember from 'ember'`

IndexController = Ember.Controller.extend(

  emailAddress: '',
  responseMessage: '',
  emailAddress: '',

  isValid: Ember.computed.match('emailAddress', /^.+@.+\..+$/)
  isDisabled: Ember.computed.not('isValid')

  actions:
    saveInvitation: ->
      email = @get('emailAddress')
      newInvitation = @store.createRecord('invitation', {email: email})
      newInvitation.save().then((response)=>
        @set('responseMessage', "Thank you! We've just saved your email address with the following id: #{response.get('id')}")
        @set('emailAddress', '')
      )

)

`export default IndexController`
