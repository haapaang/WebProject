import com.bean.Users;
import com.dao.UsersDao;

public class test {
    public static void main(String[] args) {
        UsersDao usersDao=new UsersDao();
        Users users=new Users();
        users.setUid("10010");
        users.setPwd("123456");
//        users.setPhone("17673945145");
//        users.setEmail("xp1208@qq.com");
        usersDao.login(users);
    }
}
