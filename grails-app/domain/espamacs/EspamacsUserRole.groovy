package espamacs

import grails.gorm.DetachedCriteria
import groovy.transform.ToString

import org.apache.commons.lang.builder.HashCodeBuilder

@ToString(cache=true, includeNames=true, includePackage=false)
class EspamacsUserRole implements Serializable {

	private static final long serialVersionUID = 1

	EspamacsUser espamacsUser
	Role role

	EspamacsUserRole(EspamacsUser u, Role r) {
		espamacsUser = u
		role = r
	}

	@Override
	boolean equals(other) {
		if (!(other instanceof EspamacsUserRole)) {
			return false
		}

		other.espamacsUser?.id == espamacsUser?.id && other.role?.id == role?.id
	}

	@Override
	int hashCode() {
		def builder = new HashCodeBuilder()
		if (espamacsUser) builder.append(espamacsUser.id)
		if (role) builder.append(role.id)
		builder.toHashCode()
	}

	static EspamacsUserRole get(long espamacsUserId, long roleId) {
		criteriaFor(espamacsUserId, roleId).get()
	}

	static boolean exists(long espamacsUserId, long roleId) {
		criteriaFor(espamacsUserId, roleId).count()
	}

	private static DetachedCriteria criteriaFor(long espamacsUserId, long roleId) {
		EspamacsUserRole.where {
			espamacsUser == EspamacsUser.load(espamacsUserId) &&
			role == Role.load(roleId)
		}
	}

	static EspamacsUserRole create(EspamacsUser espamacsUser, Role role, boolean flush = false) {
		def instance = new EspamacsUserRole(espamacsUser, role)
		instance.save(flush: flush, insert: true)
		instance
	}

	static boolean remove(EspamacsUser u, Role r, boolean flush = false) {
		if (u == null || r == null) return false

		int rowCount = EspamacsUserRole.where { espamacsUser == u && role == r }.deleteAll()

		if (flush) { EspamacsUserRole.withSession { it.flush() } }

		rowCount
	}

	static void removeAll(EspamacsUser u, boolean flush = false) {
		if (u == null) return

		EspamacsUserRole.where { espamacsUser == u }.deleteAll()

		if (flush) { EspamacsUserRole.withSession { it.flush() } }
	}

	static void removeAll(Role r, boolean flush = false) {
		if (r == null) return

		EspamacsUserRole.where { role == r }.deleteAll()

		if (flush) { EspamacsUserRole.withSession { it.flush() } }
	}

	static constraints = {
		role validator: { Role r, EspamacsUserRole ur ->
			if (ur.espamacsUser == null || ur.espamacsUser.id == null) return
			boolean existing = false
			EspamacsUserRole.withNewSession {
				existing = EspamacsUserRole.exists(ur.espamacsUser.id, r.id)
			}
			if (existing) {
				return 'userRole.exists'
			}
		}
	}

	static mapping = {
		id composite: ['espamacsUser', 'role']
		version false
	}
}
