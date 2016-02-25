`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'nav-link-to', 'Integration | Component | nav link to', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{nav-link-to}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#nav-link-to}}
      template block text
    {{/nav-link-to}}
  """

  assert.equal @$().text().trim(), 'template block text'
