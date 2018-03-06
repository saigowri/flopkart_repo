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

import com.iiitb.ooadvoid.pojo.FlopkartUser;
import com.iiitb.ooadvoid.dao.FlopkartUserDAO;

@Path("/users")
public class FlopkartUserServices 
{

	@GET
	@Produces("application/json")
	public List<FlopkartUser> getFlopkart_Users()
	{
		FlopkartUserDAO dao = new FlopkartUserDAO();
		List<FlopkartUser> users = dao.getFlopkartUsers();
		return users;
	}

	
	@POST
	@Path("/email")
	@Consumes("application/json")
	@Produces("application/json")
	public FlopkartUser getFlopkart_UserbyEmail(FlopkartUser user)
	{
		FlopkartUserDAO dao = new FlopkartUserDAO();
		FlopkartUser user_details = dao.getFlopkartUserByEmail(user);
		if(user_details==null)
			return null;
		if(!(user.encodePassword(user.getPassword()).equals(user_details.getPassword())))
			return user;
		else
			return user_details;
	}	
	
	@POST
	@Path("/emailSeller")
	@Consumes("application/json")
	@Produces("application/json")
	public Response getFlopkartSeller_UserbyEmail(FlopkartUser user)
	{
		FlopkartUserDAO dao = new FlopkartUserDAO();
		FlopkartUser user_details = dao.getFlopkartSellerByEmail(user);
		if(user_details==null)
			return null;
		if(!(user.encodePassword(user.getPassword()).equals(user_details.getPassword())) || !(user_details.getUserType().equals("seller")))
			return Response.status(Response.Status.BAD_REQUEST).build();
		else
			return Response.ok(user, "application/json").build();
	}
	
/*	@POST
	@Path("/guest")
	@Consumes("application/json")
	@Produces("application/json")
	public FlopkartUser getFlopkart_UserGuest()
	{
		FlopkartUserDAO dao = new FlopkartUserDAO();
		FlopkartUser user_details = dao.getFlopkart_UserGuest();
		return user_details;
	}*/
	
	@POST
	@Path("/phone")
	@Consumes("application/json")
	@Produces("application/json")
	public FlopkartUser getFlopkart_UserbyPhone(FlopkartUser user)
	{
		FlopkartUserDAO dao = new FlopkartUserDAO();
		FlopkartUser user_details = dao.getFlopkartUserByPhone(user);
		if(user_details==null)
			return null;
		if(!(user.encodePassword(user.getPassword()).equals(user_details.getPassword())))
			return user;
		else
			return user_details;
	}
	
	
	@POST
	@Path("/create")
	@Consumes("application/json")
	public Response addFlopkartUser(FlopkartUser user)
	{
			user.setFirstName(user.getFirstName());
			user.setLastName(user.getLastName());
			user.setUserType(user.getUserType());
			user.setEmail(user.getEmail());
			user.setPhone(user.getPhone());
			user.setPic_URL(user.getPic_URL());
			user.setPassword(user.getPassword());
		
		FlopkartUserDAO dao = new FlopkartUserDAO();
		dao.addFlopkartUser(user);

		return Response.ok().build();
	}

	@POST
	@Path("/createCustomer")
	@Consumes("application/json")
	public FlopkartUser addflopkartUser(FlopkartUser user)
	{
			user.setFirstName(user.getFirstName());
			user.setLastName(user.getLastName());
			user.setUserType("customer");
			user.setEmail(user.getEmail());
			user.setPhone(user.getPhone());
			user.setPic_URL(null);
			user.setPassword(user.getPassword());
		
		FlopkartUser user_details = null;
		
		FlopkartUserDAO dao = new FlopkartUserDAO();
		user_details  = dao.addFlopkartUser(user);
		return user_details;
	}
	@PUT
	@Path("/update/{id}")
	@Consumes("application/json")
	public Response updateFlopkart_User(@PathParam("id") int id, FlopkartUser user)
	{
		FlopkartUserDAO dao = new FlopkartUserDAO();
		int count = dao.updateFlopkart_User(id, user);
		if (count == 0)
		{
			return Response.status(Response.Status.BAD_REQUEST).build();
		}
		return Response.ok().build();
	}

	@DELETE
	@Path("/delete/{id}")
	@Consumes("application/json")
	public Response deleteFlopkart_User(@PathParam("id") int id)
	{
		FlopkartUserDAO dao = new FlopkartUserDAO();
		int count = dao.deleteFlopkartUser(id);
		if (count == 0)
		{
			return Response.status(Response.Status.BAD_REQUEST).build();
		}
		return Response.ok().build();
	}
}
