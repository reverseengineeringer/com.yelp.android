package com.yelp.android.ui.activities.drawer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Set;

class m
  extends BroadcastReceiver
{
  m(DrawerFragment paramDrawerFragment) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getCategories().contains("com.yelp.android.messages.count.update")) {
      DrawerFragment.l(a);
    }
    while (!paramIntent.getCategories().contains("com.yelp.android.notifications.count.update")) {
      return;
    }
    DrawerFragment.m(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.drawer.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */