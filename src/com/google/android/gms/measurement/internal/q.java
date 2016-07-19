package com.google.android.gms.measurement.internal;

import android.os.Build;
import android.os.Build.VERSION;
import java.util.Calendar;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public class q
  extends aj
{
  private long a;
  private String b;
  
  q(ag paramag)
  {
    super(paramag);
  }
  
  protected void a()
  {
    Object localObject = Calendar.getInstance();
    TimeUnit localTimeUnit = TimeUnit.MINUTES;
    int i = ((Calendar)localObject).get(15);
    a = localTimeUnit.convert(((Calendar)localObject).get(16) + i, TimeUnit.MILLISECONDS);
    localObject = Locale.getDefault();
    b = (((Locale)localObject).getLanguage().toLowerCase(Locale.ENGLISH) + "-" + ((Locale)localObject).getCountry().toLowerCase(Locale.ENGLISH));
  }
  
  public String b()
  {
    G();
    return Build.MODEL;
  }
  
  public String c()
  {
    G();
    return Build.VERSION.RELEASE;
  }
  
  public long v()
  {
    G();
    return a;
  }
  
  public String w()
  {
    G();
    return b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */