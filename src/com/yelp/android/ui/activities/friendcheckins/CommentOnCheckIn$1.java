package com.yelp.android.ui.activities.friendcheckins;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.yelp.android.appdata.webrequests.am;
import com.yelp.android.appdata.webrequests.am.b;

class CommentOnCheckIn$1
  implements Runnable
{
  CommentOnCheckIn$1(CommentOnCheckIn paramCommentOnCheckIn) {}
  
  public void run()
  {
    if ((CommentOnCheckIn.a(a).getActiveNetworkInfo() != null) && (CommentOnCheckIn.a(a).getActiveNetworkInfo().isConnected()))
    {
      if (CommentOnCheckIn.b(a) != null) {
        CommentOnCheckIn.b(a).a(true);
      }
      CommentOnCheckIn.a(a, new am.b(a, CommentOnCheckIn.c(a), a.a()));
      CommentOnCheckIn.b(a).f(new Void[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.CommentOnCheckIn.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */