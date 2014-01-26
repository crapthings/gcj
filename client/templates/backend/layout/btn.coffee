Template['btn-submit'].events
	'click': (e, t) ->
		helper = ($ '[data-helper]').data()
		e.preventDefault()
		options = form2js helper.form
		Meteor.call helper.method, options
