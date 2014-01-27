Template['btn-submit'].events
	'click': (e, t) ->
		helper = ($ '[data-helper]').data()
		e.preventDefault()
		options = form2js helper.form
		if @_id
			Meteor.call helper.method, options, @_id
		else
			Meteor.call helper.method, options
