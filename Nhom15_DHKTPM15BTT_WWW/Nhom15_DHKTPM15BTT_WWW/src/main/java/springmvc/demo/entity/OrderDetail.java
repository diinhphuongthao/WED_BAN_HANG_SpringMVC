package springmvc.demo.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@IdClass(OrderDetailPK.class)
@Table(name = "Order_Detail")
public class OrderDetail implements Serializable{

	@Id
	@ManyToOne
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@JoinColumn(name = "order_id", columnDefinition = "uniqueidentifier")
	private Order orderId;
	
	@Id
	@ManyToOne
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@GeneratedValue(generator = "generator")
	@JoinColumn(name = "product_id", columnDefinition = "uniqueidentifier")
	private Product productId;
	
	private int amount;
	@Column(name = "amount_ship")
	private int amountShip;
	@Column(name = "created_at")
	@DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
	private Date createdAt;
	@Column(name = "update_at")
	@DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
	private Date updateAt;
	private float discount;
	private double price;
	public Order getOrderId() {
		return orderId;
	}
	public void setOrderId(Order orderId) {
		this.orderId = orderId;
	}
	public Product getProductId() {
		return productId;
	}
	public void setProductId(Product productId) {
		this.productId = productId;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getAmountShip() {
		return amountShip;
	}
	public void setAmountShip(int amountShip) {
		this.amountShip = amountShip;
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
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public OrderDetail(Order orderId, Product productId, int amount, int amountShip, Date createdAt, Date updateAt,
			float discount, double price) {
		super();
		this.orderId = orderId;
		this.productId = productId;
		this.amount = amount;
		this.amountShip = amountShip;
		this.createdAt = createdAt;
		this.updateAt = updateAt;
		this.discount = discount;
		this.price = price;
	}
	public OrderDetail() {
		super();
	}
	@Override
	public String toString() {
		return "OrderDetail [orderId=" + orderId + ", productId=" + productId + ", amount=" + amount + ", amountShip="
				+ amountShip + ", createdAt=" + createdAt + ", updateAt=" + updateAt + ", discount=" + discount
				+ ", price=" + price + "]";
	}
	
	
}
