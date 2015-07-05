package com.comscore.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import com.comscore.analytics.a;
import com.comscore.analytics.h;
import com.comscore.applications.EventType;
import java.net.URLDecoder;
import java.util.HashMap;

public class InstallReferrerReceiver
  extends BroadcastReceiver
{
  public static HashMap<String, String> a(Context paramContext)
  {
    Object localObject = PreferenceManager.getDefaultSharedPreferences(paramContext);
    if (((SharedPreferences)localObject).contains("CS_REFERRER_PREF_KEY"))
    {
      paramContext = ((SharedPreferences)localObject).edit();
      localObject = ((SharedPreferences)localObject).getString("CS_REFERRER_PREF_KEY", "CS_NONE");
      c.a(h.d().toString(), "referrer was set as: '" + (String)localObject + "'");
      paramContext.remove("CS_REFERRER_PREF_KEY");
      paramContext.commit();
      if ((localObject != null) && (((String)localObject).length() > 0) && (!((String)localObject).equals("CS_NONE"))) {
        return a((String)localObject);
      }
    }
    return null;
  }
  
  public static HashMap<String, String> a(String paramString)
  {
    HashMap localHashMap = new HashMap();
    if ((paramString != null) && (paramString.length() > 0))
    {
      paramString = paramString.split("&");
      int j = paramString.length;
      int i = 0;
      if (i < j)
      {
        Object localObject = paramString[i];
        int k = ((String)localObject).indexOf("=");
        if (k >= 0) {
          localHashMap.put(((String)localObject).substring(0, k), ((String)localObject).substring(k + 1));
        }
        for (;;)
        {
          i += 1;
          break;
          localHashMap.put("ns_ap_referrer", localObject);
        }
      }
      if ((localHashMap.size() > 0) && (!localHashMap.containsKey("ns_ap_referrer"))) {
        localHashMap.put("ns_ap_referrer", "1");
      }
    }
    return localHashMap;
  }
  
  private void a(String paramString, Context paramContext)
  {
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext).edit();
    paramContext.putString("CS_REFERRER_PREF_KEY", paramString);
    paramContext.commit();
    c.a("InstallReferrerReceiver", "Stored data");
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    c.a("InstallReferrerReceiver", "onReceive()");
    String str = "CS_NONE";
    Object localObject2 = str;
    Object localObject1;
    if (paramIntent != null)
    {
      localObject2 = str;
      localObject1 = str;
    }
    try
    {
      if (paramIntent.getAction().equals("com.android.vending.INSTALL_REFERRER"))
      {
        localObject1 = str;
        paramIntent = paramIntent.getStringExtra("referrer");
        localObject2 = str;
        if (paramIntent != null)
        {
          localObject1 = str;
          localObject2 = URLDecoder.decode(paramIntent, "UTF-8");
          localObject1 = localObject2;
          paramContext.getSharedPreferences("referrer", 0).edit().putString("referrer", (String)localObject2).commit();
        }
      }
    }
    catch (Exception paramIntent)
    {
      for (;;)
      {
        c.b("InstallReferrerReceiver", "onReceive()" + paramIntent.getMessage());
        localObject2 = localObject1;
      }
      a((String)localObject2, paramContext);
    }
    c.a("InstallReferrerReceiver", "Received referrer: '" + (String)localObject2 + "'");
    if (localObject2 != "CS_NONE")
    {
      paramIntent = h.e();
      if ((paramIntent != null) && (paramIntent.N() != null) && (paramIntent.J() > 0)) {
        paramIntent.a(EventType.HIDDEN, a((String)localObject2), true);
      }
    }
    else
    {
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.InstallReferrerReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */