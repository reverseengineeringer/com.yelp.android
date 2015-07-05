package com.yelp.android.ui.activities;

import android.os.Message;
import android.view.View;
import com.yelp.android.webimageview.ImageLoaderHandler;

class b
  extends ImageLoaderHandler
{
  b(ActivityBadge paramActivityBadge, Object paramObject)
  {
    super(paramObject);
  }
  
  public void handleMessage(Message paramMessage)
  {
    ActivityBadge.a(a).setVisibility(8);
    super.handleMessage(paramMessage);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */