package com.yelp.android.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class l
{
  public static boolean a(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getNetworkInfo(1);
    return (paramContext != null) && (paramContext.isConnected());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */