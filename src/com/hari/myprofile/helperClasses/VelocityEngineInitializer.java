package com.hari.myprofile.helperClasses;

import java.util.Properties;

import org.apache.velocity.app.VelocityEngine;

public class VelocityEngineInitializer {
	private static VelocityEngine velocityEngine;
	 
	  public static VelocityEngine getVelocityEngine() {
	    if (velocityEngine == null)
	      init();
	    return velocityEngine;
	  }
	 
	  private static void init() {
	    velocityEngine = new VelocityEngine();
	    Properties velocityProperties = new Properties();
	    velocityProperties.put("resource.loader", "class");
	    velocityProperties.put("class.resource.loader.description", "Velocity Classpath Resource Loader");
	    velocityProperties.put("class.resource.loader.class",
	        "org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
	    velocityEngine.init(velocityProperties);
	  }
}
