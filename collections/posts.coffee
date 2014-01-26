@Posts = new Meteor.Collection 'posts'

Meteor.methods

	newPost: (options) ->
		Posts.insert options

	editPost: (options, postId) ->
		Posts.update postId,
			$set: options
