package student.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**For below issue (1):
 * =>Cross-Origin Request Blocked: The Same Origin Policy disallows reading the remote resource at http://localhost:8888/api/student. (Reason: CORS header ‘Access-Control-Allow-Origin’ missing).
 */
@Configuration
//@Order(2)
public class CrossOriginHttpRequest extends WebMvcConfigurerAdapter{
	@Override
	public void addCorsMappings(CorsRegistry registry) {
		registry.addMapping("/**");
	}
}

@Configuration
//@Order(3)
class PreflightRequest extends WebSecurityConfigurerAdapter{
	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers(HttpMethod.OPTIONS, "/**");
	}
}
/**
 * If not specify the order, It'll cause the following error..!
 * Caused by: java.lang.IllegalStateException: @Order on WebSecurityConfigurers must be unique. Order of 100 was already used on student.configuration.PreflightRequest$$EnhancerBySpringCGLIB$$4f98e9b6@47c40b56, so it cannot be used on student.configuration.WebSecurityConfiguration$$EnhancerBySpringCGLIB$$4c2daddc@4b039c6d too.
 */