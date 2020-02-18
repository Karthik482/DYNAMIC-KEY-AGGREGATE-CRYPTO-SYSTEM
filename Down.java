package cloud;

import com.dropbox.core.*;
import java.awt.FileDialog;
import java.io.*;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JPopupMenu;

public class Down {

    public static void main(String[] args) throws IOException, DbxException {
    }

    public void don(String filenamee,String publick) throws Throwable {
        FileOutputStream outputStream = null;
        try {
            // Get your app key and secret from the Dropbox developers website.
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
            String code = JOptionPane.showInputDialog("Enter PrivateKey");            
            DbxAuthFinish authFinish = webAuth.finish(code);
            DbxClient client = new DbxClient(config, authFinish.accessToken); 
          //  String getFileName = JOptionPane.showInputDialog("Enter File name"); 
          //  outputStream = new FileOutputStream("C:\\Users\\IBN-37\\Desktop\\" + getFileName);//enc file will save Here. 
            outputStream = new FileOutputStream("C:\\Users\\IBN-37\\Desktop\\" + filenamee);//enc file will save Here. 
            try {               
                System.out.println(outputStream);               
                try{
               // DbxEntry.File downloadedFile = client.getFile("/" + getFileName, null, outputStream);
                DbxEntry.File downloadedFile = client.getFile("/" + filenamee, null, outputStream);
                outputStream.close();
                }catch(Exception e){
                    JOptionPane.showMessageDialog(null,"Error "+e);
                }                
          //  String key = JOptionPane.showInputDialog("Enter Secret key");
            //FileInputStream fis2 = new FileInputStream("C:\\Users\\IBN-37\\Desktop\\" + getFileName);//enc file getting
            FileInputStream fis2 = new FileInputStream("C:\\Users\\IBN-37\\Desktop\\" + filenamee);//enc file getting
            //FileOutputStream fos2 = new FileOutputStream("C:\\Users\\IBN-37\\Desktop\\Could Data\\" + getFileName);//enc file decrypt and and save here
            FileOutputStream fos2 = new FileOutputStream("C:\\Users\\IBN-37\\Desktop\\Could Data\\" + filenamee);//enc file decrypt and and save here
           // new CipherExample1().decrypt(key, fis2, fos2);  
            new CipherExample1().decrypt(publick, fis2, fos2);
            
            
            } catch (IOException ex) {
                Logger.getLogger(Down.class.getName()).log(Level.SEVERE, null, ex);
            } finally {
            }
        } catch (FileNotFoundException ex) {           
            Logger.getLogger(Down.class.getName()).log(Level.SEVERE, null, ex);
        } catch (DbxException ex) {          
            Logger.getLogger(Down.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                outputStream.close();
            } catch (IOException ex) {
                Logger.getLogger(Down.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
}
    
    
    
       