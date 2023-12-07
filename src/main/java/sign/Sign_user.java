package sign;

public class Sign_user {

	private String id;
    private String pw;
    private String email;     

    public Sign_user() {
        id = null;
        pw = null;
        email = null;
    }

    public void setId(String id){
        this.id = id;
    }

    public void setPw(String pw){
        this.pw = pw;
    }

    public void setEmail(String email){
        this.email = email;
    }

    public String getId(){
        return id;
    }
    
    public String getPw(){
        return pw;
    }
    
    public String getEmail(){
        return email;
    }

}
