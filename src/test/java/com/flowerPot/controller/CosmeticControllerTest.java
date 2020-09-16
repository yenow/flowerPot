package com.flowerPot.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.RequestBuilder;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultHandlers;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.slf4j.Slf4j;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/test-context.xml","file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
@Slf4j
public class CosmeticControllerTest {

	@Autowired
	private WebApplicationContext ctx;

	private MockMvc mockMvc;

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test
	public void cosmetic_register_ok() throws Exception  {
		RequestBuilder builder = MockMvcRequestBuilders.post("/cosmetic/cosmetic_register_ok").contentType(MediaType.APPLICATION_FORM_URLENCODED).param("brand", "brand").param("skinType", "skinType").param("price","1000")
				.param("type", "type").param("title", "title").param("capacity", "1000").param("period", "1000").param("nation", "nation").param("useMethod", "useMethod");
		
		/*.contentType(MediaType.APPLICATION_FORM_URLENCODED).param("brand", "brand").param("skinType", "skinType").param("price", "price").param("type", "type")
				.param("title", "title").param("capacity", "capacity").param("period", "period").param("nation", "nation").param("useMethod", "useMethod");*/
		mockMvc.perform(builder).andExpect(MockMvcResultMatchers.status().isOk()).andDo(MockMvcResultHandlers .print());
		
		
	}
}
