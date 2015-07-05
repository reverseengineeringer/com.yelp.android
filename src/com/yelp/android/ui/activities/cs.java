package com.yelp.android.ui.activities;

import android.widget.GridView;

class cs
  implements Runnable
{
  cs(ActivityMediaBrowser paramActivityMediaBrowser) {}
  
  public void run()
  {
    ActivityMediaBrowser.b(a).smoothScrollToPosition(ActivityMediaBrowser.a(a));
    ActivityMediaBrowser.b(a).setSelection(ActivityMediaBrowser.a(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */