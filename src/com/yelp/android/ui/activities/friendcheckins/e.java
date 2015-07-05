package com.yelp.android.ui.activities.friendcheckins;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.yelp.android.appdata.webrequests.am;
import com.yelp.android.appdata.webrequests.ao;

class e
  implements Runnable
{
  e(CommentOnCheckIn paramCommentOnCheckIn) {}
  
  public void run()
  {
    if ((CommentOnCheckIn.a(a).getActiveNetworkInfo() != null) && (CommentOnCheckIn.a(a).getActiveNetworkInfo().isConnected()))
    {
      if (CommentOnCheckIn.b(a) != null) {
        CommentOnCheckIn.b(a).cancel(true);
      }
      CommentOnCheckIn.a(a, new ao(a, CommentOnCheckIn.c(a), a.a()));
      CommentOnCheckIn.b(a).execute(new Void[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */