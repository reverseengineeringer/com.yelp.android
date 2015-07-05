package com.yelp.android.ak;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;

@SuppressLint({"NewApi"})
public class b
{
  public static String a(Context paramContext)
  {
    if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() >= 9)
    {
      paramContext = Build.SERIAL;
      if (paramContext != null) {
        try
        {
          if ((paramContext.length() > 0) && (!paramContext.equals("unknown")) && (paramContext.length() > 3) && (!paramContext.substring(0, 3).equals("***")))
          {
            boolean bool = paramContext.substring(0, 3).equals("000");
            if (!bool) {
              return paramContext;
            }
          }
        }
        catch (Exception paramContext) {}
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ak.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */