package com.app.sell_it.services;

import com.app.sell_it.models.Product;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;

    {
        products.add(new Product(++ID, "Meta quest 2", "My super vr headset", 700, "NY", "Max"));
        products.add(new Product(++ID, "Iphone 13", "New iphone 13! SALE!", 1000, "LA", "Max"));
    }

    public List<Product> listProducts() {
        return products;
    }

    public void saveProduct(Product product) {
        product.setID(++ID);
        products.add(product);
    }

    public void deleteProduct(Long id) {
        products.removeIf(product -> product.getID().equals(id));
    }

    public Product getProductById(Long id) {
        for(Product product : products) {
            if (product.getID().equals(id))
                return product;
        }
        return null;
    }
}
