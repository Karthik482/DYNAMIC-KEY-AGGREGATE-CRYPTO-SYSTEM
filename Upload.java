package cloud;

import com.dropbox.core.*;
import java.awt.FileDialog;
import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Locale;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import pack.DbConnector;

public class Upload {
File file1;
    public static void main(String[] args) throws IOException, DbxException {
        
    }

    public void con(String pkey) throws IOException, Throwable {
        FileInputStream inputStream = null;
        try {
            final String APP_KEY = "kmjdr670wjea0xr";
            final String APP_SECRET = "4ppjmgz3sh7bmct";
            DbxAppInfo appInfo = new DbxAppInfo(APP_KEY, APP_SECRET);
            DbxRequestConfig config = new DbxRequestConfig("JavaTutorial/1.0",
                    Locale.getDefault().toString());
            DbxWebAuthNoRedirect webAuth = new DbxWebAuthNoRedirect(config, appInfo);
            String authorizeUrl = webAuth.start();
            System.out.println("1. Go to: " + authorizeUrl);
           JOptionPane.showInputDialog(null, "Go To this Link",authorizeUrl);
            System.out.println("2. Click Allow(you might have to log in first)");
            System.out.println("3. Copy the authorization code.");            
            String code = JOptionPane.showInputDialog("Enter Private Key");            
            DbxAuthFinish authFinish = webAuth.finish(code);
            DbxClient client = new DbxClient(config, authFinish.accessToken);
            String file, dir, path;
            FileDialog fd2 = null;
            fd2 = new FileDialog(fd2);
            fd2.setVisible(true);
            file = fd2.getFile();
            dir = fd2.getDirectory();
            path = dir + file;
            System.out.println("path is " + fd2.getFile());
           // String key = JOptionPane.showInputDialog("Enter master-secret key \n More than 6 letter");
            FileInputStream fis = new FileInputStream(path);
            FileOutputStream fos = new FileOutputStream(dir + "/en.txt");
            new CipherExample1().encrypt(pkey, fis, fos);
            File inputFilesss = new File(path);
            String getName = inputFilesss.getName();
            File inputFile = new File(dir + "/en.txt");
            inputStream = new FileInputStream(inputFile);
             try {          
                DbxEntry.File uploadedFile = client.uploadFile("/" + file, DbxWriteMode.add(), inputFile.length(), inputStream);
                long h = inputFile.length();
                System.out.println("this is size" + h);
                String msg= "No";
                Random r = new Random();
            int i = r.nextInt(10000000 - 50000) + 50000;
            String k = "4ppjmgz3sh7bmct";
            String me = "admin";
            Connection con = DbConnector.getConnection();
            Statement st = con.createStatement();
            int s = st.executeUpdate("insert into admin values('"+fd2.getFile()+"','"+k+"','"+h+"',now(),'"+pkey+"','"+me+"')");
                 } finally {
               
            }
        } catch (FileNotFoundException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        } catch (DbxException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                inputStream.close();
            } catch (IOException ex) {
               Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

}