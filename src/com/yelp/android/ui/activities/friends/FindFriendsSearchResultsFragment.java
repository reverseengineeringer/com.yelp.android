package com.yelp.android.ui.activities.friends;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.cs;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.ap;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.List;

public class FindFriendsSearchResultsFragment
  extends YelpListFragment
{
  private ap a;
  private TextView b;
  private cs c;
  private boolean d;
  private final ApiRequest.b<List<User>> e = new FindFriendsSearchResultsFragment.1(this);
  
  public static FindFriendsSearchResultsFragment c()
  {
    return new FindFriendsSearchResultsFragment();
  }
  
  private void f()
  {
    a(c);
    a.clear();
    b(false);
    b();
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = (User)c.b().get(paramInt);
    startActivity(ActivityUserProfile.a(getActivity(), paramListView.ae()));
  }
  
  public void a(ErrorType paramErrorType)
  {
    super.a(paramErrorType);
    m().setVisibility(8);
    b.setVisibility(8);
  }
  
  public void a(String paramString)
  {
    if (c == null) {
      c = new cs(e, paramString, 0);
    }
    while (getView() != null)
    {
      f();
      return;
      c.a(paramString);
      if (c.u()) {
        c.a(true);
      }
    }
    d = true;
  }
  
  protected void b()
  {
    super.b();
    if ((c != null) && (!c.u())) {
      c.d();
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle != null)
    {
      a = ap.a(paramBundle);
      c = cs.a(paramBundle, e);
    }
    for (;;)
    {
      a(a);
      return;
      a = new ap();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903243, paramViewGroup, false);
    b = ((TextView)paramLayoutInflater.findViewById(2131690266));
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    l();
    a("member_search", c);
  }
  
  public void onResume()
  {
    super.onResume();
    c = ((cs)a("member_search", c, e));
    if (c != null)
    {
      if (!c.u()) {
        break label51;
      }
      a(c);
    }
    label51:
    while (!d) {
      return;
    }
    f();
    d = false;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    a.b(paramBundle);
    c.a(paramBundle);
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.FindFriendsSearchResultsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */