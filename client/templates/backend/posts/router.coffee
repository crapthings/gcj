Router.map ->
	@route 'backend-posts',
		path: '/backend/posts'
		layoutTemplate: 'backend-layout'
		yieldTemplates:
			'backend-posts-nav':
				to: 'nav'
		data: ->
			page:
				title: '网站内容'

	@route 'backend-posts-new',
		layoutTemplate: 'backend-layout',
		path: '/backend/posts/new'
		layoutTemplate: 'backend-layout'
		yieldTemplates:
			'backend-posts-nav':
				to: 'nav'
		data: ->
			page:
				title: '添加新内容'
