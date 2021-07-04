package dto;

import java.util.ArrayList;

public class ProductRepository {

	private ArrayList<Product> list=new ArrayList<>();
	//신규상품데이터 저장하기
	private static ProductRepository instance=new ProductRepository();
	
	public ProductRepository() {
		//유제품 - 버터 1
		Product butter1= new Product("b001","앵커 무염 버터",5000);
		butter1.setDes("앵커버터는 뉴질랜드 최대 낙농업 회사인 폰테라의 유제품 브랜드로 먹음직스럽게 노란 빛의 앵커버터는 유크림 함량이 100%입니다."
				+ "뉴질랜드 청정지역 목장에서 방목하여 자유롭게 풀을 뜯으며 자란 소들의 원유를 사용했다고 하고, 풍미가 좋으며, 소금이 들어가지 않은 무염버터로 다양한 요리에 자유롭게 활용해보세요!");
		butter1.setFilename("butter01.png");
		butter1.setCate("유제품");
		butter1.setManu("뉴질랜드 , FONTERRA LIMITED");
		butter1.setStock(99);
		butter1.setCondition("신상품");
		butter1.setExpDate("2021 09 21");
		
		//가루 - 박력분
		Product flour1=new Product("f001","백설 박력분",1200);
		flour1.setCate("가루");
		flour1.setDes("밀 100%로 만든 바삭하고 고소한 백설 박력분"
				+ "쿠키나 머핀, 스펀지케이크, 파운드케이크 등 바삭하고 부드러운 반죽을 만드는데 알맞은 미국 100% 1등급 밀가루 입니다."
				+ "1kg에 1봉으로 구성되어 있습니다.");
		flour1.setFilename("flour01.png");
		flour1.setManu("CJ 백설");
		flour1.setStock(199);
		flour1.setCondition("신상품");
		flour1.setExpDate("2022 02 21");
		
		//가루 - 설탕
		Product sugar1=new Product("s001","대한제당 흰설탕(1kg)",1500);
		sugar1.setCate("가루");
		sugar1.setDes("요리, 제과제빵, 음료등에 두루 쓰이는 정백당"
				+ "순도 99.8%이상의 순수한 백설탕");
		sugar1.setFilename("sugar01.png");
		sugar1.setManu("대한제당");
		sugar1.setStock(100);
		sugar1.setCondition("신상품");
		sugar1.setExpDate("2022 04 02");
		
		
		list.add(butter1);
		list.add(sugar1);
		list.add(flour1);
	}
	
	
	//상품목록 가져오는 메소드
	public ArrayList<Product> getAllProducts(){
		return list;
	}
	
	//상품 상세정보를 가져오는 메소드
	public Product getProductById(String productid) {
		Product productbyid=null;
		
		
		for(int i=0;i<list.size();i++) {
			Product product= list.get(i);
			//상품목록에서 상품 아이디와 일치하는 상품을 가져오는것
			if(product!=null&&product.getId()!=null&&product.getId().equals(productid)){
				productbyid=product;
				break;
			}
		}
		
		return productbyid;
		
	}
	
	
	
	//신규상품을 저장하는 메소드
	public static ProductRepository getInstance() {
		return instance;
	}
	
	public void addProduct(Product product) {
		list.add(product);
	}
}
