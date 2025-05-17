package Utils;

import model.User;
import java.sql.*;

public class UserDAO {

    public static User checkLogin(String email, String password) {
        String sql = "SELECT * FROM Users WHERE email = ? AND password_hash = ?";
        try (Connection conn = DBUtils.getConnection(); PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, email);
            stmt.setString(2, password);

            try (ResultSet rs = stmt.executeQuery()) {
                if (rs.next()) {
                    User user = new User();
                    user.setUserId(rs.getInt("user_id"));
                    user.setFullName(rs.getString("full_name"));
                    user.setEmail(rs.getString("email"));
                    user.setPasswordHash(rs.getString("password_hash"));
                    System.out.println("LOGIN THÀNH CÔNG");
                    return user;
                }
            }
            System.out.println("KHÔNG TÌM THẤY NGƯỜI DÙNG");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        User user = checkLogin("hmquang9805@gmail.com", "quang123");
        System.out.println(user);
    }

}
