

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'espamacs.EspamacsUser'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'espamacs.EspamacsUserRole'
grails.plugin.springsecurity.authority.className = 'espamacs.Role'
grails.plugin.springsecurity.password.algorithm = 'bcrypt'

grails.plugin.springsecurity.adh.errorPage = '/error/notAuthorized'

grails.plugin.springsecurity.controllerAnnotations.staticRules = [
		[pattern: '/error',          access: ['permitAll']],
		[pattern: '/shutdown',       access: ['permitAll']],
		[pattern: '/assets/**',      access: ['permitAll']],
		[pattern: '/assets/**',      access: ['permitAll']],
		[pattern: '/**/js/**',       access: ['permitAll']],
		[pattern: '/**/css/**',      access: ['permitAll']],
		[pattern: '/**/images/**',   access: ['permitAll']],
		[pattern: '/**/favicon.ico', access: ['permitAll']],
		[pattern: '/login',          access: ['permitAll']],
		[pattern: '/login/**',       access: ['permitAll']],
		[pattern: '/logout',         access: ['permitAll']],
		[pattern: '/logoff',         access: ['permitAll']],
		[pattern: '/logout/**',      access: ['permitAll']],
		[pattern: '/**',             access: ['IS_AUTHENTICATED_REMEMBERED']],
]
grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]


grails.databinding.dateFormats=["dd/MM/yyyy"]
