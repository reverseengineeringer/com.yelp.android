package com.yelp.android.au;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class d
  implements a, c
{
  private b a;
  
  public d(Context paramContext)
  {
    paramContext.getApplicationContext().registerReceiver(new e(this), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
  }
  
  public void a(b paramb)
  {
    a = paramb;
  }
  
  public boolean a(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (paramContext != null) && (paramContext.isConnectedOrConnecting());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.au.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */