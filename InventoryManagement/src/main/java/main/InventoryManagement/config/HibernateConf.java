package main.InventoryManagement.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.persistence.EntityManagerFactory;

@Configuration
@EnableTransactionManagement
public class HibernateConf {

    private EntityManagerFactory entityManagerFactory = null;

    @Autowired
    public HibernateConf(EntityManagerFactory entityManagerFactory) {
        this.entityManagerFactory = entityManagerFactory;
    }

    @Bean
    public HibernateTemplate hibernateTemplate() {
        return new HibernateTemplate(entityManagerFactory.unwrap(org.hibernate.SessionFactory.class));
    }

    @Bean
    public PlatformTransactionManager transactionManager() {
        HibernateTransactionManager transactionManager = new HibernateTransactionManager();
        transactionManager.setSessionFactory(entityManagerFactory.unwrap(org.hibernate.SessionFactory.class));
        return transactionManager;
    }

    // Other configuration beans and methods...
}
