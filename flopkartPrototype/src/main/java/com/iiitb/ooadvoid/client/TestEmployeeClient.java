package com.iiitb.ooadvoid.client;
 

import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.client.ClientConfig;
import org.glassfish.jersey.filter.LoggingFilter;
import com.iiitb.ooadvoid.pojo.FlopkartCategory;
 
public class TestEmployeeClient {
 
    public static void main(String[] args) {
 
       //addEmployee();
//       getEmployee();
    	addSubCategory();
       //deleteEmployee();
    }
//    
//    private static void getEmployee(){
//    	Client client = ClientBuilder.newClient();
//        WebResource resource = c.resource("http://localhost:8080/jersey-webapp/webapi/employees");
//        
//        String response = resource.get(String.class);
//        System.out.println(response);
//    }
// 
//    private static void addEmployee(){
//    
//        String input = "{\"age\":28,\"name\":\"Percy Jackson\"}";
//        Client c  = Client.create();
//        
//        WebResource resource = c.resource("http://localhost:8080/jersey-webapp/webapi/employees/create");
//        
//        
//        ClientResponse response = resource
//                .type("application/json").post(ClientResponse.class, input);
// 
//        // check response status code
//        if (response.getStatus() != 200) {
//            throw new RuntimeException("Failed : HTTP error code : "
//                    + response.getStatus());
//        }
//        
//        System.out.println(response);
//    }
//    
//    public static void deleteEmployee(){
//        Client c  = Client.create();
//        WebResource resource = c.resource("http://localhost:8080/jersey-webapp/webapi/employees/delete/5");
//        ClientResponse response = resource
//                .type("application/json").delete(ClientResponse.class);
//        System.out.println(response);
//    }
    	
    public static void addSubCategory()
    {
    	ClientConfig clientConfig =  new ClientConfig().register( LoggingFilter.class ) ;
    	WebTarget webTarget = ClientBuilder.newClient(clientConfig).target("http://localhost:8080/flopkartPrototype/webapi").path("categories/create");
    	 
    	FlopkartCategory cat = new FlopkartCategory();
    	cat.setId(1);
    	cat.setCategoryName("Children toys");
    	 
    	Invocation.Builder invocationBuilder =  webTarget.request(MediaType.APPLICATION_JSON);
    	Response response = invocationBuilder.post(Entity.entity(cat, MediaType.APPLICATION_JSON));
    	 
    	System.out.println(response.getStatus());
    	System.out.println(response.readEntity(String.class));
    }

}