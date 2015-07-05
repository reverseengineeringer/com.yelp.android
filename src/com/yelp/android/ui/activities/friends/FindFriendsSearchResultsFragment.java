package com.yelp.android.ui.activities.friends;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.appdata.webrequests.dn;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.cj;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.List;

public class FindFriendsSearchResultsFragment
  extends YelpListFragment
{
  private cj a;
  private TextView b;
  private dn c;
  private boolean d;
  private final m<List<User>> e = new n(this);
  
  public static FindFriendsSearchResultsFragment c()
  {
    return new FindFriendsSearchResultsFragment();
  }
  
  private void e()
  {
    a(c);
    a.clear();
    a(false);
    b();
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = (User)c.a().get(paramInt);
    startActivity(ActivityUserProfile.a(getActivity(), paramListView.getId()));
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
      c = new dn(e, paramString, 0);
    }
    while (getView() != null)
    {
      e();
      return;
      c.a(paramString);
      if (c.isFetching()) {
        c.cancel(true);
      }
    }
    d = true;
  }
  
  protected void b()
  {
    super.b();
    if ((c != null) && (!c.isFetching())) {
      c.b();
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle != null)
    {
      a = cj.a(paramBundle);
      c = dn.a(paramBundle, e);
    }
    for (;;)
    {
      a(a);
      return;
      a = new cj();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903217, paramViewGroup, false);
    b = ((TextView)paramLayoutInflater.findViewById(2131493562));
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    j();
    a("member_search", c);
  }
  
  public void onResume()
  {
    super.onResume();
    c = ((dn)a("member_search", c, e));
    if (c != null)
    {
      if (!c.isFetching()) {
        break label51;
      }
      a(c);
    }
    label51:
    while (!d) {
      return;
    }
    e();
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