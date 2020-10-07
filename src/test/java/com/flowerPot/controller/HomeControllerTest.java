package com.flowerPot.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;


import com.google.gson.Gson;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;

@RunWith(SpringJUnit4ClassRunner.class)
//Test for Controller
@WebAppConfiguration
@ContextConfiguration({ "file:src/main/webapp/WEB-INF/spring/test-context.xml",
"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml","file:src/main/webapp/WEB-INF/spring/security-context.xml" })
@Slf4j
public class HomeControllerTest {

  @Setter(onMethod_ = { @Autowired })
  private WebApplicationContext ctx;

  private MockMvc mockMvc;

  @Before
  public void setup() {
    this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
  }

  @Test
  public void testConvert() throws Exception {
	  System.out.println(mockMvc.perform(MockMvcRequestBuilders.get("/")).andReturn().getModelAndView().getModelMap());
	  
  }
  
  @Test
  public void testConvert2() throws Exception {
	  System.out.println(mockMvc.perform(MockMvcRequestBuilders.post("/kakaoPay2").param("cno", "1").param("cno", "1").param("cno", "1")).andReturn().getModelAndView().getModelMap());
	  
  }

}


