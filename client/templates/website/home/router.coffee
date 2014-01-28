Router.map ->
	@route 'website-home',
		layoutTemplate: 'website-layout'
		path: '/'
		data: ->
			notices: _.sample data, 10
			news: _.sample data, 10
			latestNews: (category) ->
				Posts.find { category: '新闻动态' },
					sort:
						timestamp: -1
			latestPosts: (category, limit) ->
				Posts.find { category: category },
					sort:
						timestamp: -1
					limit: limit
