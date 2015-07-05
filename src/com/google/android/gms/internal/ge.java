package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import java.math.BigInteger;
import java.util.Locale;

@ey
public final class ge
{
  private static final Object ut = new Object();
  private static String wt;
  
  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    synchronized (ut)
    {
      if ((wt == null) && (!TextUtils.isEmpty(paramString1))) {
        b(paramContext, paramString1, paramString2);
      }
      paramContext = wt;
      return paramContext;
    }
  }
  
  private static void b(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      paramString2 = paramContext.createPackageContext(paramString2, 3).getClassLoader();
      Class localClass = Class.forName("com.google.ads.mediation.MediationAdapter", false, paramString2);
      paramContext = new BigInteger(new byte[1]);
      String[] arrayOfString = paramString1.split(",");
      int i = 0;
      while (i < arrayOfString.length)
      {
        paramString1 = paramContext;
        if (gi.a(paramString2, localClass, arrayOfString[i])) {
          paramString1 = paramContext.setBit(i);
        }
        i += 1;
        paramContext = paramString1;
      }
    }
    catch (Throwable paramContext)
    {
      wt = "err";
      return;
    }
    tmp93_90[0] = paramContext;
    wt = String.format(Locale.US, "%X", tmp93_90);
  }
  
  public static String dr()
  {
    synchronized (ut)
    {
      String str = wt;
      return str;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */