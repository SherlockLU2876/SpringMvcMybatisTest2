
import com.mvc.pojo.Student;
import com.mvc.service.StudentService;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {
    @Test
    public void test() {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        StudentService StudentServiceImpl = context.getBean("StudentServiceImpl", StudentService.class);
        for (Student books : StudentServiceImpl.queryAllStudent()) {
            System.out.println(books);
        }

    }
    }
