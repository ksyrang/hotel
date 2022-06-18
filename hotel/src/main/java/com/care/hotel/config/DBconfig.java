package com.care.hotel.config;

import java.io.IOException;

import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Configuration
@MapperScan(basePackages = {
		"com.care.hotel.login.DAO", 
		"com.care.hotel.member.DAO", 
		"com.care.hotel.payment.DAO",
		"com.care.hotel.Reservation.DAO",
		"com.care.hotel.resourceDAO",
		"com.care.hotel.Reservation.DAO",
		"com.care.hotel.resourceDAO",
		"com.care.hotel.statistics.DAO"
		}
)

public class DBconfig {
	@Bean//컨테이너 등록
	public HikariDataSource dSource() {
		HikariConfig hikariConfig = new HikariConfig();
		hikariConfig.setDriverClassName("oracle.jdbc.OracleDriver");
		hikariConfig.setJdbcUrl("jdbc:oracle:thin:@localhost:1521:xe");
//		hikariConfig.setJdbcUrl("jdbc:oracle:thin:@hoteldbcloud_high?TNS_ADMIN=/wallet/**/Wallet_hoteldbcloud");		
		hikariConfig.setUsername("hotel");
		hikariConfig.setPassword("hotel1");
//		hikariConfig.setUsername("admin");
//		hikariConfig.setPassword("Rlawlstn!210");
		HikariDataSource dataSource = new HikariDataSource(hikariConfig);
		
		return  dataSource;
	}//히카리 풀 설정 완료
	
	@Bean
	public SqlSessionFactoryBean sqlSessionFactory() throws IOException {
		SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
		sqlSessionFactory.setDataSource(dSource());
		PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
		sqlSessionFactory.setMapperLocations(resolver.getResources("/mappers/**/*Mapper.xml"));
		
		return sqlSessionFactory;
	}//SqlSession set end, 히카리와 마이바티스 연결을 위한 bean 등록
	

}
