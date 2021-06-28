package dto;

import java.io.Serializable;

public class Product implements Serializable{
	
	private static final long serialVersionUID=-42700572038677000L;
	
	//변수 선언
	private String id;//상품아이디
	private String name;//상품 이름
	private Integer price;//상품가격
	private String des;//상품설명
	private String manu;//제조사
	private String cate;//분류
	private long stock;//재고 수
	private String condition;//신상품, 중고품, 재생품
	
	
	//생성자
	public Product(){
		super();
	}
	
	public Product(String pid,String pname, Integer pprice) {
		this.id=pid;
		this.name=pname;
		this.price=pprice;
	}
	
	
	//getter
	public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public Integer getPrice() {
		return price;
	}
	public String getDes() {
		return des;
	}
	public String getManu() {
		return manu;
	}
	public String getCate() {
		return cate;
	}
	public Long getStock() {
		return stock;
	}
	public String getCondition() {
		return condition;
	}
	
	//setter
	public void setId(String pid) {
		this.id=pid;
	}
	public void setName(String pname) {
		this.name=pname;
	}
	public void setPrice(int pprice) {
		this.price=pprice;
	}
	public void setDes(String pdes) {
		this.des=pdes;
	}
	public void setManu(String pmanu) {
		this.manu=pmanu;
	}
	public void setCate(String pcate) {
		this.cate=pcate;
	}
	public void setStock(long pstock) {
		this.stock=pstock;
	}
	public void setCondition(String pcondition) {
		this.condition=pcondition;
	}

}
