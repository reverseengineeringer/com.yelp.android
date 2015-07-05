package com.yelp.android.ui.activities.friends;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.ui.activities.ActivityLogin;

class o
  implements View.OnClickListener
{
  o(FindFriendsSuggestFragment paramFindFriendsSuggestFragment) {}
  
  public void onClick(View paramView)
  {
    if (!AppData.b().m().c())
    {
      paramView = ActivityLogin.a(a.getActivity(), 2131166040);
      a.startActivityForResult(paramView, 1043);
      return;
    }
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131493563: 
      FindFriendsSuggestFragment.a(a).a("SOURCE_FACEBOOK");
      return;
    }
    FindFriendsSuggestFragment.a(a).a("SOURCE_CONTACTS");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */