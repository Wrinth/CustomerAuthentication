package com.customer.authentication.cas.domain;

import java.io.Serializable;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * Created by John on 2023-09-08
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Book implements Serializable {

    private static final long serialVersionUID = 2L;

    @ApiModelProperty(name = "id", required = true, value = "123456", notes = "Book ID")
    private Long id;

    @ApiModelProperty(name = "title", required = true, value = "Introdustion to Java 8", notes = "Title")
    private String title;

    @ApiModelProperty(name = "isbn", required = true, value = "15645716387", notes = "ISBN")
    private String isbn;
}
