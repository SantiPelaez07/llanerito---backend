package com.llanerito.manu.api.request;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@SuperBuilder
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductRequest {
    private String urlImage;
    private String name;
    private String description;
    private String price;
    private Long idCategory;
}
