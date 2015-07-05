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
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.gp;
import com.yelp.android.appdata.webrequests.gq;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.cj;
import com.yelp.android.ui.widgets.EditTextAndClearButton;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.u;

public class FriendsListFragment
  extends YelpListFragment
{
  private u a;
  private cj b;
  private gp c;
  private User d;
  private EditTextAndClearButton e;
  private final m<gq> g = new r(this);
  private final aa h = new s(this);
  
  public static FriendsListFragment a(User paramUser)
  {
    FriendsListFragment localFriendsListFragment = new FriendsListFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("user", paramUser);
    localFriendsListFragment.setArguments(localBundle);
    return localFriendsListFragment;
  }
  
  private void e()
  {
    a(ErrorType.NO_FRIENDS, h);
    e.setVisibility(8);
  }
  
  private void f()
  {
    m().setOnTouchListener(a);
    e.a(new q(this));
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = paramListView.getItemAtPosition(paramInt);
    if ((paramListView instanceof User)) {
      startActivity(ActivityUserProfile.a(getActivity(), ((User)paramListView).getId()));
    }
  }
  
  public void a_()
  {
    b.clear();
    super.a_();
  }
  
  public b getIri()
  {
    return ViewIri.Friends;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    a(b);
    m().setFastScrollEnabled(true);
    if ((b.isEmpty()) && (!s()))
    {
      c = new gp(d, g);
      c.execute(new Void[0]);
      a(c);
    }
    for (;;)
    {
      a = new u(e, m());
      f();
      return;
      if (b.isEmpty()) {
        e();
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
      d = AppData.b().m().s();
    }
    b = cj.a(paramBundle);
    b.a(true);
    b(b.getCount());
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755025, paramMenu);
    paramMenu.findItem(2131494149).setIntent(ActivityFindFriends.a(getActivity(), false, false));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903222, paramViewGroup, false);
    e = ((EditTextAndClearButton)paramLayoutInflater.findViewById(2131493226));
    e.setHint(2131166503);
    e.setFocusable(true);
    e.setFocusableInTouchMode(true);
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    b(c);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    boolean bool = AppData.b().m().a(d);
    paramMenu.findItem(2131494149).setVisible(bool);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    b.b(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.FriendsListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */