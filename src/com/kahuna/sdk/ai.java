package com.kahuna.sdk;

import android.content.Context;
import android.util.Log;
import java.util.Map;

public class ai
{
  private static long a = -1L;
  
  private static int a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramString.length();
    int i = 0;
    while (i < j)
    {
      char c = paramString.charAt(i);
      if (Character.isDigit(c)) {
        localStringBuilder.append(c);
      }
      i += 1;
    }
    return Integer.parseInt(localStringBuilder.toString());
  }
  
  protected static void a(Context paramContext)
  {
    try
    {
      String str = ag.j(paramContext);
      if (!str.equalsIgnoreCase(h.o()))
      {
        a(paramContext, str, h.o());
        ag.c(h.o(), paramContext);
      }
      return;
    }
    catch (Exception paramContext)
    {
      while (!h.a) {}
      Log.d("KahunaAnalytics", "Exception checking SDK upgrade: " + paramContext);
    }
  }
  
  private static void a(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      int i = a(paramString1);
      if (i <= 459)
      {
        if (h.a) {
          Log.d("KahunaAnalytics", "Upgrading from SDK version " + paramString1 + " deleting old SDK Config.");
        }
        ah.a(paramContext, new ah());
      }
      if (i <= 514)
      {
        if (h.a) {
          Log.d("KahunaAnalytics", "Upgrading from SDK version " + paramString1 + " Setting old config version to 0.");
        }
        paramString2 = ah.a(paramContext);
        paramString2.a(0L);
        ah.a(paramContext, paramString2);
      }
      if ((i != 0) && (i <= 516) && (!ag.a(h.a(), paramContext).isEmpty()))
      {
        if (h.a) {
          Log.d("KahunaAnalytics", "Upgrading from SDK version " + paramString1 + " with actively monitored regions. Wiping out regions, and setting delay to ignore first enter geofence.");
        }
        ag.a(h.a(), null, paramContext);
        a = System.currentTimeMillis() / 1000L + 86400L;
      }
      if (i <= 550)
      {
        if (h.a) {
          Log.d("KahunaAnalytics", "Upgrading from SDK version " + paramString1 + " Migrating user credentials and attributes to new storage format.");
        }
        paramString2 = ag.a(paramContext, "user_credentials", String.class);
        Map localMap = ag.a(paramContext, "user_attributes", String.class);
        ag.a(paramString2, paramContext);
        ag.b(localMap, paramContext);
      }
      if (i <= 556)
      {
        if (h.a) {
          Log.d("KahunaAnalytics", "Upgrading from SDK version " + paramString1 + " re-calculating the event object checksums.");
        }
        ag.a(ag.a(paramContext, true).a(), paramContext);
      }
      return;
    }
    catch (Exception paramContext)
    {
      while (!h.a) {}
      Log.d("KahunaAnalytics", "Exception performing upgrade script: " + paramContext);
    }
  }
  
  protected static boolean a(boolean paramBoolean)
  {
    long l = System.currentTimeMillis() / 1000L;
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (a > 0L)
    {
      bool1 = bool2;
      if (a > l) {
        bool1 = true;
      }
    }
    if (paramBoolean) {
      a = -1L;
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */