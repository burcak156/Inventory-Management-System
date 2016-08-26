package com.sprhib.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "CUSTOMER")
public class Customer {

   @Id
   @GeneratedValue(strategy=GenerationType.IDENTITY)
   @Column(name = "CUSTOMER_ID", nullable = false)
   private int customerId;
   
   @Column(name = "TITLE", nullable = false, length = 10)
   private String title;
   
   @Column(name = "NAME", nullable = false, length = 20)
   private String name;
   
   @OneToOne(mappedBy="customer", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
   private CustomerDetail customerDetail;

   public Customer() {
   }

   public Customer(String title, String name) {
       this.title = title;
       this.name = name;
   }

   public int getCustomerId() {
       return customerId;
   }

   public void setCustomerId(int customerId) {
       this.customerId = customerId;
   }

   public String getTitle() {
       return title;
   }

   public void setTitle(String title) {
       this.title = title;
   }
   
   public String getName() {
       return name;
   }

   public void setName(String name) {
       this.name = name;
   }

   public CustomerDetail getCustomerDetail() {
       return customerDetail;
   }

   public void setCustomerDetail(CustomerDetail customerDetail) {
       this.customerDetail = customerDetail;
   }

}