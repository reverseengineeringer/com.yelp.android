package com.yelp.android.ui.activities.reservations;

import android.annotation.TargetApi;
import android.app.DatePickerDialog.OnDateSetListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.DatePicker;
import com.yelp.android.appdata.n;
import com.yelp.android.serializable.Reservation;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

final class f
  implements DatePickerDialog.OnDateSetListener, View.OnClickListener
{
  final FindReservation a;
  Calendar b;
  final java.text.DateFormat c;
  
  @TargetApi(18)
  public f(FindReservation paramFindReservation, Calendar paramCalendar)
  {
    a = paramFindReservation;
    b = paramCalendar;
    if (n.a(18))
    {
      c = Reservation.getDatestampForDisplay(android.text.format.DateFormat.getBestDateTimePattern(Locale.getDefault(), "EE, MMM d"));
      return;
    }
    c = Reservation.getDatestampForDisplay(a.getString(2131165675));
  }
  
  public void a()
  {
    Date localDate = b.getTime();
    FindReservation.e(a).setText(c.format(localDate));
  }
  
  public void onClick(View paramView)
  {
    a.showDialog(1);
  }
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3)
  {
    paramDatePicker = b;
    paramDatePicker.set(1, paramInt1);
    paramDatePicker.set(2, paramInt2);
    paramDatePicker.set(5, paramInt3);
    a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */