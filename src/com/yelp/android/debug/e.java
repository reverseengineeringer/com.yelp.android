package com.yelp.android.debug;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.SortType;
import com.yelp.android.appdata.webrequests.dp;
import java.util.List;
import java.util.Random;

class e
  implements View.OnClickListener
{
  e(FreezerFragmentDebugFragment paramFreezerFragmentDebugFragment, Context paramContext) {}
  
  public void onClick(View paramView)
  {
    if (new Random().nextBoolean())
    {
      paramView = new dp(null, 0);
      paramView.execute(new Void[0]);
      FreezerFragmentDebugFragment.a(b).add(new f(b, a, paramView));
      return;
    }
    paramView = new ListBookmarksRequest(null, ListBookmarksRequest.SortType.ALPHABETICAL, 0);
    paramView.execute(new Void[0]);
    FreezerFragmentDebugFragment.a(b).add(new f(b, a, paramView));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */