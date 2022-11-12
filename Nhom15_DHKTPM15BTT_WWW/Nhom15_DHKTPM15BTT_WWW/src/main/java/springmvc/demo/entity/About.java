package springmvc.demo.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class About implements Serializable {
	@Id
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@Column(name = "about_id", columnDefinition = "uniqueidentifier")
	private String aboutId;
	@Column(columnDefinition = "nvarchar(500)")
	private String title;
	@Column(columnDefinition = "nvarchar(500)")
	private String description;
	@Column(columnDefinition = "nvarchar(500)")
	private String img;
	@Column(columnDefinition = "nvarchar(500)")
	private String contact;
	public String getAboutId() {
		return aboutId;
	}
	public void setAboutId(String aboutId) {
		this.aboutId = aboutId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public About(String aboutId, String title, String description, String img, String contact) {
		super();
		this.aboutId = aboutId;
		this.title = title;
		this.description = description;
		this.img = img;
		this.contact = contact;
	}
	public About(String aboutId) {
		super();
		this.aboutId = aboutId;
	}
	public About() {
		super();
	}
	@Override
	public String toString() {
		return "About [aboutId=" + aboutId + ", title=" + title + ", description=" + description + ", img=" + img
				+ ", contact=" + contact + "]";
	}
	
	
}
