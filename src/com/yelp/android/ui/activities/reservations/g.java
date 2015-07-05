package com.yelp.android.ui.activities.reservations;

import android.app.TimePickerDialog.OnTimeSetListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TimePicker;
import com.yelp.android.serializable.Reservation;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

final class g
  implements TimePickerDialog.OnTimeSetListener, View.OnClickListener
{
  Calendar a;
  final DateFormat b;
  private final FindReservation c;
  
  public g(FindReservation paramFindReservation, Calendar paramCalendar)
  {
    c = paramFindReservation;
    a = paramCalendar;
    b = Reservation.getDatestampForDisplay(SimpleDateFormat.getTimeInstance(3));
  }
  
  public void a()
  {
    FindReservation.d(c).setText(b.format(a.getTime()));
  }
  
  public void onClick(View paramView)
  {
    c.showDialog(2);
  }
  
  public void onTimeSet(TimePicker paramTimePicker, int paramInt1, int paramInt2)
  {
    a.set(11, paramInt1);
    a.set(12, paramInt2);
    a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */