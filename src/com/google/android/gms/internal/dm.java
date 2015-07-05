package com.google.android.gms.internal;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;

@ey
public final class dm
{
  public static boolean a(Context paramContext, do paramdo, dv paramdv)
  {
    if (paramdo == null)
    {
      gr.W("No intent data for launcher overlay.");
      return false;
    }
    Intent localIntent = new Intent();
    if (TextUtils.isEmpty(rH))
    {
      gr.W("Open GMSG did not contain a URL.");
      return false;
    }
    if (!TextUtils.isEmpty(mimeType)) {
      localIntent.setDataAndType(Uri.parse(rH), mimeType);
    }
    String[] arrayOfString;
    for (;;)
    {
      localIntent.setAction("android.intent.action.VIEW");
      if (!TextUtils.isEmpty(packageName)) {
        localIntent.setPackage(packageName);
      }
      if (TextUtils.isEmpty(rI)) {
        break label172;
      }
      arrayOfString = rI.split("/", 2);
      if (arrayOfString.length >= 2) {
        break;
      }
      gr.W("Could not parse component name from open GMSG: " + rI);
      return false;
      localIntent.setData(Uri.parse(rH));
    }
    localIntent.setClassName(arrayOfString[0], arrayOfString[1]);
    try
    {
      label172:
      gr.V("Launching an intent: " + localIntent);
      paramContext.startActivity(localIntent);
      paramdv.af();
      return true;
    }
    catch (ActivityNotFoundException paramContext)
    {
      gr.W(paramContext.getMessage());
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */