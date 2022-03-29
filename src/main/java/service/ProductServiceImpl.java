package service;

import model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService{
   private static Map<Integer, Product> products;

   static {
       products = new HashMap<>();
       products.put(1,new Product(1,"Chao da hoa cuong",500,10,true));
       products.put(2,new Product(2,"Noi da hoa cuong",450,12,true));
       products.put(3,new Product(3,"Dao sieu sac",200,20,true));
       products.put(4,new Product(4,"Thot go nghien",300,11,false));
       products.put(5,new Product(5,"Bep hong ngoai",800,5,true));
   }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getProductId(),product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id,product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public Product findByName(String name) {
      return  products.get(getIndexByName(name));
    }
    public int getIndexByName(String name){
       int index = -1;
        for (int i = 0; i < products.size(); i++) {
            if (products.get(i).getProductName().equals(name)){
                index = i;
                return index;
            }
        } return index;
    }
    
}
