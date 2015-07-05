package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ListBookmarksRequest;

class k
  implements Runnable
{
  k(ActivityBookmarks paramActivityBookmarks) {}
  
  public void run()
  {
    if ((ActivityBookmarks.a(a) == null) || (ActivityBookmarks.a(a).isCompleted())) {
      ActivityBookmarks.b(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */