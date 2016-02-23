`import Ember from 'ember'`

IndexController = Ember.Controller.extend(
  
  emailAddress: '',

  actualEmailAddress: Ember.computed('emailAddress', ->
    console.log('actualEmailAddress functions is called: ', this.get('emailAddress'))
  )

  isValid: Ember.computed.match('emailAddress', /^.+@.+\..+$/)
  isDisabled: Ember.computed.not('isValid')

  actions:
    saveInvitation: ->
      alert("Saving of the following email address is in progress: #{@get('emailAddress')}")
      @set('responseMessage', "Thank you! We've just saved your email address: #{@get('emailAddress')}")
      @set('emailAddress', '')

)

`export default IndexController`
