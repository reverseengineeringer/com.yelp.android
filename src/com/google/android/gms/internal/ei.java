package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import org.json.JSONException;
import org.json.JSONObject;

@ey
public final class ei
{
  public static String D(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = new JSONObject(paramString).getString("developerPayload");
      return paramString;
    }
    catch (JSONException paramString)
    {
      gr.W("Fail to parse purchase data");
    }
    return null;
  }
  
  public static String E(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    try
    {
      paramString = new JSONObject(paramString).getString("purchaseToken");
      return paramString;
    }
    catch (JSONException paramString)
    {
      gr.W("Fail to parse purchase data");
    }
    return null;
  }
  
  public static int b(Bundle paramBundle)
  {
    paramBundle = paramBundle.get("RESPONSE_CODE");
    if (paramBundle == null)
    {
      gr.W("Bundle with null response code, assuming OK (known issue)");
      return 0;
    }
    if ((paramBundle instanceof Integer)) {
      return ((Integer)paramBundle).intValue();
    }
    if ((paramBundle instanceof Long)) {
      return (int)((Long)paramBundle).longValue();
    }
    gr.W("Unexpected type for intent response code. " + paramBundle.getClass().getName());
    return 5;
  }
  
  public static int d(Intent paramIntent)
  {
    paramIntent = paramIntent.getExtras().get("RESPONSE_CODE");
    if (paramIntent == null)
    {
      gr.W("Intent with no response code, assuming OK (known issue)");
      return 0;
    }
    if ((paramIntent instanceof Integer)) {
      return ((Integer)paramIntent).intValue();
    }
    if ((paramIntent instanceof Long)) {
      return (int)((Long)paramIntent).longValue();
    }
    gr.W("Unexpected type for intent response code. " + paramIntent.getClass().getName());
    return 5;
  }
  
  public static String e(Intent paramIntent)
  {
    if (paramIntent == null) {
      return null;
    }
    return paramIntent.getStringExtra("INAPP_PURCHASE_DATA");
  }
  
  public static String f(Intent paramIntent)
  {
    if (paramIntent == null) {
      return null;
    }
    return paramIntent.getStringExtra("INAPP_DATA_SIGNATURE");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */