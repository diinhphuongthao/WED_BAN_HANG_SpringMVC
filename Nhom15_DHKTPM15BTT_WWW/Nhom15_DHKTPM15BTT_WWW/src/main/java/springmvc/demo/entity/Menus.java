package springmvc.demo.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Menus implements Serializable{
	@Id
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@Column(name = "menus_id", columnDefinition = "uniqueidentifier")
	private String menusId;
	@Column(columnDefinition = "nvarchar(500)")
	private String name;
	@Column(columnDefinition = "nvarchar(1000)")
	private String url;
	public String getMenusId() {
		return menusId;
	}
	public void setMenusId(String menusId) {
		this.menusId = menusId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Menus(String menusId, String name, String url) {
		super();
		this.menusId = menusId;
		this.name = name;
		this.url = url;
	}
	public Menus(String menusId) {
		super();
		this.menusId = menusId;
	}
	public Menus() {
		super();
	}
	@Override
	public String toString() {
		return "Menus [menusId=" + menusId + ", name=" + name + ", url=" + url + "]";
	}
	
}
