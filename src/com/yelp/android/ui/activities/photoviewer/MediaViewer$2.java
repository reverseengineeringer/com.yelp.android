package com.yelp.android.ui.activities.photoviewer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Media;
import com.yelp.android.util.ObjectDirtyEvent;

class MediaViewer$2
  extends BroadcastReceiver
{
  MediaViewer$2(MediaViewer paramMediaViewer) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Media)ObjectDirtyEvent.a(paramIntent);
    a.e.a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.MediaViewer.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */