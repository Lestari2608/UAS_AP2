/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UAS;

import javax.swing.JOptionPane;

/**
 *
 * @author acer
 */
public class Update {
    KoneksiSQL konek = new KoneksiSQL();

    public void update(int Kode, String namaBarang, int Awal, String Satuan, int Akhir) {

        try {
            konek.koneksi();
            java.sql.Statement statement = konek.con.createStatement();

            String sql_namaBarang = "update swalayan set namabarang = '" + namaBarang + "'where kodebarang = '" + Kode + "'";
            String sql_Awal = "update swalayan set stockawal = '" + Awal + "'where kodebarang = '" + Kode + "'";
            String sql_Satuan = "update swalayan set Satuan = '" + Satuan + "'where kodebarang = '" + Kode + "'";
             String sql_Akhir = "update swalayan set stockakhir = '" + Akhir + "'where kodebarang = '" + Kode + "'";
            String sql_Kode1 = "update swalayan set kodebarang = '" + Kode + "'where namabarang = '" + namaBarang + "'";
            String sql_Kode2 = "update swalayan set kodebarang = '" + Kode + "'where stockawal = '" + Awal + "'";
            String sql_Kode3 = "update swalayan set kodebarang = '" + Kode + "'where stockakhir = '" + Akhir + "'";
            
            
            statement.executeUpdate(sql_Kode1);
            statement.executeUpdate(sql_Kode2);
            statement.executeUpdate(sql_Kode3);
            statement.executeUpdate(sql_namaBarang);
            statement.executeUpdate(sql_Awal);
            statement.executeUpdate(sql_Satuan);
            statement.executeUpdate(sql_Akhir);
            statement.close();

            JOptionPane.showMessageDialog(null, "Berhasil Diupdate");
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, ex);
        }
    }
}
