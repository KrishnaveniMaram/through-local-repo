package com.customerapp.model.persistance;

import java.util.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.metamodel.source.annotations.entity.EmbeddableClass;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerDaoImpl implements CustomerDao {
	@Autowired
	private SessionFactory factory;

	private Session getSession() {
		return factory.getCurrentSession();
	}
	
	public List<Customer> getAllCustomers() {
		return getSession().createQuery("from Customer").list();

	}

	
	public Customer getCustomerById(int customerId) {
		return (Customer) getSession().get(Customer.class, customerId);
		
	}


	public Customer addCustomer(Customer customer) {
		getSession().save(customer);
		return customer;
	}


	public Customer updateCustomer(Customer customer) {
		getSession().update(customer);
		return customer;
	}


	public Customer removeCustomer(int customerId) {
		Customer customerToBeDeleted = getCustomerById(customerId);
		getSession().delete(customerToBeDeleted);
		return customerToBeDeleted;
	}

}