package com.yelp.android.aq;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Build.VERSION;

@SuppressLint({"NewApi"})
public class b
{
  public static String a()
  {
    if (Integer.valueOf(Build.VERSION.SDK_INT).intValue() >= 9) {
      return Build.SERIAL;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aq.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */