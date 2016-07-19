package com.yelp.android.cv;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import jp.line.android.sdk.Phase;
import jp.line.android.sdk.activity.WebLoginActivity;

public final class b
  implements jp.line.android.sdk.a
{
  private boolean a;
  private Context b;
  private int c;
  private String d;
  private Phase e;
  private int f;
  private String g;
  private String h;
  private Class<? extends Activity> i;
  private Class<? extends Activity> j;
  private String k;
  private jp.line.android.sdk.api.a l;
  private jp.line.android.sdk.login.a m;
  
  private final void k()
  {
    if (!a) {
      try
      {
        if (!a) {
          throw new RuntimeException("LineSdkConfig was not initialized.");
        }
      }
      finally {}
    }
  }
  
  public final Context a()
  {
    k();
    return b;
  }
  
  public final void a(Context paramContext, int paramInt, Phase paramPhase, jp.line.android.sdk.b paramb)
  {
    Object localObject;
    if (!a)
    {
      for (;;)
      {
        try
        {
          boolean bool = a;
          if (bool) {
            break label369;
          }
          try
          {
            b = paramContext.getApplicationContext();
            localObject = paramContext.getPackageName();
            localObject = getPackageManagergetApplicationInfo128metaData;
            if (paramInt > 0)
            {
              c = paramInt;
              if (c >= 0) {
                break;
              }
              throw new NullPointerException("Metadata of jp.line.sdk.ChannelId was not found from AndroidManifest.xml");
            }
          }
          catch (PackageManager.NameNotFoundException paramContext)
          {
            throw new RuntimeException(paramContext);
          }
          c = ((Bundle)localObject).getInt("jp.line.sdk.ChannelId", -1);
        }
        finally {}
      }
      d = ((Bundle)localObject).getString("jp.line.sdk.AuthScheme");
      if ((d == null) || (d.length() <= 0)) {
        throw new NullPointerException("Metadata of jp.line.sdk.AuthScheme was not found from AndroidManifest.xml");
      }
      if (paramPhase == null) {
        break label372;
      }
      e = paramPhase;
      paramPhase = 1.a;
      e.ordinal();
      g = "https://access.line.me";
      h = "https://api.line.me";
      paramPhase = ((Bundle)localObject).getString("jp.line.sdk.ActivityClassThatFiresWhenProcessWasKilled");
      if ((paramPhase != null) && (paramPhase.length() > 0))
      {
        if (!paramPhase.startsWith(".")) {
          break label516;
        }
        paramPhase = paramContext.getPackageName() + paramPhase;
      }
    }
    label369:
    label372:
    label516:
    for (;;)
    {
      try
      {
        i = Class.forName(paramPhase);
        paramPhase = ((Bundle)localObject).getString("jp.line.sdk.WebLoginActivityClass");
        if ((paramPhase != null) && (paramPhase.length() > 0))
        {
          if (!paramPhase.startsWith(".")) {
            continue;
          }
          paramContext = paramContext.getPackageName() + paramPhase;
        }
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        try
        {
          j = Class.forName(paramContext);
          l = paramb.a(this);
          m = paramb.b(this);
          k = "3.1.16";
          paramInt = c;
          paramContext = d;
          paramContext = e;
          paramInt = f;
          paramContext = g;
          paramContext = h;
          paramContext = i;
          paramContext = k;
          a = true;
          return;
          paramPhase = ((Bundle)localObject).getString("jp.line.sdk.Phase");
          if (paramPhase != null)
          {
            if ("beta".equalsIgnoreCase(paramPhase)) {
              e = Phase.BETA;
            }
          }
          else
          {
            if (e != null) {
              break;
            }
            e = Phase.REAL;
            break;
          }
          if (!"rc".equalsIgnoreCase(paramPhase)) {
            continue;
          }
          e = Phase.RC;
          continue;
          localClassNotFoundException = localClassNotFoundException;
          new RuntimeException(paramPhase + " is not found.", localClassNotFoundException);
        }
        catch (ClassNotFoundException paramPhase)
        {
          new RuntimeException(paramContext + " is not found.", paramPhase);
          continue;
        }
        j = WebLoginActivity.class;
        continue;
        paramContext = paramPhase;
      }
    }
  }
  
  public final jp.line.android.sdk.api.a b()
  {
    k();
    return l;
  }
  
  public final jp.line.android.sdk.login.a c()
  {
    k();
    return m;
  }
  
  public final int d()
  {
    k();
    return c;
  }
  
  public final String e()
  {
    k();
    return d;
  }
  
  public final String f()
  {
    k();
    return g;
  }
  
  public final String g()
  {
    k();
    return h;
  }
  
  public final Class<? extends Activity> h()
  {
    k();
    return i;
  }
  
  public final Class<? extends Activity> i()
  {
    k();
    return j;
  }
  
  public final String j()
  {
    k();
    return k;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cv.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */