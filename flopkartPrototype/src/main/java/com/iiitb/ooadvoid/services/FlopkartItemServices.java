package com.iiitb.ooadvoid.services;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Response;

import com.iiitb.ooadvoid.pojo.FlopkartItem;
import com.iiitb.ooadvoid.dao.FlopkartItemDAO;

@Path("/items")
public class FlopkartItemServices 
{

	@GET
	@Produces("application/json")
	public List<FlopkartItem> getFlopkart_Items()
	{
		FlopkartItemDAO dao = new FlopkartItemDAO();
		List<FlopkartItem> items = dao.getFlopkartItems();
		return items;
	}

	
	@POST
	@Path("/categoty")
	@Consumes("application/json")
	@Produces("application/json")
	public FlopkartItem getFlopkartItemByCategoty(FlopkartItem item)
	{
		FlopkartItemDAO dao = new FlopkartItemDAO();
		FlopkartItem item_details = (FlopkartItem) dao.getFlopkartItemByCategoty(item);
		return item_details;
	}	
	
	@POST
	@Path("/create")
	@Consumes("application/json")
	public Response addFlopkartItem(FlopkartItem item)
	{
			item.setItemid(item.getItemid());
			item.setItemname(item.getItemname());
			item.setCategory(item.getCategory());
			item.setPrice(item.getPrice());
			item.setDiscount(item.getDiscount());
			item.setStars(item.getStars());
		
		FlopkartItemDAO dao = new FlopkartItemDAO();
		dao.addFlopkartItem(item);

		return Response.ok().build();
	}

	@PUT
	@Path("/update/{id}")
	@Consumes("application/json")
	public Response updateFlopkart_Item(@PathParam("id") int id, FlopkartItem item)
	{
		FlopkartItemDAO dao = new FlopkartItemDAO();
		int count = dao.updateFlopkart_Item(id, item);
		if (count == 0)
		{
			return Response.status(Response.Status.BAD_REQUEST).build();
		}
		return Response.ok().build();
	}

	@DELETE
	@Path("/delete/{id}")
	@Consumes("application/json")
	public Response deleteFlopkart_Item(@PathParam("id") int id)
	{
		FlopkartItemDAO dao = new FlopkartItemDAO();
		int count = dao.deleteFlopkartItem(id);
		if (count == 0)
		{
			return Response.status(Response.Status.BAD_REQUEST).build();
		}
		return Response.ok().build();
	}
}
