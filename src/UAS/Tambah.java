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
public class Tambah {
    KoneksiSQL konek = new KoneksiSQL();

    public void tambah(int Kode, String namaBarang, int Awal , String Satuan ,int akhirBulan) {

        try {
            konek.koneksi();
            Statement statement = konek.con.createStatement();

            String sql = "insert swalayan values('" + Kode + "','" + namaBarang + "','" + Awal + "','" + Satuan + "','" + akhirBulan + "')";

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
