package gui;

import datasource.DataSourceCreator;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.event.ActionEvent;
import javafx.event.Event;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.ColumnConstraints;
import javafx.scene.layout.GridPane;
import static javafx.scene.layout.Region.USE_PREF_SIZE;
import javafx.scene.layout.RowConstraints;
import javax.sql.DataSource;
import main.Main;

public class FXMLDocumentBase extends BorderPane {

    boolean newPerson = false;
    private boolean emptyFlag = false;

    protected final Label personDetailsLabel;
    protected final GridPane buttonsGridPane;
    protected final ColumnConstraints columnConstraints;
    protected final ColumnConstraints columnConstraints0;
    protected final ColumnConstraints columnConstraints1;
    protected final ColumnConstraints columnConstraints2;
    protected final ColumnConstraints columnConstraints3;
    protected final ColumnConstraints columnConstraints4;
    protected final ColumnConstraints columnConstraints5;
    protected final RowConstraints rowConstraints;
    protected final Button newButton;
    protected final Button updateButton;
    protected final Button deleteButton;
    protected final Button firstButton;
    protected final Button previousButton;
    protected final Button nextButton;
    protected final Button lastButton;
    protected final GridPane detailsGridPane;
    protected final ColumnConstraints columnConstraints6;
    protected final ColumnConstraints columnConstraints7;
    protected final RowConstraints rowConstraints0;
    protected final RowConstraints rowConstraints1;
    protected final RowConstraints rowConstraints2;
    protected final RowConstraints rowConstraints3;
    protected final RowConstraints rowConstraints4;
    protected final RowConstraints rowConstraints5;
    protected final Label label0;
    protected final Label label1;
    protected final Label label2;
    protected final Label label3;
    protected final Label label4;
    protected final Label label5;
    protected final TextField idTextField;
    protected final TextField firstNameTextField;
    protected final TextField middleNameTextField;
    protected final TextField lastNameTextField;
    protected final TextField emailTextField;
    protected final TextField phoneTextField;
    private ResultSet resultSet;

