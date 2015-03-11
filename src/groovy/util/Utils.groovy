package util

import java.util.Calendar;
import java.util.Date;


class Utils {
	
	static cumpleMes (Date cumple, String mes, String año ){
		Calendar aux = this.DateToCalendar(cumple)
		if (((Integer.toString(aux.get(Calendar.MONTH)+1)).equals(mes))
			&&((Integer.toString(aux.get(Calendar.YEAR)).equals(año)) )) {
					  
			  return true
		}
		return false
	}
	
	static Calendar DateToCalendar (Date date){
		
	   Calendar cal = Calendar.getInstance();
	   cal.setTime(date);
	   return cal;
	   
	 }

}
