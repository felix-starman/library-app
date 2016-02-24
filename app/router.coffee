`import Ember from 'ember';`
`import config from './config/environment';`

Router = Ember.Router.extend(
  location: config.locationType
)

Router.map( ->
  @route('about')
  @route('contact')

  @route('admin', ->
    @route('invitations')
    @route('contacts')
  )

  @route('libraries', ->
    @route('new')
    @route('edit', path: '/:library_id/edit')
  )
)

`export default Router;`
