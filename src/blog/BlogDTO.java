package blog;

public class BlogDTO {
   private int blog_id;
   private int id;
   private String blog_title;
   private String blog_date;
   private String blog_summary;
   private String blog_contents;
   private int blog_count;
   
   public BlogDTO(){
      
   }
   
   public BlogDTO(String blog_title, String blog_summary , String blog_contents){
      this.blog_title = blog_title;
      this.blog_summary = blog_summary;
      this.blog_contents = blog_contents;
   }
   
   
   public String getBlog_summary() {
      return blog_summary;
   }

   public void setBlog_summary(String blog_summary) {
      this.blog_summary = blog_summary;
   }

   public int getBlog_id() {
      return blog_id;
   }
   public void setBlog_id(int blog_id) {
      this.blog_id = blog_id;
   }
   public int getId() {
      return id;
   }
   public void setId(int id) {
      this.id = id;
   }
   public String getBlog_title() {
      return blog_title;
   }
   public void setBlog_title(String blog_title) {
      this.blog_title = blog_title;
   }
   public String getBlog_date() {
      return blog_date;
   }
   public void setBlog_date(String blog_date) {
      this.blog_date = blog_date;
   }
   public String getBlog_contents() {
      return blog_contents;
   }
   public void setBlog_contents(String blog_contents) {
      this.blog_contents = blog_contents;
   }
   public int getBlog_count() {
      return blog_count;
   }
   public void setBlog_count(int blog_count) {
      this.blog_count = blog_count;
   }
   
   
}