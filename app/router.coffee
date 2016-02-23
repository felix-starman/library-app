`import Ember from 'ember';`
`import config from './config/environment';`

Router = Ember.Router.extend(
  location: config.locationType
)

Router.map( ->
  @route('about', path: '/about')
  @route('contact', path: '/contact')
)

`export default Router;`
