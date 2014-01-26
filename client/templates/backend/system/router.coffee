Router.map ->
	@route 'backend-system',
		path: '/backend/system'
		layoutTemplate: 'backend-layout'
		yieldTemplates:
			'backend-system-nav':
				to: 'nav'
		data: ->
			page:
				title: '系统设置'
