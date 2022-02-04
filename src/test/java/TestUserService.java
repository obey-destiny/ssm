import com.guanshen.entity.User;
import com.guanshen.service.UserService;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestUserService {

    public static void main(String[] args) {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");

        UserService userService = (UserService) context.getBean("userService");

        userService.findAll().forEach(user -> System.out.println("user = " + user));

        User user = new User(3, "gaunshen", "6666");

        // userService.save(user);
    }
}
