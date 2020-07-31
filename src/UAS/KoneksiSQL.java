/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package UAS;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;


/**
 *
 * @author acer
 */
public class KoneksiSQL {
     public static void main(String[] args) {
        
        KoneksiSQL testKoneksiSQL = new  KoneksiSQL();
         testKoneksiSQL.koneksi();
    }
    String statusKoneksi;
    Connection con=null;
    public void koneksi()
    {
        try
        {
            String connectionURL = "jdbc:mysql://localhost/barang";
            String username = "root";
            String password = "";
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection(connectionURL, username, password);
            //JOptionPane.showMessageDialog(null, "sukses koneksi");
            statusKoneksi ="Berhasil";
        }

        catch(Exception e)
        {
        //JOptionPane.showMessageDialog(null, e);
        //System.exit(0);
        statusKoneksi ="Gagal";
        }
    }
}
