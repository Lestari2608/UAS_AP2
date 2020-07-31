/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pertemuan10;

import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author acer
 */
public class Update {
    DatabaseConnection konek = new DatabaseConnection();

    public void update (int nim, String nama, String alamat, String jenis) {

        try {
            konek.koneksi();
            Statement statement = konek.con.createStatement();

             String sql_nama = "update identitas set nama = '" + nama + "'where nim = '" + nim + "'";
            String sql_alamat = "update identitas set alamat = '" + alamat + "'where nim = '" + nim + "'";
            String sql_jenis = "update identitas set jeniskelamin = '" + jenis + "'where nim = '" + nim + "'";
            String sql_nim1 = "update identitas set nim = '" + nim + "'where nama = '" + nama + "'";
            String sql_nim2 = "update identitas set nim = '" + nim + "'where alamat = '" + alamat + "'";

            statement.executeUpdate(sql_nim1);
            statement.executeUpdate(sql_nim2);
            statement.executeUpdate(sql_nama);
            statement.executeUpdate(sql_alamat);
            statement.executeUpdate(sql_jenis);
            statement.close();

            JOptionPane.showMessageDialog(null, "Berhasil Diupdate");
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex);
        }
    }
}
