import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

@WebServlet(name = "EnterNameServlet", urlPatterns = "/entername")
public class EnterNameServlet extends HttpServlet{
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        // Set response content type
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        String title = "Howdy";
        String name = request.getParameter("name");

        out.println(
                "<html>\n" +
                "<head><title>" + title + "</title></head>\n" +
                "<body bgcolor = \"#f1f6f1\">\n" +
                "<h1>" + title + "</h1>\n" +

                "<form action = '/hello' method = 'GET'>\n" +
                    "<b>Enter your Name: </b><input type = 'text' name = 'name'>\n" +
                        "<br />\n" +
                        "<input type = 'submit' value = 'Submit' />\n" +
                        "<input type = 'reset' value = 'clear' />\n" +

                        "</form>" +


                "</body>" +
                "</html>"
        );

    out.close();


    }
    // Filter the string for special HTML characters to prevent
    // command injection attack
    private static String htmlFilter(String message) {
        if (message == null) return null;
        int len = message.length();
        StringBuffer result = new StringBuffer(len + 20);
        char aChar;

        for (int i = 0; i < len; ++i) {
            aChar = message.charAt(i);
            switch (aChar) {
                case '<': result.append("&lt;"); break;
                case '>': result.append("&gt;"); break;
                case '&': result.append("&amp;"); break;
                case '"': result.append("&quot;"); break;
                default: result.append(aChar);
            }
        }
        return (result.toString());
    }

}


