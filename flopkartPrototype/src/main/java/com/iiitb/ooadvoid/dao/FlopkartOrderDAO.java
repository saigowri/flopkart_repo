package com.iiitb.ooadvoid.dao;

import java.util.List;
import com.iiitb.ooadvoid.pojo.FlopkartOrder;
import com.iiitb.ooadvoid.pojo.FlopkartSubcategory;

public class FlopkartOrderDAO extends HibernateDAO<FlopkartOrder>
{
String entity_name = "FlopkartOrder";
		
	public List<FlopkartOrder> getFlopkartOrder()
	{
		return super.list(new FlopkartOrder());
	}
	public FlopkartOrder addFlopkartOrder(FlopkartOrder order)
	{
		super.add(order);
//		order = super.find(entity_name , 
//				"orderId" , String.valueOf(order.getOrderId()),
//				"userId" , String.valueOf(order.getUserId()));
		return order;
	}
	
	public List<FlopkartOrder> getFlopkartOrderByUserId(Integer UserId)
	{		
		return super.findAll(entity_name,"userid", UserId);
	}
	
	public List<FlopkartOrder> getFlopkartOrderByItemId(String itemId)
	{		
		return super.findAll(entity_name,"itemId", itemId);
	}
	
	public int deleteFlopkartOrder(int id)
	{
		return super.remove(entity_name,id);
	}

	public int updateFlopkartOrder(int id, FlopkartOrder order)
	{
		if (id <= 0)
			return 0;	
		super.update(order,id);
		return 1;
	}
}
