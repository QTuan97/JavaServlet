import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Servlet",urlPatterns = "/index")
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product = request.getParameter("Product");
        String description = request.getParameter("Description");
        double price = Double.parseDouble(request.getParameter("Price"));
        double percent = Double.parseDouble(request.getParameter("Discount Percent"));
        double discountAmount = price -(price * percent * 0.01);

        PrintWriter writer = response.getWriter();
        writer.println("<html>");

        writer.println("<p>Product: " + product + "</p>");
        writer.println("<p>Description: " + description + "</p>");
        writer.println("<p>List Price: " + price + "</p>");
        writer.println("<p>Discount Amount: " + percent + "</p>");
        writer.println("<p>Discount Price: " + discountAmount + "</p>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
