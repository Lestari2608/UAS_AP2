/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pertemuan10;

import java.sql.Statement;
import static javafx.scene.input.KeyCode.L;
import static javafx.scene.input.KeyCode.P;
import javax.swing.JOptionPane;

/**
 *
 * @author acer
 */
public class insert {

    DatabaseConnection konek = new DatabaseConnection();

    public void insert(int nim, String nama, String alamat, String jenis) {

        try {
            konek.koneksi();
            Statement statement = konek.con.createStatement();

            String sql = "insert into identitas values('" + nim + "','" + nama + "','" + alamat + "','" + jenis + "')";

            statement.executeUpdate(sql);
            statement.close();

// kemudian data yang disisipkan akan saya tampilkan lewat textArea 
//menampilkan.setText(mah_nim.getText()+"\n"+mah_nama.getText()+"\n"+mah_alamat.getText()+"\n"+mah_fak_id.getText()+"\n"+jenis);
            JOptionPane.showMessageDialog(null, "Berhasil Disimpan");
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex);
        }
    }
}
