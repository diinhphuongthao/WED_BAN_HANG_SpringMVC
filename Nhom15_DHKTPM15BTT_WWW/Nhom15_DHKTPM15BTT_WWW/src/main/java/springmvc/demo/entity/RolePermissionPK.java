package springmvc.demo.entity;

import java.io.Serializable;
import java.util.Objects;

import javax.persistence.Embeddable;

@Embeddable
public class RolePermissionPK implements Serializable{

	private String roleId;
	private String permissionId;
	public RolePermissionPK() {
		super();
	}
	@Override
	public int hashCode() {
		return Objects.hash(permissionId, roleId);
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		RolePermissionPK other = (RolePermissionPK) obj;
		return Objects.equals(permissionId, other.permissionId) && Objects.equals(roleId, other.roleId);
	}
	
}
