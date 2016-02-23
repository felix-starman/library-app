`import Ember from 'ember'`

ContactController = Ember.Controller.extend(

  emailAddress: '',
  message: '',

  isValidEmail: Ember.computed.match('emailAddress', /^.+@.+\..+$/)
  isValidMessage: Ember.computed.gte('message.length', 5)
  isDisabled: Ember.computed.and('isValidEmail', 'isValidMessage')

)
`export default ContactController`
