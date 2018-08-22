import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "GuessServlet", urlPatterns = "/guess")
public class GuessServlet extends HttpServlet  {

    private static int correctNumber = getRandom();

    public static int getRandom(){
        Random rand = new Random();
        int n = rand.nextInt(100) + 1;
        return n;
    }
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int correctNumber = getRandom();
        String userNbr = request.getParameter("userNbr");
        request.setAttribute("userNbr", userNbr);
        request.setAttribute("correctNumber", correctNumber);
        request.getRequestDispatcher("results.jsp").forward(request, response);

    }
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("guess_form.jsp").forward(request, response);
    }


}
