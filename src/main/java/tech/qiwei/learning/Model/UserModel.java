package tech.qiwei.learning.Model;

public class UserModel {


    private String userId;
    private String username;

    private String password;

    public UserModel(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public UserModel() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }
}
