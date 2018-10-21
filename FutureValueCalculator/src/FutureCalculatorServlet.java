import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "FutureCalculatorServlet", urlPatterns = "/calculate")
public class FutureCalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double amount = Double.parseDouble(request.getParameter("Amount"));
        double rate = Double.parseDouble(request.getParameter("Rate"));
        int year = Integer.parseInt(request.getParameter("Years"));
        double interest = amount * rate * year * 0.1;
        double result = amount + interest;
        PrintWriter writer = response.getWriter();
        if(year <= 0){
            writer.println("Invalid input");
        }
        else if(year == 1){
            writer.println("Your interest after 1 year is: " + result);
        }else{
            writer.println("Your interest after " + year + " years is: " + result);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
