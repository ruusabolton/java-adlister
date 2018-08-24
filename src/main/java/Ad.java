public class Ad {
    private long id;
    private long user_id;
    private String title;
    private String description;

    public Ad() {
        this.id = id;
        this.user_id = user_id;
        this.title = title;
        this.description = description;
    }

    public Ad( long user_id, String title, String description) {
        this.user_id = user_id;
        this.title = title;
        this.description = description;
    }

    public Ad(long id, long user_d, String title, String description) {
        this.user_id = user_id;
        this.title = title;
        this.description = description;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUserid() {
        return user_id;
    }

    public void setUserid(long user_id) {
        this.user_id = user_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
