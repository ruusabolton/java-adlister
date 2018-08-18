import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import org.apache.commons.lang3.StringUtils;



@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("name");

        if (StringUtils.isBlank("name")){
            out.println("<h1>Hello, World!</h1>");


        }else {
            out.println("Hello, " + "<h2>" +name +"</h2>! ");

        }
//        out.println("<h1>Hello, World!</h1> <br> <hr>");



    }
}
