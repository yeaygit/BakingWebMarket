package dto;

import java.io.Serializable;

public class Product implements Serializable{
	
	private static final long serialVersionUID=-42700572038677000L;
	
	//���� ����
	private String id;//��ǰ���̵�
	private String name;//��ǰ �̸�
	private Integer price;//��ǰ����
	private String des;//��ǰ����
	private String manu;//������
	private String cate;//�з�
	private long stock;//��� ��
	private String condition;//�Ż�ǰ, �߰�ǰ, ���ǰ
	
	
	//������
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
