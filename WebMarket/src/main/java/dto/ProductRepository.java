package dto;

import java.util.ArrayList;

public class ProductRepository {

	private ArrayList<Product> list=new ArrayList<>();
	//�űԻ�ǰ������ �����ϱ�
	private static ProductRepository instance=new ProductRepository();
	
	public ProductRepository() {
		//����ǰ - ���� 1
		Product butter1= new Product("b001","��Ŀ ���� ����",5000);
		butter1.setDes("��Ŀ���ʹ� �������� �ִ� ����� ȸ���� ���׶��� ����ǰ �귣��� ������������ ��� ���� ��Ŀ���ʹ� ��ũ�� �Է��� 100%�Դϴ�."
				+ "�������� û������ ���忡�� ����Ͽ� �����Ӱ� Ǯ�� ������ �ڶ� �ҵ��� ������ ����ߴٰ� �ϰ�, ǳ�̰� ������, �ұ��� ���� ���� �������ͷ� �پ��� �丮�� �����Ӱ� Ȱ���غ�����!");
		butter1.setFilename("butter01.png");
		butter1.setCate("����ǰ");
		butter1.setManu("�������� , FONTERRA LIMITED");
		butter1.setStock(99);
		butter1.setCondition("�Ż�ǰ");
		butter1.setExpDate("2021 09 21");
		
		//���� - �ڷº�
		Product flour1=new Product("f001","�鼳 �ڷº�",1200);
		flour1.setCate("����");
		flour1.setDes("�� 100%�� ���� �ٻ��ϰ� ����� �鼳 �ڷº�"
				+ "��Ű�� ����, ����������ũ, �Ŀ������ũ �� �ٻ��ϰ� �ε巯�� ������ ����µ� �˸��� �̱� 100% 1��� �а��� �Դϴ�."
				+ "1kg�� 1������ �����Ǿ� �ֽ��ϴ�.");
		flour1.setFilename("flour01.png");
		flour1.setManu("CJ �鼳");
		flour1.setStock(199);
		flour1.setCondition("�Ż�ǰ");
		flour1.setExpDate("2022 02 21");
		
		//���� - ����
		Product sugar1=new Product("s001","�������� ����(1kg)",1500);
		sugar1.setCate("����");
		sugar1.setDes("�丮, ��������, ���� �η� ���̴� �����"
				+ "���� 99.8%�̻��� ������ �鼳��");
		sugar1.setFilename("sugar01.png");
		sugar1.setManu("��������");
		sugar1.setStock(100);
		sugar1.setCondition("�Ż�ǰ");
		sugar1.setExpDate("2022 04 02");
		
		
		list.add(butter1);
		list.add(sugar1);
		list.add(flour1);
	}
	
	
	//��ǰ��� �������� �޼ҵ�
	public ArrayList<Product> getAllProducts(){
		return list;
	}
	
	//��ǰ �������� �������� �޼ҵ�
	public Product getProductById(String productid) {
		Product productbyid=null;
		
		
		for(int i=0;i<list.size();i++) {
			Product product= list.get(i);
			//��ǰ��Ͽ��� ��ǰ ���̵�� ��ġ�ϴ� ��ǰ�� �������°�
			if(product!=null&&product.getId()!=null&&product.getId().equals(productid)){
				productbyid=product;
				break;
			}
		}
		
		return productbyid;
		
	}
	
	
	
	//�űԻ�ǰ�� �����ϴ� �޼ҵ�
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public void addProduct(Product product) {
		list.add(product);
	}
}
