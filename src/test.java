import com.bean.Users;
import com.dao.UsersDao;

public class test {
    public static void main(String[] args) {
        UsersDao usersDao=new UsersDao();
        Users users=new Users();
        users.setAccount("10010");
        users.setPwd("123456");
        users.setPhone("17673945145");
        users.setUname("夏鹏");
        users.setUid("430523200012080916");
        usersDao.verifyUser(users);
    }
}
