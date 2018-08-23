import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/viewAds")
public class ViewAdsServlet extends HttpServlet {
    Ads adsDao = DaoFactory.getAdsDao();
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", adsDao.all());
        request.getRequestDispatcher("/ads/index.jsp").forward(request, response);
    }

}