    public FXMLDocumentBase() {

        personDetailsLabel = new Label();
        buttonsGridPane = new GridPane();
        columnConstraints = new ColumnConstraints();
        columnConstraints0 = new ColumnConstraints();
        columnConstraints1 = new ColumnConstraints();
        columnConstraints2 = new ColumnConstraints();
        columnConstraints3 = new ColumnConstraints();
        columnConstraints4 = new ColumnConstraints();
        columnConstraints5 = new ColumnConstraints();
        rowConstraints = new RowConstraints();
        newButton = new Button();
        updateButton = new Button();
        deleteButton = new Button();
        firstButton = new Button();
        previousButton = new Button();
        nextButton = new Button();
        lastButton = new Button();
        detailsGridPane = new GridPane();
        columnConstraints6 = new ColumnConstraints();
        columnConstraints7 = new ColumnConstraints();
        rowConstraints0 = new RowConstraints();
        rowConstraints1 = new RowConstraints();
        rowConstraints2 = new RowConstraints();
        rowConstraints3 = new RowConstraints();
        rowConstraints4 = new RowConstraints();
        rowConstraints5 = new RowConstraints();
        label0 = new Label();
        label1 = new Label();
        label2 = new Label();
        label3 = new Label();
        label4 = new Label();
        label5 = new Label();
        idTextField = new TextField();
        firstNameTextField = new TextField();
        middleNameTextField = new TextField();
        lastNameTextField = new TextField();
        emailTextField = new TextField();
        phoneTextField = new TextField();

        setMaxHeight(USE_PREF_SIZE);
        setMaxWidth(USE_PREF_SIZE);
        setMinHeight(USE_PREF_SIZE);
        setMinWidth(USE_PREF_SIZE);
        setPrefHeight(400.0);
        setPrefWidth(700.0);

        BorderPane.setAlignment(personDetailsLabel, javafx.geometry.Pos.CENTER);
        personDetailsLabel.setText("Person Details");
        setTop(personDetailsLabel);

        BorderPane.setAlignment(buttonsGridPane, javafx.geometry.Pos.CENTER);
        buttonsGridPane.setHgap(10.0);

        columnConstraints.setHgrow(javafx.scene.layout.Priority.SOMETIMES);
        columnConstraints.setMinWidth(10.0);
        columnConstraints.setPrefWidth(100.0);

        columnConstraints0.setHgrow(javafx.scene.layout.Priority.SOMETIMES);
        columnConstraints0.setMinWidth(10.0);
        columnConstraints0.setPrefWidth(100.0);

        columnConstraints1.setHgrow(javafx.scene.layout.Priority.SOMETIMES);
        columnConstraints1.setMinWidth(10.0);
        columnConstraints1.setPrefWidth(100.0);

        columnConstraints2.setHgrow(javafx.scene.layout.Priority.SOMETIMES);
        columnConstraints2.setMinWidth(10.0);
        columnConstraints2.setPrefWidth(100.0);

        columnConstraints3.setHgrow(javafx.scene.layout.Priority.SOMETIMES);
        columnConstraints3.setMinWidth(10.0);
        columnConstraints3.setPrefWidth(100.0);

        columnConstraints4.setHgrow(javafx.scene.layout.Priority.SOMETIMES);
        columnConstraints4.setMinWidth(10.0);
        columnConstraints4.setPrefWidth(100.0);

        columnConstraints5.setHgrow(javafx.scene.layout.Priority.SOMETIMES);
        columnConstraints5.setMinWidth(10.0);
        columnConstraints5.setPrefWidth(100.0);

        rowConstraints.setMinHeight(10.0);
        rowConstraints.setPrefHeight(30.0);
        rowConstraints.setVgrow(javafx.scene.layout.Priority.SOMETIMES);

        newButton.setMnemonicParsing(false);
        newButton.setPrefHeight(31.0);
        newButton.setPrefWidth(99.0);
        newButton.setText("New...");

        GridPane.setColumnIndex(updateButton, 1);
        updateButton.setMnemonicParsing(false);
        updateButton.setPrefHeight(31.0);
        updateButton.setPrefWidth(97.0);
        updateButton.setText("Update");

        GridPane.setColumnIndex(deleteButton, 2);
        deleteButton.setMnemonicParsing(false);
        deleteButton.setPrefHeight(31.0);
        deleteButton.setPrefWidth(96.0);
        deleteButton.setText("Delete");

        GridPane.setColumnIndex(firstButton, 3);
        firstButton.setMnemonicParsing(false);
        firstButton.setPrefHeight(31.0);
        firstButton.setPrefWidth(91.0);
        firstButton.setText("First");

        GridPane.setColumnIndex(previousButton, 4);
        previousButton.setMnemonicParsing(false);
        previousButton.setPrefHeight(31.0);
        previousButton.setPrefWidth(95.0);
        previousButton.setText("Previous");

        GridPane.setColumnIndex(nextButton, 5);
        nextButton.setAlignment(javafx.geometry.Pos.CENTER);
        nextButton.setContentDisplay(javafx.scene.control.ContentDisplay.CENTER);
        nextButton.setMnemonicParsing(false);
        nextButton.setPrefHeight(31.0);
        nextButton.setPrefWidth(114.0);
        nextButton.setText("Next");

        GridPane.setColumnIndex(lastButton, 6);
        lastButton.setMnemonicParsing(false);
        lastButton.setPrefHeight(31.0);
        lastButton.setPrefWidth(95.0);
        lastButton.setText("Last");
        setBottom(buttonsGridPane);

        BorderPane.setAlignment(detailsGridPane, javafx.geometry.Pos.CENTER);

        columnConstraints6.setHgrow(javafx.scene.layout.Priority.SOMETIMES);
        columnConstraints6.setMaxWidth(345.0);
        columnConstraints6.setMinWidth(10.0);
        columnConstraints6.setPrefWidth(127.0);

        columnConstraints7.setHgrow(javafx.scene.layout.Priority.SOMETIMES);
        columnConstraints7.setMaxWidth(573.0);
        columnConstraints7.setMinWidth(10.0);
        columnConstraints7.setPrefWidth(573.0);

        rowConstraints0.setMinHeight(10.0);
        rowConstraints0.setPrefHeight(30.0);
        rowConstraints0.setVgrow(javafx.scene.layout.Priority.SOMETIMES);

        rowConstraints1.setMinHeight(10.0);
        rowConstraints1.setPrefHeight(30.0);
        rowConstraints1.setVgrow(javafx.scene.layout.Priority.SOMETIMES);

        rowConstraints2.setMinHeight(10.0);
        rowConstraints2.setPrefHeight(30.0);
        rowConstraints2.setVgrow(javafx.scene.layout.Priority.SOMETIMES);

        rowConstraints3.setMinHeight(10.0);
        rowConstraints3.setPrefHeight(30.0);
        rowConstraints3.setVgrow(javafx.scene.layout.Priority.SOMETIMES);

        rowConstraints4.setMinHeight(10.0);
        rowConstraints4.setPrefHeight(30.0);
        rowConstraints4.setVgrow(javafx.scene.layout.Priority.SOMETIMES);

        rowConstraints5.setMinHeight(10.0);
        rowConstraints5.setPrefHeight(30.0);
        rowConstraints5.setVgrow(javafx.scene.layout.Priority.SOMETIMES);

        label0.setText("ID");

        GridPane.setRowIndex(label1, 1);
        label1.setText("First Name");

        GridPane.setRowIndex(label2, 2);
        label2.setText("Middle Name");

        GridPane.setRowIndex(label3, 3);
        label3.setText("Last Name");

        GridPane.setRowIndex(label4, 4);
        label4.setText("Email");

        GridPane.setRowIndex(label5, 5);
        label5.setText("Phone");

        GridPane.setColumnIndex(idTextField, 1);
        idTextField.setMaxWidth(USE_PREF_SIZE);
        idTextField.setPrefHeight(31.0);
        idTextField.setPrefWidth(198.0);

        GridPane.setColumnIndex(firstNameTextField, 1);
        GridPane.setRowIndex(firstNameTextField, 1);
        firstNameTextField.setMaxWidth(USE_PREF_SIZE);
        firstNameTextField.setPrefHeight(31.0);
        firstNameTextField.setPrefWidth(370.0);

        GridPane.setColumnIndex(middleNameTextField, 1);
        GridPane.setRowIndex(middleNameTextField, 2);
        middleNameTextField.setMaxWidth(USE_PREF_SIZE);
        middleNameTextField.setPrefHeight(31.0);
        middleNameTextField.setPrefWidth(371.0);

        GridPane.setColumnIndex(lastNameTextField, 1);
        GridPane.setRowIndex(lastNameTextField, 3);
        lastNameTextField.setMaxWidth(USE_PREF_SIZE);
        lastNameTextField.setPrefHeight(31.0);
        lastNameTextField.setPrefWidth(370.0);

        GridPane.setColumnIndex(emailTextField, 1);
        GridPane.setRowIndex(emailTextField, 4);
        emailTextField.setMaxWidth(USE_PREF_SIZE);
        emailTextField.setPrefHeight(31.0);
        emailTextField.setPrefWidth(370.0);

        GridPane.setColumnIndex(phoneTextField, 1);
        GridPane.setRowIndex(phoneTextField, 5);
        phoneTextField.setMaxWidth(USE_PREF_SIZE);
        setLeft(detailsGridPane);
        setPadding(new Insets(20.0));

        buttonsGridPane.getColumnConstraints().add(columnConstraints);
        buttonsGridPane.getColumnConstraints().add(columnConstraints0);
        buttonsGridPane.getColumnConstraints().add(columnConstraints1);
        buttonsGridPane.getColumnConstraints().add(columnConstraints2);
        buttonsGridPane.getColumnConstraints().add(columnConstraints3);
        buttonsGridPane.getColumnConstraints().add(columnConstraints4);
        buttonsGridPane.getColumnConstraints().add(columnConstraints5);
        buttonsGridPane.getRowConstraints().add(rowConstraints);
        buttonsGridPane.getChildren().add(newButton);
        buttonsGridPane.getChildren().add(updateButton);
        buttonsGridPane.getChildren().add(deleteButton);
        buttonsGridPane.getChildren().add(firstButton);
        buttonsGridPane.getChildren().add(previousButton);
        buttonsGridPane.getChildren().add(nextButton);
        buttonsGridPane.getChildren().add(lastButton);
        detailsGridPane.getColumnConstraints().add(columnConstraints6);
        detailsGridPane.getColumnConstraints().add(columnConstraints7);
        detailsGridPane.getRowConstraints().add(rowConstraints0);
        detailsGridPane.getRowConstraints().add(rowConstraints1);
        detailsGridPane.getRowConstraints().add(rowConstraints2);
        detailsGridPane.getRowConstraints().add(rowConstraints3);
        detailsGridPane.getRowConstraints().add(rowConstraints4);
        detailsGridPane.getRowConstraints().add(rowConstraints5);
        detailsGridPane.getChildren().add(label0);
        detailsGridPane.getChildren().add(label1);
        detailsGridPane.getChildren().add(label2);
        detailsGridPane.getChildren().add(label3);
        detailsGridPane.getChildren().add(label4);
        detailsGridPane.getChildren().add(label5);
        detailsGridPane.getChildren().add(idTextField);
        detailsGridPane.getChildren().add(firstNameTextField);
        detailsGridPane.getChildren().add(middleNameTextField);
        detailsGridPane.getChildren().add(lastNameTextField);
        detailsGridPane.getChildren().add(emailTextField);
        detailsGridPane.getChildren().add(phoneTextField);

        //fares
        getStatement();

        //esraa
    }

    private void getStatement() {
        DataSource mySqlDataSource = DataSourceCreator.getMySqlDataSource();
        try {
            Connection connection = mySqlDataSource.getConnection();
            Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,
                    ResultSet.CONCUR_UPDATABLE,
                    ResultSet.HOLD_CURSORS_OVER_COMMIT);
            resultSet = statement.executeQuery("SELECT * FROM PERSON");
            showNextPerson();
        } catch (SQLException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void showNextPerson() {
        
    }
}
