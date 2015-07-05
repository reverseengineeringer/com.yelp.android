package com.yelp.android.ui.activities.friendcheckins;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

public final class CommentOnCheckIn$ConnectivityReceiver
  extends BroadcastReceiver
{
  public static final IntentFilter a = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
  private CommentOnCheckIn b;
  private boolean c;
  
  public void a()
  {
    if (b != null)
    {
      b.unregisterReceiver(this);
      b = null;
      c = false;
    }
  }
  
  public void a(CommentOnCheckIn paramCommentOnCheckIn)
  {
    if (b != paramCommentOnCheckIn)
    {
      b = paramCommentOnCheckIn;
      b.registerReceiver(this, a);
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((b != null) && ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramIntent.getAction())))
    {
      if ((!paramIntent.getBooleanExtra("noConnectivity", false)) || (!c)) {
        break label49;
      }
      b.c();
      c = false;
    }
    label49:
    while (c) {
      return;
    }
    c = true;
    b.b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.CommentOnCheckIn.ConnectivityReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */