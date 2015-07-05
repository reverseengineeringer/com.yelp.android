package com.crashlytics.android;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.crashlytics.android.internal.bd;
import com.crashlytics.android.internal.ci;
import com.crashlytics.android.internal.cl;

final class ac
{
  public final String a;
  public final int b;
  public final int c;
  public final int d;
  
  private ac(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    a = paramString;
    b = paramInt1;
    c = paramInt2;
    d = paramInt3;
  }
  
  public static ac a(Context paramContext, String paramString)
  {
    if (paramString != null) {
      try
      {
        int i = bd.h(paramContext);
        cl.a().b().a("Crashlytics", "App icon resource ID is " + i);
        BitmapFactory.Options localOptions = new BitmapFactory.Options();
        inJustDecodeBounds = true;
        BitmapFactory.decodeResource(paramContext.getResources(), i, localOptions);
        paramContext = new ac(paramString, i, outWidth, outHeight);
        return paramContext;
      }
      catch (Exception paramContext)
      {
        cl.a().b().a("Crashlytics", "Failed to load icon", paramContext);
      }
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */