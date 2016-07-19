package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class hd$a
  extends BroadcastReceiver
{
  private hd$a(hd paramhd) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.USER_PRESENT".equals(paramIntent.getAction())) {
      hd.a(a, true);
    }
    while (!"android.intent.action.SCREEN_OFF".equals(paramIntent.getAction())) {
      return;
    }
    hd.a(a, false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hd.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */