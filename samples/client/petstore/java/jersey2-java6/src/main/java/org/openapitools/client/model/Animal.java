/*
 * OpenAPI Petstore
 * This spec is mainly for testing Petstore server and contains fake endpoints, models. Please do not use this for any other purpose. Special characters: \" \\
 *
 * The version of the OpenAPI document: 1.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package org.openapitools.client.model;

import org.apache.commons.lang3.ObjectUtils;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonSubTypes;
import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.annotation.JsonValue;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.client.model.BigCat;
import org.openapitools.client.model.Cat;
import org.openapitools.client.model.Dog;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

/**
 * Animal
 */
@JsonPropertyOrder({
  Animal.JSON_PROPERTY_CLASS_NAME,
  Animal.JSON_PROPERTY_COLOR
})

@JsonTypeInfo(use = JsonTypeInfo.Id.NAME, include = JsonTypeInfo.As.EXISTING_PROPERTY, property = "className", visible = true)
@JsonSubTypes({
  @JsonSubTypes.Type(value = BigCat.class, name = "BigCat"),
  @JsonSubTypes.Type(value = Cat.class, name = "Cat"),
  @JsonSubTypes.Type(value = Dog.class, name = "Dog"),
})

public class Animal {
  public static final String JSON_PROPERTY_CLASS_NAME = "className";
  protected String className;

  public static final String JSON_PROPERTY_COLOR = "color";
  private String color = "red";


  public Animal className(String className) {
    
    this.className = className;
    return this;
  }

   /**
   * Get className
   * @return className
  **/
  @ApiModelProperty(required = true, value = "")
  @JsonProperty(JSON_PROPERTY_CLASS_NAME)
  @JsonInclude(value = JsonInclude.Include.ALWAYS)

  public String getClassName() {
    return className;
  }


  public void setClassName(String className) {
    this.className = className;
  }


  public Animal color(String color) {
    
    this.color = color;
    return this;
  }

   /**
   * Get color
   * @return color
  **/
  @javax.annotation.Nullable
  @ApiModelProperty(value = "")
  @JsonProperty(JSON_PROPERTY_COLOR)
  @JsonInclude(value = JsonInclude.Include.USE_DEFAULTS)

  public String getColor() {
    return color;
  }


  public void setColor(String color) {
    this.color = color;
  }


  @Override
  public boolean equals(java.lang.Object o) {
  if (this == o) {
    return true;
  }
  if (o == null || getClass() != o.getClass()) {
    return false;
  }
    Animal animal = (Animal) o;
    return ObjectUtils.equals(this.className, animal.className) &&
    ObjectUtils.equals(this.color, animal.color);
  }

  @Override
  public int hashCode() {
    return ObjectUtils.hashCodeMulti(className, color);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class Animal {\n");
    sb.append("    className: ").append(toIndentedString(className)).append("\n");
    sb.append("    color: ").append(toIndentedString(color)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

