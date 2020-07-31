/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UAS;

import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author acer
 */
public class Insert {
    KoneksiSQL konek = new KoneksiSQL();

    public void insert(String Nama, String Alamat, String Lahir , String No) {

        try {
            konek.koneksi();
            Statement statement = konek.con.createStatement();

            String sql = "insert datakaryawan values('" + Nama + "','" + Alamat + "','" + Lahir + "','" + No + "')";

            statement.executeUpdate(sql);
            statement.close();

// kemudian data yang disisipkan akan saya tampilkan lewat textArea 
//menampilkan.setText(mah_nim.getText()+"\n"+mah_nama.getText()+"\n"+mah_alamat.getText()+"\n"+mah_fak_id.getText()+"\n"+jenis);
            JOptionPane.showMessageDialog(null, "Berhasil Ditambahkan");
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex);
        }
    }
}
