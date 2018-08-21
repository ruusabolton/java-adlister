import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ColorServlet", urlPatterns = "/color")
public class ColorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         String color = request.getParameter("usercolor");
        request.setAttribute("usercolor", color);
        request.getRequestDispatcher("color.jsp").forward(request, response);

            }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("color_form.jsp").forward(request, response);

    }
}
