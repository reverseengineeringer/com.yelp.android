package com.yelp.android.webimageview;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class ImageCache$1
  extends BroadcastReceiver
{
  ImageCache$1(ImageCache paramImageCache) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    this$0.updateExternalStorageState(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.ImageCache.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */