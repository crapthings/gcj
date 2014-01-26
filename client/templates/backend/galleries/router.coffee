Router.map ->
	@route 'backend-galleries',
		layoutTemplate: 'backend-layout'
		path: '/backend/galleries'
		data: ->
			page:
				title: '相册管理'
