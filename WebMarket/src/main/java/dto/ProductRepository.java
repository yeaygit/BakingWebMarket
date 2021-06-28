package dto;

import java.util.ArrayList;

public class ProductRepository {

	private ArrayList<Product> list=new ArrayList<>();
	
	
	public ProductRepository() {
		//����ǰ - ���� 1
		Product butter1= new Product("b001","��Ŀ ���� ����",5000);
		butter1.setDes("��Ŀ���ʹ� �������� �ִ� ����� ȸ���� ���׶��� ����ǰ �귣��� ������������ ��� ���� ��Ŀ���ʹ� ��ũ�� �Է��� 100%�Դϴ�."
				+ "�������� û������ ���忡�� ����Ͽ� �����Ӱ� Ǯ�� ������ �ڶ� �ҵ��� ������ ����ߴٰ� �ϰ�, ǳ�̰� ������, �ұ��� ���� ���� �������ͷ� �پ��� �丮�� �����Ӱ� Ȱ���غ�����!");
		butter1.setCate("����ǰ");
		butter1.setManu("�������� , FONTERRA LIMITED");
		butter1.setStock(99);
		butter1.setCondition("�Ż�ǰ");
		
		//���� - �ڷº�
		Product flour1=new Product("f001","�鼳 �ڷº�",1200);
		flour1.setCate("����");
		flour1.setDes("�� 100%�� ���� �ٻ��ϰ� ����� �鼳 �ڷº�"
				+ "��Ű�� ����, ����������ũ, �Ŀ������ũ �� �ٻ��ϰ� �ε巯�� ������ ����µ� �˸��� �̱� 100% 1��� �а��� �Դϴ�."
				+ "1kg�� 1������ �����Ǿ� �ֽ��ϴ�.");
		flour1.setManu("CJ �鼳");
		flour1.setStock(199);
		flour1.setCondition("�Ż�ǰ");
		
		
		//���� - ����
		Product sugar1=new Product("s001","�������� ����(1kg)",1500);
		sugar1.setCate("����");
		sugar1.setDes("�丮, ��������, ���� �η� ���̴� �����"
				+ "���� 99.8%�̻��� ������ �鼳��");
		sugar1.setManu("��������");
		sugar1.setStock(100);
		sugar1.setCondition("�Ż�ǰ");
		
		
		
		list.add(butter1);
		list.add(sugar1);
		list.add(flour1);
	}
	
	
	//��ǰ��� �������� �޼ҵ�
	public ArrayList<Product> getAllProducts(){
		return list;
	}
}
