`import Ember from 'ember'`

ContactController = Ember.Controller.extend(

  emailAddress: '',
  message: '',

  isValidEmail: Ember.computed.match('emailAddress', /^.+@.+\..+$/)
  isValidMessage: Ember.computed.gte('message.length', 5)
  isDisabled: Ember.computed.not('isValidEmail') && Ember.computed.not('isValidMessage')

  actions:
    sendMessage: ->
      email = @get('emailAddress')
      message = @get('message')
      newContact = @store.createRecord('contact', {email: email, message: message})
      newContact.save().then((response) =>
        console.log("We just saved your email address with the following id: #{response.get('id')}")
      )
      @set('emailAddress', '')
      @set('message', '')

)
`export default ContactController`
