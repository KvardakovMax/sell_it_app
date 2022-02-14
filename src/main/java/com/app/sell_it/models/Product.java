package com.app.sell_it.models;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Product {
    private Long ID;
    private String title;
    private String description;
    private int price;
    private String city;
    private String author;
}
