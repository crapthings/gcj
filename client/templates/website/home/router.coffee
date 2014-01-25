Router.map ->
	@route 'website-home',
		layoutTemplate: 'website-layout'
		path: '/'
		data: ->
			notices: _.sample data, 10
			news: _.sample data, 10
