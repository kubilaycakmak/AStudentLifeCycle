package com.coderstyle.CoderStyleWebService.Controller;

import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.coderstyle.CoderStyleWebService.Hibernate.Utility.HibernateQueries;
import com.coderstyle.CoderStyleWebService.Hibernate.Entity.*;

import java.net.URISyntaxException;
import java.util.List;
/**
 * Root resource (exposed at "myresource" path)
 */
@Path("myresource")
public class MyResource {

    /**
     * Method handling HTTP GET requests. The returned object will be sent
     * to the client as "text/plain" media type.
     *
     * @return String that will be returned as a text/plain response.
     */
    @GET
    @Produces(MediaType.APPLICATION_XML)
    public List<User> getIt() {
        HibernateQueries hb = new HibernateQueries();
        return hb.allUsers();
    }
    
    @POST
    @Consumes(MediaType.APPLICATION_XML)
    @Produces(MediaType.APPLICATION_XML)
    @Path("login")
    public User getUser(User user) throws URISyntaxException{
    	HibernateQueries hb = new HibernateQueries();
    	return hb.login(user);
    }
    
}
