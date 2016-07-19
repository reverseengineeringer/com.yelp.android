package com.yelp.android.bq;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class c$1
  extends BroadcastReceiver
{
  c$1(c paramc) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (c.a(a) == null) {
      return;
    }
    c.a(a).a(a.a(paramContext));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bq.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */