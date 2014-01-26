Router.map ->
	@route 'backend-system-users',
		path: '/backend/system/users'
		layoutTemplate: 'backend-layout'
		yieldTemplates:
			'backend-system-nav':
				to: 'nav'
		data: ->
			page:
				title: '系统用户'
