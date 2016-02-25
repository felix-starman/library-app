`import Ember from 'ember'`

LibraryItemFormComponent = Ember.Component.extend(
  buttonLabal: 'Save'

  actions:

    buttonClicked: (param) ->
      @sendAction('action', param)
)

`export default LibraryItemFormComponent`
