package com.customer.authentication.cas.domain;

import java.io.Serializable;
import java.util.Set;

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
public class Author implements Serializable {

    private static final long serialVersionUID = 3L;

    @ApiModelProperty(name = "id", required = true, value = "123456", notes = "Author ID")
    private Long id;

    @ApiModelProperty(name = "firstName", required = true, value = "Introdustion to Java 8", notes = "Title")
    private String firstName;

    @ApiModelProperty(name = "lastName", required = true, value = "Introdustion to Java 8", notes = "Title")
    private String lastName;

    @ApiModelProperty(name = "title", required = true, value = "Introdustion to Java 8", notes = "Title")
    private Set<Book> books;
}
