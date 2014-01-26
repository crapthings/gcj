Router.map ->
	@route 'backend-home',
		layoutTemplate: 'backend-layout'
		path: '/backend'
		data: ->
			page:
				title: '后台首页'
