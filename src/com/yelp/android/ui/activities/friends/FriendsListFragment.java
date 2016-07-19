package com.yelp.android.ui.activities.friends;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.fh;
import com.yelp.android.appdata.webrequests.fh.a;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.ap;
import com.yelp.android.ui.widgets.EditTextAndClearButton;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.m;

public class FriendsListFragment
  extends YelpListFragment
{
  private m a;
  private ap b;
  private fh c;
  private User d;
  private EditTextAndClearButton e;
  private final ApiRequest.b<fh.a> f = new FriendsListFragment.2(this);
  private final PanelError.a g = new FriendsListFragment.3(this);
  
  public static FriendsListFragment a(User paramUser)
  {
    FriendsListFragment localFriendsListFragment = new FriendsListFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("user", paramUser);
    localFriendsListFragment.setArguments(localBundle);
    return localFriendsListFragment;
  }
  
  private void f()
  {
    a(ErrorType.NO_FRIENDS, g);
    e.setVisibility(8);
  }
  
  private void g()
  {
    m().setOnTouchListener(a);
    e.a(new FriendsListFragment.1(this));
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = paramListView.getItemAtPosition(paramInt);
    if ((paramListView instanceof User)) {
      startActivity(ActivityUserProfile.a(getActivity(), ((User)paramListView).ae()));
    }
  }
  
  public a getIri()
  {
    return ViewIri.Friends;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    a(b);
    m().setFastScrollEnabled(true);
    if ((b.isEmpty()) && (!r()))
    {
      c = new fh(d, f);
      c.f(new Void[0]);
      a(c);
    }
    for (;;)
    {
      a = new m(e, m());
      g();
      return;
      if (b.isEmpty()) {
        f();
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getArguments() != null) {
      d = ((User)getArguments().getParcelable("user"));
    }
    if (d == null) {
      d = AppData.b().q().p();
    }
    b = ap.a(paramBundle);
    b.a(true);
    b(b.getCount());
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755028, paramMenu);
    paramMenu.findItem(2131691022).setIntent(ActivityFindFriends.a(getActivity(), false));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903248, paramViewGroup, false);
    e = ((EditTextAndClearButton)paramLayoutInflater.findViewById(2131690889));
    e.setHint(2131166500);
    e.setFocusable(true);
    e.setFocusableInTouchMode(true);
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    c(c);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    boolean bool = AppData.b().q().a(d);
    paramMenu.findItem(2131691022).setVisible(bool);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    b.b(paramBundle);
  }
  
  public void p_()
  {
    b.clear();
    super.p_();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.FriendsListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */