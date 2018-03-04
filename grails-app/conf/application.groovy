

// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.userLookup.userDomainClassName = 'com.tecnosalle.sca.Usuario'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'com.tecnosalle.sca.UsuarioRol'
grails.plugin.springsecurity.authority.className = 'com.tecnosalle.sca.Rol'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',                		access: ['IS_AUTHENTICATED_FULLY']],
	[pattern: '/error',           		access: ['permitAll']],
	[pattern: '/olvidePassword', 			access: ['permitAll']],
	[pattern: '/olvidePassword.gsp',  access: ['permitAll']],
	[pattern: '/index',          			access: ['IS_AUTHENTICATED_FULLY']],
	[pattern: '/index.gsp',       		access: ['IS_AUTHENTICATED_FULLY']],
	[pattern: '/perfil',          		access: ['IS_AUTHENTICATED_FULLY']],
	[pattern: '/perfil.gsp',      		access: ['IS_AUTHENTICATED_FULLY']],
	[pattern: '/acerca-de',       		access: ['IS_AUTHENTICATED_FULLY']],
	[pattern: '/acerca-de.gsp',   		access: ['IS_AUTHENTICATED_FULLY']],
	[pattern: '/shutdown',        		access: ['permitAll']],
	[pattern: '/assets/**',       		access: ['permitAll']],
	[pattern: '/**/js/**',        		access: ['permitAll']],
	[pattern: '/**/css/**',       		access: ['permitAll']],
	[pattern: '/**/images/**',    		access: ['permitAll']],
	[pattern: '/**/favicon.ico',  		access: ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]
