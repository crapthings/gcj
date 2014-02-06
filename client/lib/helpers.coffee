getCurrentDatetime = ->
	return moment().format('YYYY年M月D日 A HH:mm:ss dddd')

Helper = Handlebars.registerHelper

Helper 'activeFor', (path) ->
    if Router.current().route.name is path
    	return 'active'

Helper 'truncate', (context, length) ->
	return context.truncate length

Helper 'formatDate', (date, format) ->
	return moment(date).format(format)

Helper 'checkRadio', (key, value) ->
	if @[key] is value
		return 'checked'

Helper 'currentDatetime', ->
	return Session.get 'currentDatetime'

Meteor.startup ->

	moment.lang('zh-cn')

	Session.setDefault 'currentDatetime', getCurrentDatetime()

	Meteor.setInterval ->
		Session.set 'currentDatetime', getCurrentDatetime()
	, 1000
