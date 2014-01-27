@Posts = new Meteor.Collection 'posts'

Posts.before.insert (userId, post) ->
	_.extend post,
		createdAt: new Date()
		timestamp: Date.now()

Meteor.methods

	newPost: (options) ->
		Posts.insert options

	editPost: (options, postId) ->
		Posts.update postId,
			$set: options
