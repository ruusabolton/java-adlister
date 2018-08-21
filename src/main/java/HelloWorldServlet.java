import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/name")
public class HelloWorldServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.getWriter().println("<h1>Hello, World!</h1>");

        String name = request.getParameter("username");
        request.setAttribute("username", name);



        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }
        protected void doPost (HttpServletRequest request, HttpServletResponse response) throws
        IOException, ServletException {
            response.getWriter().println("<h1>Hello, World!</h1>");
            if (request.getMethod().equalsIgnoreCase("post")) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");

                if (username.equals("admin") && password.equals("password")) {
                    response.sendRedirect("../profile.jsp");
                }
            }
            response.sendRedirect("/profile.jsp");

            request.getRequestDispatcher("/profile.jsp").forward(request, response);






        }

}
