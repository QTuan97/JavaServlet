import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DetectorServlet", urlPatterns = "/browser")
public class DetectorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getHeader("User-Agent");
        PrintWriter writer = response.getWriter();
        String browser = "None";
        if(user.contains("Firefox")){
            browser = "FireFox";
        }else if(user.contains("Chrome")){
            browser = "Google Chrome";
        }else if(user.contains("Safari")){
            browser = "Safari";
        }else if(user.contains("Opera")){
            browser = "Opera";
        }else if(user.contains("Internet")){
            browser = "Internet Explore";
        }
        writer.println("<html>");
        writer.println("<h>Your User-Agent is: " + user + "</h>");
        writer.println("<p>Your browser is: " + browser + "</p>");
        writer.println("</html>");
    }
}
