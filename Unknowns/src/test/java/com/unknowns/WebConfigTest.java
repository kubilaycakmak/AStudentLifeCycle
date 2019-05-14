package com.unknowns;

import com.unknowns.controller.MyController;
import org.junit.Test;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;

public class WebConfigTest {
    @Test
    public void testIndexController() throws Exception {

        MyController myController = new MyController();

        InternalResourceViewResolver resolver = new InternalResourceViewResolver();
        resolver.setPrefix("/WEB-INF/views/");
        resolver.setSuffix(".jsp");

        MockMvc mockMvc = standaloneSetup(myController).setViewResolvers(resolver).build();

        mockMvc.perform(get("/index")).andExpect(view().name("index"));
    }
}