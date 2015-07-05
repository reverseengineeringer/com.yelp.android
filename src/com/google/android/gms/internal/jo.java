package com.google.android.gms.internal;

import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;

public class jo
{
  private static final Uri No = Uri.parse("http://plus.google.com/");
  private static final Uri Np = No.buildUpon().appendPath("circles").appendPath("find").build();
  
  public static Intent aY(String paramString)
  {
    paramString = Uri.fromParts("package", paramString, null);
    Intent localIntent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
    localIntent.setData(paramString);
    return localIntent;
  }
  
  private static Uri aZ(String paramString)
  {
    return Uri.parse("market://details").buildUpon().appendQueryParameter("id", paramString).build();
  }
  
  public static Intent ba(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(aZ(paramString));
    localIntent.setPackage("com.android.vending");
    localIntent.addFlags(524288);
    return localIntent;
  }
  
  public static Intent hE()
  {
    Intent localIntent = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
    localIntent.setPackage("com.google.android.wearable.app");
    return localIntent;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */