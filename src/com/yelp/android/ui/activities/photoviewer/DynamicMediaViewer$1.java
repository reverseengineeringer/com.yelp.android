package com.yelp.android.ui.activities.photoviewer;

import com.yelp.android.appdata.webrequests.MediaRequest;

class DynamicMediaViewer$1
  implements Runnable
{
  DynamicMediaViewer$1(DynamicMediaViewer paramDynamicMediaViewer, int paramInt) {}
  
  public void run()
  {
    if ((b.c.d() < b.c.b()) && (a >= DynamicMediaViewer.a(b)) && (b.a != null) && (b.a.v()))
    {
      b.a = b.a.d(42);
      DynamicMediaViewer.a(b, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.DynamicMediaViewer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */