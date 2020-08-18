package com.museumofcandy.config;

import java.beans.PropertyVetoException;
import java.util.Properties;
import java.util.logging.Logger;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.PropertySources;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.mchange.v2.c3p0.ComboPooledDataSource;

@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages="com.museumofcandy")
//@PropertySources({ 
//	@PropertySource("classpath:persistence-mysql.properties")
//})
public class AppConfig implements WebMvcConfigurer {
	@Value( "${jdbc.driver:com.mysql.cj.jdbc.Driver}" )
	private String jdbcDriver;
	@Value( "${jdbc.url:mysql://be2f017d4df860:507f06b6@us-cdbr-east-05.cleardb.net/heroku_ed64417cc114036?reconnect=true}" )
	private String jdbcUrl;
	@Value( "${jdbc.user:be2f017d4df860}" )
	private String jdbcUser;
	@Value( "${jdbc.password:507f06b6}" )
	private String jdbcPassword;
	@Value( "${connection.pool.initialPoolSize: 5}")
	private String connectionPoolInitialPoolSize;
	@Value( "${connection.pool.minPoolSize: 5}")
	private String connectionPoolMinPoolSize;
	@Value( "${connection.pool.maxPoolSize: 20}")
	private String connectionPoolMaxPoolSize;
	@Value( "${connection.pool.maxIdleTime: 3000}")
	private String connectionPoolMaxIdleTime;
	@Value( "${hibernate.dialect: org.hibernate.dialect.MySQLDialect}")
	private String hibernateDialect;
	@Value( "${hibernate.show_sql: true}")
	private String hibernateShowSql;
	@Value( "${hibernate.packagesToScan: com.museumofcandy.entity}")
	private String hibernatePackagesToScan;
	

	
//	@Autowired
//	private Environment env;
	
	private Logger logger = Logger.getLogger(getClass().getName());

	@Bean
	public ViewResolver viewResolver() {
		
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		
		viewResolver.setPrefix("/WEB-INF/view/");
		viewResolver.setSuffix(".jsp");
		
		return viewResolver;
	}
	
	 @Override
	    public void addResourceHandlers(ResourceHandlerRegistry registry) {
	        registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");

	    }
	 
	@Bean
	public DataSource myDataSource() {
				
		// create connection pool
		ComboPooledDataSource myDataSource = new ComboPooledDataSource();
		
		// set the jdbc driver
		try {
//			myDataSource.setDriverClass(env.getProperty("jdbc.driver"));
			myDataSource.setDriverClass(this.jdbcDriver);
		} catch (PropertyVetoException exc) {
			throw new RuntimeException(exc);
		}
		
		// log the connection props
//		logger.info(">>> jdbc.url=" + env.getProperty("jdbc.url"));
//		logger.info(">>> jdbc.user=" + env.getProperty("jdbc.user"));
		logger.info(">>> jdbc.url=" + this.jdbcUrl);
		logger.info(">>> jdbc.user=" + this.jdbcUser);
		
		// set database connection props
		myDataSource.setJdbcUrl(this.jdbcUrl);
		myDataSource.setUser(this.jdbcUser);
		myDataSource.setPassword(this.jdbcPassword);
//		myDataSource.setJdbcUrl(env.getProperty("jdbc.url"));
//		myDataSource.setUser(env.getProperty("jdbc.user"));
//		myDataSource.setPassword(env.getProperty("jdbc.password"));
		
		// set connection pool props
//		myDataSource.setInitialPoolSize(getIntProperty("connection.pool.initialPoolSize"));
//		myDataSource.setMinPoolSize(getIntProperty("connection.pool.minPoolSize"));
//		myDataSource.setMaxPoolSize(getIntProperty("connection.pool.maxPoolSize"));
//		myDataSource.setMaxIdleTime(getIntProperty("connection.pool.maxIdleTime"));
//		myDataSource.setInitialPoolSize(getIntProperty(this.connectionPoolInitialPoolSize));
//		myDataSource.setMinPoolSize(getIntProperty(this.connectionPoolMinPoolSize));
//		myDataSource.setMaxPoolSize(getIntProperty(this.connectionPoolMaxPoolSize));
//		myDataSource.setMaxIdleTime(getIntProperty(this.connectionPoolMaxIdleTime));
		myDataSource.setInitialPoolSize(5);
		myDataSource.setMinPoolSize(5);
		myDataSource.setMaxPoolSize(20);
		myDataSource.setMaxIdleTime(3000);
		
		return myDataSource;
	}
	
	private Properties getHibernateProperties() {

		// set hibernate properties
		Properties props = new Properties();

//		props.setProperty("hibernate.dialect", env.getProperty("hibernate.dialect"));
//		props.setProperty("hibernate.show_sql", env.getProperty("hibernate.show_sql"));
		props.setProperty("hibernate.dialect", this.hibernateDialect);
		props.setProperty("hibernate.show_sql", this.hibernateShowSql);
		
		return props;				
	}
	
//	private int getIntProperty(String propName) {
//		
//		String propVal = env.getProperty(propName);
//		
//		// now convert to int
//		int intPropVal = Integer.parseInt(propVal);
//		
//		return intPropVal;
//	}
	
	@Bean
	public LocalSessionFactoryBean sessionFactory() {
		
		// create session factories
		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();

		// set the properties
		sessionFactory.setDataSource(myDataSource());
//		sessionFactory.setPackagesToScan(env.getProperty("hibernate.packagesToScan"));
		sessionFactory.setPackagesToScan(this.hibernatePackagesToScan);
		sessionFactory.setHibernateProperties(getHibernateProperties());
		
		return sessionFactory;
		
	}
	
	@Bean
	@Autowired
	public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {
		
		// setup transaction manager based on session factory
		HibernateTransactionManager txManager = new HibernateTransactionManager();
		txManager.setSessionFactory(sessionFactory);

		return txManager;
	}
}
