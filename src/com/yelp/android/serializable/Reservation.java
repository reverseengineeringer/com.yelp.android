package com.yelp.android.serializable;

import android.text.TextUtils;
import java.util.Date;

public class Reservation
  extends _Reservation
  implements Comparable<Reservation>
{
  public static final a<Reservation> CREATOR = new Reservation.1();
  
  public int a(Reservation paramReservation)
  {
    Date localDate = a;
    paramReservation = a;
    if (localDate == paramReservation) {
      return 0;
    }
    if ((localDate != null) && (paramReservation != null)) {
      return localDate.compareTo(paramReservation);
    }
    if (localDate == null) {
      return -1;
    }
    if (paramReservation == null) {
      return 1;
    }
    throw new IllegalStateException("What does it mean? What does it mean?");
  }
  
  public void a(int paramInt)
  {
    k = paramInt;
  }
  
  public void a(String paramString)
  {
    i = paramString;
  }
  
  public boolean a()
  {
    return !TextUtils.isEmpty(i);
  }
  
  public boolean b()
  {
    return e();
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Reservation)) {}
    do
    {
      return false;
      paramObject = (Reservation)paramObject;
    } while ((a == null) || (!a.equals(a)) || (!g.equals(g)));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Reservation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */