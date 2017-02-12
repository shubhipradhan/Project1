package com.akiraE.AkiraF.flow;

import org.springframework.context.annotation.Bean;
import org.springframework.webflow.config.AbstractFlowConfiguration;
import org.springframework.webflow.definition.registry.FlowDefinitionRegistry;
import org.springframework.webflow.executor.FlowExecutor;
import org.springframework.webflow.mvc.servlet.FlowHandlerAdapter;
import org.springframework.webflow.mvc.servlet.FlowHandlerMapping;

public class WebflowConfig extends AbstractFlowConfiguration {

	@Bean
	public FlowHandlerMapping getFlowHandlerMapping()
	{
		FlowHandlerMapping flowHandlerMapping=new FlowHandlerMapping();
		flowHandlerMapping.setOrder(0);
		flowHandlerMapping.setFlowRegistry(flowRegistry());
		
		return flowHandlerMapping;
	}
	
	@Bean
	public FlowHandlerAdapter getFlowHandlerAdapter()
	{
		FlowHandlerAdapter flowHandlerAdapter=new FlowHandlerAdapter();
		flowHandlerAdapter.setFlowExecutor(flowExecutor());
		
		return flowHandlerAdapter;
	}
	
	@Bean
	public FlowExecutor flowExecutor()
	{
		return getFlowExecutorBuilder(flowRegistry())
				.setMaxFlowExecutionSnapshots(0)
				.build();
	}
	
	@Bean
	public FlowDefinitionRegistry flowRegistry()
	{
		return getFlowDefinitionRegistryBuilder()
				.addFlowLocation("/WEB-INF/views/flows/checkout-flow.xml","checkout")
				.build();
	}
	
}
