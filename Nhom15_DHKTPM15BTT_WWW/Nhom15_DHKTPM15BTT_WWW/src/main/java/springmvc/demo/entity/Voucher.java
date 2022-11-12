package springmvc.demo.entity;


import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Voucher implements Serializable{
	@Id
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@Column(name = "voucher_id", columnDefinition = "uniqueidentifier")
	private String voucherId;
	@Column(columnDefinition = "nvarchar(1000)")
	private String code;
	@Column(name = "created_at")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date createdAt;
	@Column(name = "update_at")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date updateAt;
	
	@OneToMany(mappedBy = "voucher", fetch = FetchType.EAGER)
	private List<Product> products;

	public String getVoucherId() {
		return voucherId;
	}

	public void setVoucherId(String voucherId) {
		this.voucherId = voucherId;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdateAt() {
		return updateAt;
	}

	public void setUpdateAt(Date updateAt) {
		this.updateAt = updateAt;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public Voucher(String voucherId, String code, Date createdAt, Date updateAt, List<Product> products) {
		super();
		this.voucherId = voucherId;
		this.code = code;
		this.createdAt = createdAt;
		this.updateAt = updateAt;
		this.products = products;
	}

	public Voucher(String voucherId) {
		super();
		this.voucherId = voucherId;
	}

	public Voucher() {
		super();
	}

	@Override
	public String toString() {
		return "Voucher [voucherId=" + voucherId + ", code=" + code + ", createdAt=" + createdAt + ", updateAt="
				+ updateAt + "]";
	}
	
	
	
	
}
