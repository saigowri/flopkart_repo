package com.iiitb.ooadvoid.client;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.client.ClientConfig;
import org.glassfish.jersey.filter.LoggingFilter;

import com.iiitb.ooadvoid.AccessProperties;
import com.iiitb.ooadvoid.pojo.FlopkartCategory;

public class FlopkartCategoryClient
{
	private String serverURL;
	private String contextPath;
	private String restPath;
	
	public FlopkartCategoryClient()
	{
		AccessProperties ap = new AccessProperties();

		serverURL = ap.getServerURL();
		contextPath = ap.getContextPath();
		restPath = ap.getRestPath();
		
		addSubCategory();
	}
	
	public void addSubCategory()
	{
		ClientConfig clientConfig = new ClientConfig().register(LoggingFilter.class);
		WebTarget webTarget = ClientBuilder.newClient(clientConfig)
				.target(serverURL+contextPath+restPath).path("categories/create");

		FlopkartCategory cat = new FlopkartCategory();
		cat.setId(1);
		cat.setCategoryName("Children toys");

		Invocation.Builder invocationBuilder = webTarget.request(MediaType.APPLICATION_JSON);
		Response response = invocationBuilder.post(Entity.entity(cat, MediaType.APPLICATION_JSON));

		System.out.println(response.getStatus());
		System.out.println(response.readEntity(String.class));
	}

	public void listCategories()
	{
		Client client = ClientBuilder.newClient( new ClientConfig().register( LoggingFilter.class ) );
		WebTarget webTarget = client.target("http://localhost:8080/flopkartPrototype/webapi").path("categories");
		 
		Invocation.Builder invocationBuilder =  webTarget.request(MediaType.APPLICATION_JSON);
		Response response = invocationBuilder.get();
		 
		     
		System.out.println(response.getStatus());
	}
	
}