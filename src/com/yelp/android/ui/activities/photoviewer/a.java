package com.yelp.android.ui.activities.photoviewer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.yelp.android.serializable.Media;
import com.yelp.android.util.ObjectDirtyEvent;
import java.util.List;

class a
  extends BroadcastReceiver
{
  a(ActivityMediaViewer paramActivityMediaViewer) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = (Media)ObjectDirtyEvent.a(paramIntent);
    if (ActivityMediaViewer.a(a).remove(paramContext)) {
      ActivityMediaViewer.b(a).notifyDataSetChanged();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */