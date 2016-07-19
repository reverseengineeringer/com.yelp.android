package com.google.android.gms.location.places.ui;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources.Theme;
import android.util.TypedValue;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;

public abstract class c$a
{
  protected final Intent a;
  
  public c$a(String paramString)
  {
    a = new Intent(paramString);
    a.setPackage("com.google.android.gms");
  }
  
  protected Intent a(Activity paramActivity)
    throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException
  {
    Resources.Theme localTheme = paramActivity.getTheme();
    TypedValue localTypedValue1 = new TypedValue();
    TypedValue localTypedValue2 = new TypedValue();
    if ((localTheme.resolveAttribute(16843827, localTypedValue1, true)) && (!a.hasExtra("primary_color"))) {
      a.putExtra("primary_color", data);
    }
    if ((localTheme.resolveAttribute(16843828, localTypedValue2, true)) && (!a.hasExtra("primary_color_dark"))) {
      a.putExtra("primary_color_dark", data);
    }
    GoogleApiAvailability.getInstance().zzak(paramActivity);
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.ui.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */