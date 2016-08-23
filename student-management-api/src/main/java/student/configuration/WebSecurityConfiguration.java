package student.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;

@Configuration
@EnableWebSecurity
/**
 * Make spring security the first priority to load
 */
@Order(1) /* default @Order(100) */
public class WebSecurityConfiguration extends WebSecurityConfigurerAdapter{

	/**
	 * Configure user
	 */
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("admin").password("admin").roles("API");
	}
	
	/**
	 * Allow access
	 */
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();
		
		http.httpBasic();
		
		http.authorizeRequests()
			.antMatchers("/**")
			.hasAnyRole("API");
		
		http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
	}
}
