package com.google.android.gms.ads.internal.purchase;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import org.json.JSONException;
import org.json.JSONObject;

@fv
public class i
{
  public int a(Intent paramIntent)
  {
    if (paramIntent == null) {
      return 5;
    }
    paramIntent = paramIntent.getExtras().get("RESPONSE_CODE");
    if (paramIntent == null)
    {
      gz.d("Intent with no response code, assuming OK (known issue)");
      return 0;
    }
    if ((paramIntent instanceof Integer)) {
      return ((Integer)paramIntent).intValue();
    }
    if ((paramIntent instanceof Long)) {
      return (int)((Long)paramIntent).longValue();
    }
    gz.d("Unexpected type for intent response code. " + paramIntent.getClass().getName());
    return 5;
  }
  
  public int a(Bundle paramBundle)
  {
    paramBundle = paramBundle.get("RESPONSE_CODE");
    if (paramBundle == null)
    {
      gz.d("Bundle with null response code, assuming OK (known issue)");
      return 0;
    }
    if ((paramBundle instanceof Integer)) {
      return ((Integer)paramBundle).intValue();
    }
    if ((paramBundle instanceof Long)) {
      return (int)((Long)paramBundle).longValue();
    }
    gz.d("Unexpected type for intent response code. " + paramBundle.getClass().getName());
    return 5;
  }
  
  public String a(String paramString)
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
      gz.d("Fail to parse purchase data");
    }
    return null;
  }
  
  public void a(final Context paramContext)
  {
    ServiceConnection local1 = new ServiceConnection()
    {
      public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
      {
        boolean bool = false;
        paramAnonymousComponentName = new b(paramContext.getApplicationContext(), false);
        paramAnonymousComponentName.a(paramAnonymousIBinder);
        int i = paramAnonymousComponentName.a(3, paramContext.getPackageName(), "inapp");
        paramAnonymousIBinder = s.h();
        if (i == 0) {
          bool = true;
        }
        paramAnonymousIBinder.b(bool);
        paramContext.unbindService(this);
        paramAnonymousComponentName.a();
      }
      
      public void onServiceDisconnected(ComponentName paramAnonymousComponentName) {}
    };
    Intent localIntent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
    localIntent.setPackage("com.android.vending");
    paramContext.bindService(localIntent, local1, 1);
  }
  
  public void a(Context paramContext, boolean paramBoolean, GInAppPurchaseManagerInfoParcel paramGInAppPurchaseManagerInfoParcel)
  {
    Intent localIntent = new Intent();
    localIntent.setClassName(paramContext, "com.google.android.gms.ads.purchase.InAppPurchaseActivity");
    localIntent.putExtra("com.google.android.gms.ads.internal.purchase.useClientJar", paramBoolean);
    GInAppPurchaseManagerInfoParcel.a(localIntent, paramGInAppPurchaseManagerInfoParcel);
    s.e().a(paramContext, localIntent);
  }
  
  public String b(Intent paramIntent)
  {
    if (paramIntent == null) {
      return null;
    }
    return paramIntent.getStringExtra("INAPP_PURCHASE_DATA");
  }
  
  public String b(String paramString)
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
      gz.d("Fail to parse purchase data");
    }
    return null;
  }
  
  public String c(Intent paramIntent)
  {
    if (paramIntent == null) {
      return null;
    }
    return paramIntent.getStringExtra("INAPP_DATA_SIGNATURE");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */