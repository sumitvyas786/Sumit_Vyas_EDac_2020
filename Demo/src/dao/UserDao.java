package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class UserDao {
	private static final SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();

	public void createUser(User user) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.save(user);
		session.getTransaction().commit();
		session.close();
	}

	
	
	
	public List<User> readAll()
	{
		Session session = sessionFactory.openSession();
		
		String sql = "SELECT * FROM USER";
		
		List<User> list = session.createNativeQuery(sql, User.class).list();
		
		return list;
	}



	public boolean authenticate(User user) {
		Session session = sessionFactory.openSession();
		
		String sql = "SELECT * FROM USER WHERE username=:username AND password=:password";
		
		User user1 = session.createNativeQuery(sql, User.class)
					.setParameter("username", user.getUsername())
					.setParameter("password", user.getPassword())
					.getSingleResult();
		
		session.close();
		
		if(user1!=null)
			return true;
		else
			return false;
	}




	public void deleteUser(User user) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		
		String sql = "DELETE FROM USER WHERE id=:id";
		
		session.createNativeQuery(sql)
				.setParameter("id", user.getId())
				.executeUpdate();
		
		session.getTransaction().commit();
		session.close();
	}

}
