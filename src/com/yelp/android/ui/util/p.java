package com.yelp.android.ui.util;

import com.crashlytics.android.d;
import com.yelp.android.ui.activities.ActivityCreateAccount.Gender;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

public class p
{
  public final String a;
  public final String b;
  public final String c;
  public Calendar d;
  public ActivityCreateAccount.Gender e;
  public final String f;
  
  public p(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    f = paramString6;
    paramString1 = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
    if (paramString4 != null) {}
    try
    {
      d = Calendar.getInstance();
      d.setTime(paramString1.parse(paramString4));
      e = ActivityCreateAccount.Gender.NOT_SPECIFIED;
      if (paramString5 == null)
      {
        e = ActivityCreateAccount.Gender.NOT_SPECIFIED;
        return;
      }
    }
    catch (ParseException paramString1)
    {
      do
      {
        for (;;)
        {
          d = null;
          d.a(6, "GoogleAuth", "Birthdate format changed. " + paramString1.getMessage());
        }
        if (paramString5.equalsIgnoreCase("male"))
        {
          e = ActivityCreateAccount.Gender.MALE;
          return;
        }
      } while (!paramString5.equalsIgnoreCase("female"));
      e = ActivityCreateAccount.Gender.FEMALE;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */