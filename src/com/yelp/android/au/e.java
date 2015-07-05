package com.yelp.android.au;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class e
  extends BroadcastReceiver
{
  e(d paramd) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (d.a(a) == null) {
      return;
    }
    d.a(a).a(a.a(paramContext));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.au.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */