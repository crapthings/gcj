Helper = Handlebars.registerHelper

Helper 'activeFor', (path) ->
    if Router.current().route.name is path
    	return 'active'

Helper 'truncate', (context, length) ->
	return context.truncate length
