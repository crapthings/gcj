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
			postsList: Posts.find {},
				sort:
					timestamp: -1

	@route 'backend-posts-new',
		layoutTemplate: 'backend-layout',
		path: '/backend/posts/new'
		layoutTemplate: 'backend-layout'
		yieldTemplates:
			'backend-posts-nav':
				to: 'nav'
		data: ->
			page:
				title: '添加内容'

	@route 'backend-posts-edit',
		layoutTemplate: 'backend-layout'
		path: '/backend/posts/edit/:_id'
		yieldTemplates:
			'backend-posts-nav':
				to: 'nav'
		data: ->
			page:
				title: '编辑内容'
			post: Posts.findOne @params._id
