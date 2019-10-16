package com.customerapp.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.customerapp.model.persistance.Customer;
import com.customerapp.model.persistance.CustomerDao;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao dao;

	
	public List<Customer> getAllCustomers() {
		return dao.getAllCustomers();
	}


	public Customer getCustomerById(int customerId) {
		Customer customer = dao.getCustomerById(customerId);
		if (customer == null)
			throw new CustomerNotFoundException("customer with id:" + customerId
					+ " is not found");
		return customer;
	}

	public Customer addCustomer(Customer customer) {
		return dao.addCustomer(customer);
	}
	


	public Customer updateCustomer(Customer customer) {
		return dao.updateCustomer(customer);
	}



	public Customer removeCustomer(int customerId) {
		return dao.removeCustomer(customerId);
	}

	
}
