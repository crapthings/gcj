Template['backend-posts-item'].events
	'click .remove': (e, t) ->
		e.preventDefault()
		Meteor.call 'removePost', @_id
