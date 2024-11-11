<%-- <%@ page import="java.sql.SQLException"%>
<%@ page import="dao.ArtistCategoryDAO" %>
<%@ page import="bean.ArtistCategoryBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String artistCategoryName = request.getParameter("artist-category");

    String message = "";
    if (artistCategoryName != null && !artistCategoryName.trim().isEmpty()) {
      
        ArtistCategoryBean artistCategoryBean = new ArtistCategoryBean();
        artistCategoryBean.setCategoryName(artistCategoryName);

        ArtistCategoryDAO artistCategoryDAO = new ArtistCategoryDAO();

        try {
            boolean isAdded = artistCategoryDAO.addArtistCategory(artistCategoryBean);

            if (isAdded) {
                message = "Successfully uploaded!!";
                 response.sendRedirect("artistManage.jsp");
            } else {
                message = "Error creating artist category!";
            }
        } catch (Exception e) {
            message = "Error creating artist category: " + e.getMessage();
            e.printStackTrace(); 
        }
    } else {
        message = "Please provide a category name!";
    }

    if (!message.isEmpty()) {
        out.print("<p style='color: red;'>" + message + "</p>");
    }
%>

<!-- Redirect back to the artist category page after a delay -->
<meta http-equiv="refresh" content="3;url=artistCategory.jsp">
 --%>
 
 <%@ page import="java.sql.SQLException" %>
<%@ page import="dao.ArtistCategoryDAO" %>
<%@ page import="bean.ArtistCategoryBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
    // Retrieve the category name from the request
    String artistCategoryName = request.getParameter("artist-category");
out.print(artistCategoryName);
    String message = "";

    // Check if the category name is provided
    if (artistCategoryName != null && !artistCategoryName.trim().isEmpty()) {
      
        // Create a new ArtistCategoryBean and set the category name
        ArtistCategoryBean artistCategoryBean = new ArtistCategoryBean();
        artistCategoryBean.setCategoryName(artistCategoryName);

        // Instantiate the DAO and try to add the category
        ArtistCategoryDAO artistCategoryDAO = new ArtistCategoryDAO();

        try {
            boolean isAdded = artistCategoryDAO.addArtistCategory(artistCategoryBean);

            if (isAdded) {
                message = "<div class='alert alert-success'>Successfully uploaded!</div>";
                // Redirect to the manage page if the category is added successfully
                response.sendRedirect("artistManage.jsp");
            } else {
                message = "<div class='alert alert-danger'>Error creating artist category!</div>";
            }
        } catch (Exception e) {
            message = "<div class='alert alert-danger'>Error creating artist category: " + e.getMessage() + "</div>";
            e.printStackTrace();
        }
    } else {
        message = "<div class='alert alert-warning'>Please provide a category name!</div>";
    }

    // Output the message if it exists
    if (!message.isEmpty()) {
        out.print(message);
    }
%>

<!-- Redirect back to the artist category page after a delay if there’s an error -->
<%
if (!response.isCommitted()) {
%>
    <meta http-equiv="refresh" content="3;url=artistCategory.jsp">
<%
}
%>
 