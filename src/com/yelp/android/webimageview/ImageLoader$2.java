package com.yelp.android.webimageview;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;

final class ImageLoader$2
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!TextUtils.equals(paramIntent.getAction(), "android.net.conn.CONNECTIVITY_CHANGE")) {
      return;
    }
    if (paramIntent.getBooleanExtra("noConnectivity", false))
    {
      ImageLoader.access$000().pause();
      return;
    }
    ImageLoader.access$000().resume();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.ImageLoader.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */