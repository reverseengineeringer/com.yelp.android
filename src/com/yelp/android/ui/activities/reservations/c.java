package com.yelp.android.ui.activities.reservations;

import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.ReservationFilter;
import com.yelp.android.services.f;
import java.util.Calendar;
import java.util.Date;

public class c
{
  public static ReservationFilter a()
  {
    ReservationFilter localReservationFilter = AppData.b().f().Q();
    if (localReservationFilter != null)
    {
      if (localReservationFilter.e().before(Calendar.getInstance().getTime())) {
        localReservationFilter.a(b());
      }
      return localReservationFilter;
    }
    return new ReservationFilter(2, b());
  }
  
  public static Date b()
  {
    return f.a(Calendar.getInstance(), 15, 19, 23).getTime();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */