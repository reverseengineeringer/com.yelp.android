package com.yelp.android.ui.activities.photoviewer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Media;
import com.yelp.android.util.ObjectDirtyEvent;

class MediaViewer$1
  extends BroadcastReceiver
{
  MediaViewer$1(MediaViewer paramMediaViewer) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Media)ObjectDirtyEvent.a(paramIntent);
    if (a.c.b(paramContext)) {
      a.c.c();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.MediaViewer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */