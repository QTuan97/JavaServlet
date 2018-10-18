import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "BankServlet", urlPatterns = "/interest")
public class BankServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double money = Double.parseDouble(request.getParameter("Input"));
        double rate = Double.parseDouble(request.getParameter("Interest"))/100;
        int month = Integer.parseInt(request.getParameter("Month"));
        double interestMonthly = money * rate * month;
        double interestMoney = money + interestMonthly;
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("Your interest money is: " + interestMoney);
        writer.println("</html>");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
