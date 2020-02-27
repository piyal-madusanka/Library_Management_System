
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDate;
import java.util.Calendar;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author IL
 */
public class NewMain {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
//       String today = new SimpleDateFormat("MMM d, yyyy").format(Calendar.getInstance().getTime());
//
//       Date dt=new Date("Feb 4,2020");
//        Calendar c = Calendar.getInstance();
//        c.add(Calendar.DAY_OF_YEAR, 12);
//        Date exp = c.getTime();
//        String expire = new SimpleDateFormat("MMM d, yyyy").format(exp);
//        System.out.println(today+"  "+expire);
        Date dt=new Date("Jan 10,2020");
        Date today=Calendar.getInstance().getTime();
       dt.compareTo(Calendar.getInstance().getTime());
        
        int x=(int) (today.getTime() - dt.getTime())/(1000*60*60*24);
        System.out.println( today.getTime());
        Duration d=Duration.between(dt.toInstant(),today.toInstant());
        System.out.println(d.toDays());
        
        HomePage hp = new HomePage();
        hp.setVisible(true);
    }
    
}
