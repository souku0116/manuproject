package logintracker;

public class User {
    private String username;
    private String email;
    private String designation;

    public User(String username, String email, String designation) {
        this.username = username;
        this.email = email;
        this.designation = designation;
    }

    public String getUsername() {
        return username;
    }

    public String getEmail() {
        return email;
    }

    public String getDesignation() {
        return designation;
    }
}
