package com.yelp.android.serializable;

import android.text.TextUtils;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

public class Reservation
  extends _Reservation
  implements Comparable<Reservation>
{
  public static final ah<Reservation> CREATOR = new cj();
  
  public static DateFormat getDatestampForDisplay(String paramString)
  {
    return getDatestampForDisplay(new SimpleDateFormat(paramString, Locale.getDefault()));
  }
  
  public static DateFormat getDatestampForDisplay(DateFormat paramDateFormat)
  {
    paramDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
    return paramDateFormat;
  }
  
  public int compareTo(Reservation paramReservation)
  {
    Date localDate = mDatestamp;
    paramReservation = mDatestamp;
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
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Reservation)) {}
    do
    {
      return false;
      paramObject = (Reservation)paramObject;
    } while ((mDatestamp == null) || (!mDatestamp.equals(mDatestamp)) || (!mConfirmationNumber.equals(mConfirmationNumber)));
    return true;
  }
  
  public boolean hasCreditCardHold()
  {
    return getCreditCardHold();
  }
  
  public boolean isLocked()
  {
    return !TextUtils.isEmpty(mTransactionLockId);
  }
  
  public void setConfirmationNumber(String paramString)
  {
    mConfirmationNumber = paramString;
  }
  
  public void setPartySize(int paramInt)
  {
    mPartySize = paramInt;
  }
  
  public void setQueryId(String paramString)
  {
    mQueryId = paramString;
  }
  
  public void setTransactionLockId(String paramString)
  {
    mTransactionLockId = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Reservation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */