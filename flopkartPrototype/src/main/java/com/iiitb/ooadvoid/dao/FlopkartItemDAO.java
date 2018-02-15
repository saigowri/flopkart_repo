
package com.iiitb.ooadvoid.dao;

import java.util.List;

import com.iiitb.ooadvoid.pojo.FlopkartItem;

public class FlopkartItemDAO extends HibernateDAO<FlopkartItem>
{
	String entity_name = "FlopkartItem";
	
	public FlopkartItem addFlopkartItem(FlopkartItem item)
	{
		super.add(item);
		return item;
	}
	
	
	public List<FlopkartItem> getFlopkartItems()
	{
		return super.list(entity_name);
	}

	public FlopkartItem getFlopkartItemById(int id)
	{
		return super.find(entity_name,id);
	}

    public List<FlopkartItem> getFlopkartItemByCategoty(FlopkartItem item)
	{
		return super.findAll(entity_name,"category", item.getCategory());
	}

	public int deleteFlopkartItem(int id)
	{
		return super.remove(entity_name,id);
	}

	public int updateFlopkart_Item(int id, FlopkartItem item)
	{
		if (id <= 0)
			return 0;	
		super.update(item,id);
		return 1;
	}
}
