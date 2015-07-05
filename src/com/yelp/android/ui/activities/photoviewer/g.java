package com.yelp.android.ui.activities.photoviewer;

import com.yelp.android.appdata.webrequests.MediaRequest;
import java.util.List;

class g
  implements Runnable
{
  g(ActivityMediaViewer paramActivityMediaViewer, int paramInt) {}
  
  public void run()
  {
    if ((ActivityMediaViewer.a(b).size() < ActivityMediaViewer.b(b).getCount()) && (a >= ActivityMediaViewer.f(b)) && (ActivityMediaViewer.g(b) != null) && (ActivityMediaViewer.g(b).isCompleted()))
    {
      ActivityMediaViewer.a(b, ActivityMediaViewer.g(b).next(42));
      ActivityMediaViewer.a(b, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */