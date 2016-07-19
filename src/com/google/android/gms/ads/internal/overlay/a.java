package com.google.android.gms.ads.internal.overlay;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;

@fv
public class a
{
  public boolean a(Context paramContext, Intent paramIntent, o paramo)
  {
    try
    {
      gz.e("Launching an intent: " + paramIntent.toURI());
      s.e().a(paramContext, paramIntent);
      if (paramo != null) {
        paramo.l();
      }
      return true;
    }
    catch (ActivityNotFoundException paramContext)
    {
      gz.d(paramContext.getMessage());
    }
    return false;
  }
  
  public boolean a(Context paramContext, AdLauncherIntentInfoParcel paramAdLauncherIntentInfoParcel, o paramo)
  {
    int i = 0;
    if (paramAdLauncherIntentInfoParcel == null)
    {
      gz.d("No intent data for launcher overlay.");
      return false;
    }
    if (i != null) {
      return a(paramContext, i, paramo);
    }
    Intent localIntent = new Intent();
    if (TextUtils.isEmpty(c))
    {
      gz.d("Open GMSG did not contain a URL.");
      return false;
    }
    if (!TextUtils.isEmpty(d)) {
      localIntent.setDataAndType(Uri.parse(c), d);
    }
    String[] arrayOfString;
    for (;;)
    {
      localIntent.setAction("android.intent.action.VIEW");
      if (!TextUtils.isEmpty(e)) {
        localIntent.setPackage(e);
      }
      if (TextUtils.isEmpty(f)) {
        break label199;
      }
      arrayOfString = f.split("/", 2);
      if (arrayOfString.length >= 2) {
        break;
      }
      gz.d("Could not parse component name from open GMSG: " + f);
      return false;
      localIntent.setData(Uri.parse(c));
    }
    localIntent.setClassName(arrayOfString[0], arrayOfString[1]);
    label199:
    paramAdLauncherIntentInfoParcel = g;
    if (!TextUtils.isEmpty(paramAdLauncherIntentInfoParcel)) {}
    try
    {
      int j = Integer.parseInt(paramAdLauncherIntentInfoParcel);
      i = j;
    }
    catch (NumberFormatException paramAdLauncherIntentInfoParcel)
    {
      for (;;)
      {
        gz.d("Could not parse intent flags.");
      }
    }
    localIntent.addFlags(i);
    return a(paramContext, localIntent, paramo);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */