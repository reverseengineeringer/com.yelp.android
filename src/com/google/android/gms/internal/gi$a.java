package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class gi$a
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("android.intent.action.USER_PRESENT".equals(paramIntent.getAction())) {
      gi.y(true);
    }
    while (!"android.intent.action.SCREEN_OFF".equals(paramIntent.getAction())) {
      return;
    }
    gi.y(false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gi.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */