/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cloud;

import com.dropbox.core.DbxAppInfo;
import com.dropbox.core.DbxAuthFinish;
import com.dropbox.core.DbxClient;
import com.dropbox.core.DbxEntry;
import com.dropbox.core.DbxException;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.DbxWebAuthNoRedirect;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author jp
 */
public class FilesD extends HttpServlet {

    
    public void FilesDetails(){
        try {
            final String APP_KEY = "kmjdr670wjea0xr";
                final String APP_SECRET = "4ppjmgz3sh7bmct"; 

                DbxAppInfo appInfo = new DbxAppInfo(APP_KEY, APP_SECRET);

                DbxRequestConfig config = new DbxRequestConfig("JavaTutorial/1.0",
                        Locale.getDefault().toString());
                DbxWebAuthNoRedirect webAuth = new DbxWebAuthNoRedirect(config, appInfo);

                // Have the user sign in and authorize your app.
                String authorizeUrl = webAuth.start();
                System.out.println("1. Go to: " + authorizeUrl);
                System.out.println("2. Click Allow(you might have to log in first)");
                System.out.println("3. Copy the authorization code.");
                //String code = new BufferedReader(new InputStreamReader(System.in)).readLine().trim();
                String code = JOptionPane.showInputDialog("Enter Code");
                DbxAuthFinish authFinish = webAuth.finish(code);
                 DbxClient client = new DbxClient(config, authFinish.accessToken);
                 DbxEntry.WithChildren listing = client.getMetadataWithChildren("/");
             System.out.println("Files in the root path:");
             for (DbxEntry child : listing.children) {
             System.out.println("	" + child.name  );
             System.out.println("	" + child.name + ": " + child.toString());
             }

               // DbxClient client = new DbxClient(config, authFinish.accessToken);
        } catch (DbxException ex) {
            Logger.getLogger(FilesD.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
        FilesDetails();
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
