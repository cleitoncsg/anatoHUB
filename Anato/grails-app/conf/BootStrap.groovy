import anato.*

class BootStrap {

    def init = {
    	if(!User.count()){
	    	def roleAdmin = new Role(authority: "ROLE_ADMIN")
	    	roleAdmin.save()

	    	def adminUser = new User(username: "admin", password: "admin", enable:true, accountExpired: false, accountLocked: false, passwordExpired: false)
	    	adminUser.save()

	    	UserRole.create(adminUser, roleAdmin,true)
    	}
    }
    def destroy = {
    }
}
