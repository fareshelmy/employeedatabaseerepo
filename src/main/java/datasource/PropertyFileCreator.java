/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datasource;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author FARES-LAP
 */
public class PropertyFileCreator {

    //fares
    public PropertyFileCreator() {
        Properties properties = new Properties();
        FileOutputStream fileOutputStream = null;
        try {
            fileOutputStream = new FileOutputStream("probs.txt");
            properties.setProperty("MYSQL_DB_URL", "jdbc:mysql://localhost:3306/fares");
            properties.setProperty("MYSQL_DB_USERNAME", "root");
            properties.setProperty("MYSQL_DB_PASSWORD", "EsraaHamed112");
            properties.store(fileOutputStream, null);
        } catch (FileNotFoundException ex) {
            Logger.getLogger(PropertyFileCreator.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(PropertyFileCreator.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException ex) {
                    Logger.getLogger(PropertyFileCreator.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }
}
