package gui;


import javafx.geometry.Insets;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.ColumnConstraints;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.RowConstraints;

public  class FXMLDocumentBase extends BorderPane {

    protected final Label label;
    protected final GridPane gridPane;
    protected final ColumnConstraints columnConstraints;
    protected final ColumnConstraints columnConstraints0;
    protected final ColumnConstraints columnConstraints1;
    protected final ColumnConstraints columnConstraints2;
    protected final ColumnConstraints columnConstraints3;
    protected final ColumnConstraints columnConstraints4;
    protected final ColumnConstraints columnConstraints5;
    protected final RowConstraints rowConstraints;
    protected final Button button;
    protected final Button button0;
    protected final Button button1;
    protected final Button button2;
    protected final Button button3;
    protected final Button button4;
    protected final Button button5;
    protected final GridPane gridPane0;
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
    protected final TextField textField;
    protected final TextField textField0;
    protected final TextField textField1;
    protected final TextField textField2;
    protected final TextField textField3;
    protected final TextField textField4;

    public FXMLDocumentBase() {

        label = new Label();
        gridPane = new GridPane();
        columnConstraints = new ColumnConstraints();
        columnConstraints0 = new ColumnConstraints();
        columnConstraints1 = new ColumnConstraints();
        columnConstraints2 = new ColumnConstraints();
        columnConstraints3 = new ColumnConstraints();
        columnConstraints4 = new ColumnConstraints();
        columnConstraints5 = new ColumnConstraints();
        rowConstraints = new RowConstraints();
        button = new Button();
        button0 = new Button();
        button1 = new Button();
        button2 = new Button();
        button3 = new Button();
        button4 = new Button();
        button5 = new Button();
        gridPane0 = new GridPane();
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
        textField = new TextField();
        textField0 = new TextField();
        textField1 = new TextField();
        textField2 = new TextField();
        textField3 = new TextField();
        textField4 = new TextField();

        setMaxHeight(USE_PREF_SIZE);
        setMaxWidth(USE_PREF_SIZE);
        setMinHeight(USE_PREF_SIZE);
        setMinWidth(USE_PREF_SIZE);
        setPrefHeight(400.0);
        setPrefWidth(700.0);

        BorderPane.setAlignment(label, javafx.geometry.Pos.CENTER);
        label.setText("Person Details");
        setTop(label);

        BorderPane.setAlignment(gridPane, javafx.geometry.Pos.CENTER);
        gridPane.setHgap(10.0);

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

        button.setMnemonicParsing(false);
        button.setPrefHeight(31.0);
        button.setPrefWidth(99.0);
        button.setText("New...");

        GridPane.setColumnIndex(button0, 1);
        button0.setMnemonicParsing(false);
        button0.setPrefHeight(31.0);
        button0.setPrefWidth(97.0);
        button0.setText("Update");

        GridPane.setColumnIndex(button1, 2);
        button1.setMnemonicParsing(false);
        button1.setPrefHeight(31.0);
        button1.setPrefWidth(96.0);
        button1.setText("Delete");

        GridPane.setColumnIndex(button2, 3);
        button2.setMnemonicParsing(false);
        button2.setPrefHeight(31.0);
        button2.setPrefWidth(91.0);
        button2.setText("First");

        GridPane.setColumnIndex(button3, 4);
        button3.setMnemonicParsing(false);
        button3.setPrefHeight(31.0);
        button3.setPrefWidth(95.0);
        button3.setText("Previous");

        GridPane.setColumnIndex(button4, 5);
        button4.setAlignment(javafx.geometry.Pos.CENTER);
        button4.setContentDisplay(javafx.scene.control.ContentDisplay.CENTER);
        button4.setMnemonicParsing(false);
        button4.setPrefHeight(31.0);
        button4.setPrefWidth(114.0);
        button4.setText("Next");

        GridPane.setColumnIndex(button5, 6);
        button5.setMnemonicParsing(false);
        button5.setPrefHeight(31.0);
        button5.setPrefWidth(95.0);
        button5.setText("Last");
        setBottom(gridPane);

        BorderPane.setAlignment(gridPane0, javafx.geometry.Pos.CENTER);

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

        GridPane.setColumnIndex(textField, 1);
        textField.setMaxWidth(USE_PREF_SIZE);
        textField.setPrefHeight(31.0);
        textField.setPrefWidth(198.0);

        GridPane.setColumnIndex(textField0, 1);
        GridPane.setRowIndex(textField0, 1);
        textField0.setMaxWidth(USE_PREF_SIZE);
        textField0.setPrefHeight(31.0);
        textField0.setPrefWidth(370.0);

        GridPane.setColumnIndex(textField1, 1);
        GridPane.setRowIndex(textField1, 2);
        textField1.setMaxWidth(USE_PREF_SIZE);
        textField1.setPrefHeight(31.0);
        textField1.setPrefWidth(371.0);

        GridPane.setColumnIndex(textField2, 1);
        GridPane.setRowIndex(textField2, 3);
        textField2.setMaxWidth(USE_PREF_SIZE);
        textField2.setPrefHeight(31.0);
        textField2.setPrefWidth(370.0);

        GridPane.setColumnIndex(textField3, 1);
        GridPane.setRowIndex(textField3, 4);
        textField3.setMaxWidth(USE_PREF_SIZE);
        textField3.setPrefHeight(31.0);
        textField3.setPrefWidth(370.0);

        GridPane.setColumnIndex(textField4, 1);
        GridPane.setRowIndex(textField4, 5);
        textField4.setMaxWidth(USE_PREF_SIZE);
        setLeft(gridPane0);
        setPadding(new Insets(20.0));

        gridPane.getColumnConstraints().add(columnConstraints);
        gridPane.getColumnConstraints().add(columnConstraints0);
        gridPane.getColumnConstraints().add(columnConstraints1);
        gridPane.getColumnConstraints().add(columnConstraints2);
        gridPane.getColumnConstraints().add(columnConstraints3);
        gridPane.getColumnConstraints().add(columnConstraints4);
        gridPane.getColumnConstraints().add(columnConstraints5);
        gridPane.getRowConstraints().add(rowConstraints);
        gridPane.getChildren().add(button);
        gridPane.getChildren().add(button0);
        gridPane.getChildren().add(button1);
        gridPane.getChildren().add(button2);
        gridPane.getChildren().add(button3);
        gridPane.getChildren().add(button4);
        gridPane.getChildren().add(button5);
        gridPane0.getColumnConstraints().add(columnConstraints6);
        gridPane0.getColumnConstraints().add(columnConstraints7);
        gridPane0.getRowConstraints().add(rowConstraints0);
        gridPane0.getRowConstraints().add(rowConstraints1);
        gridPane0.getRowConstraints().add(rowConstraints2);
        gridPane0.getRowConstraints().add(rowConstraints3);
        gridPane0.getRowConstraints().add(rowConstraints4);
        gridPane0.getRowConstraints().add(rowConstraints5);
        gridPane0.getChildren().add(label0);
        gridPane0.getChildren().add(label1);
        gridPane0.getChildren().add(label2);
        gridPane0.getChildren().add(label3);
        gridPane0.getChildren().add(label4);
        gridPane0.getChildren().add(label5);
        gridPane0.getChildren().add(textField);
        gridPane0.getChildren().add(textField0);
        gridPane0.getChildren().add(textField1);
        gridPane0.getChildren().add(textField2);
        gridPane0.getChildren().add(textField3);
        gridPane0.getChildren().add(textField4);

    }
}
