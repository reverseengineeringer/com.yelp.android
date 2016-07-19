package com.yelp.android.appdata;

import android.content.Context;
import android.content.pm.PackageManager;

public class f$a
{
  protected final Context a;
  protected boolean b;
  
  public f$a(Context paramContext)
  {
    a = paramContext;
    b = paramContext.getPackageManager().hasSystemFeature("android.hardware.camera");
  }
  
  public boolean a()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */