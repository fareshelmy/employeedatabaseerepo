/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import gui.FXMLDocumentBase;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;

/**
 *
 * @author FARES-LAP
 */
public class Main extends Application {

    public static void main(String[] args) {
        //esraa
        launch(args);
    }

    @Override
    public void start(Stage primaryStage) throws Exception {
        //esraa
        FXMLDocumentBase root = new FXMLDocumentBase();
        Scene scene = new Scene(root);
        primaryStage.setScene(scene);
        primaryStage.show();
        
    }
}
