Router.map ->
	@route 'backend-posts',
		layoutTemplate: 'backend-layout'
		path: '/backend/posts'
		data: ->
			page:
				title: '网站内容'