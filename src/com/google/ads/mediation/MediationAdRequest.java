package com.google.ads.mediation;

import android.location.Location;
import com.google.ads.AdRequest.Gender;
import java.util.Calendar;
import java.util.Date;
import java.util.Set;

@Deprecated
public final class MediationAdRequest
{
  private final Date d;
  private final AdRequest.Gender e;
  private final Set<String> f;
  private final boolean g;
  private final Location h;
  
  public MediationAdRequest(Date paramDate, AdRequest.Gender paramGender, Set<String> paramSet, boolean paramBoolean, Location paramLocation)
  {
    d = paramDate;
    e = paramGender;
    f = paramSet;
    g = paramBoolean;
    h = paramLocation;
  }
  
  public Integer getAgeInYears()
  {
    if (d != null)
    {
      Calendar localCalendar1 = Calendar.getInstance();
      Calendar localCalendar2 = Calendar.getInstance();
      localCalendar1.setTime(d);
      Integer localInteger2 = Integer.valueOf(localCalendar2.get(1) - localCalendar1.get(1));
      Integer localInteger1;
      if (localCalendar2.get(2) >= localCalendar1.get(2))
      {
        localInteger1 = localInteger2;
        if (localCalendar2.get(2) == localCalendar1.get(2))
        {
          localInteger1 = localInteger2;
          if (localCalendar2.get(5) >= localCalendar1.get(5)) {}
        }
      }
      else
      {
        localInteger1 = Integer.valueOf(localInteger2.intValue() - 1);
      }
      return localInteger1;
    }
    return null;
  }
  
  public Date getBirthday()
  {
    return d;
  }
  
  public AdRequest.Gender getGender()
  {
    return e;
  }
  
  public Set<String> getKeywords()
  {
    return f;
  }
  
  public Location getLocation()
  {
    return h;
  }
  
  public boolean isTesting()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.MediationAdRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */