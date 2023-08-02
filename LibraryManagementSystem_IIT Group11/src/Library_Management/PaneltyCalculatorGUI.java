/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package Library_Management;

import java.awt.Color;
import static java.awt.Color.cyan;
import java.awt.Dimension;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.time.LocalDate;
import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JTextField;

/**
 *
 * @author User
 */
public class PaneltyCalculatorGUI extends javax.swing.JFrame {
    private JTextField actualDateField, givenDateField;
    private JButton calculateButton;
    private JLabel resultLabel;
    private JRadioButton flatRateRadioButton, percentageRadioButton;
    private ButtonGroup strategyButtonGroup;

    private PenaltyCalculator penaltyCalculator;
    /**
     * Creates new form PaneltyCalculatorGUI
     */
      public PaneltyCalculatorGUI() {
        initComponents();
        penaltyCalculator = new PenaltyCalculator();

        actualDateField = new JTextField(10);
        givenDateField = new JTextField(10);
        calculateButton = new JButton("Calculate Penalty");
        resultLabel = new JLabel();
        flatRateRadioButton = new JRadioButton("Flat Rate");
        percentageRadioButton = new JRadioButton("Percentage");
        strategyButtonGroup = new ButtonGroup();

        flatRateRadioButton.setSelected(true); // Default selection

        strategyButtonGroup.add(flatRateRadioButton);
        strategyButtonGroup.add(percentageRadioButton);

        calculateButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    LocalDate actualDate = LocalDate.parse(actualDateField.getText());
                    LocalDate givenDate = LocalDate.parse(givenDateField.getText());

                    PenaltyStrategy strategy;
                    if (flatRateRadioButton.isSelected()) {
                        strategy = new FlatRatePenalty(50); // Example flat rate penalty
                    } else {
                        strategy = new PercentagePenalty(2.50); // Example percentage-based penalty
                    }

                    penaltyCalculator.setStrategy(strategy);

                    double penalty = penaltyCalculator.calculatePenalty(actualDate, givenDate);
                    resultLabel.setText("Penalty Fee: Rs" + penalty);
                } catch (Exception ex) {
                    resultLabel.setText("Invalid date format!");
                }
            }
        });

              JPanel mainPanel = new JPanel(new GridLayout(5,2));
              mainPanel.setLayout(new GridLayout(6, 1));
        mainPanel.add(new JLabel("Returning Date (yyyy-MM-dd): "));
        mainPanel.add(actualDateField);
        mainPanel.add(new JLabel("Due Date (yyyy-MM-dd): "));
        mainPanel.add(givenDateField);
        mainPanel.add(new JLabel());
        mainPanel.add(flatRateRadioButton);
        mainPanel.add(new JLabel());
        mainPanel.add(percentageRadioButton);
        mainPanel.add(new JLabel());
        mainPanel.add(calculateButton);
        mainPanel.add(resultLabel);
        // Change background color for JPanel
    mainPanel.setBackground (new Color(204, 255, 255));
    mainPanel.setPreferredSize(new Dimension(572, 400));
   



        setTitle("Penalty Calculator");
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setContentPane(mainPanel);
        pack();
        setLocationRelativeTo(null);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(PaneltyCalculatorGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(PaneltyCalculatorGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(PaneltyCalculatorGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(PaneltyCalculatorGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new PaneltyCalculatorGUI().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
