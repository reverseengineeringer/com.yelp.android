package com.yelp.android.ui.activities.friends;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.bu;
import com.yelp.android.appdata.webrequests.bv;
import com.yelp.android.appdata.webrequests.cc;
import com.yelp.android.appdata.webrequests.cc.a;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.FacebookConnectManager;
import com.yelp.android.ui.activities.FacebookConnectManager.FbPermissionSet;
import com.yelp.android.ui.activities.FacebookConnectManager.a;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.ap;
import com.yelp.android.ui.widgets.YelpToggleButton;
import com.yelp.android.util.ContactsFetcher.Contact;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

public class FindFriendsFBContactsFragment
  extends YelpListFragment
{
  private String a;
  private ap b;
  private ArrayList<User> c;
  private cc d;
  private bu e;
  private bv f;
  private FacebookConnectManager<ActivityFindFriends> g;
  private boolean i;
  private RelativeLayout j;
  private View k;
  private TextView l;
  private TextView m;
  private RelativeLayout n;
  private RelativeLayout o;
  private YelpToggleButton p;
  private View q;
  private final View.OnClickListener r = new FindFriendsFBContactsFragment.2(this);
  private final View.OnClickListener s = new FindFriendsFBContactsFragment.3(this);
  private final View.OnClickListener t = new FindFriendsFBContactsFragment.4(this);
  private final View.OnClickListener u = new FindFriendsFBContactsFragment.5(this);
  private final c.a v = new FindFriendsFBContactsFragment.6(this);
  private final ApiRequest.b<Boolean> w = new FindFriendsFBContactsFragment.7(this);
  private final ApiRequest.b<cc.a> x = new FindFriendsFBContactsFragment.8(this);
  private final FacebookConnectManager.a<ActivityFindFriends> y = new FindFriendsFBContactsFragment.9(this);
  
  private void a(Iterable<String> paramIterable)
  {
    boolean bool = "SOURCE_FACEBOOK".equals(a);
    d = new cc(x, paramIterable, false, bool);
    d.f(new Void[0]);
    a(d, 2131165906);
  }
  
  private void a(ArrayList<User> paramArrayList, Map<String, ContactsFetcher.Contact> paramMap)
  {
    l();
    c = paramArrayList;
    b.clear();
    b.a(paramMap);
    b.a(c);
    b(true);
    if (c.isEmpty())
    {
      a(ErrorType.NO_FRIENDS_IN_CONTACTS);
      g();
      return;
    }
    h();
  }
  
  private void a(boolean paramBoolean)
  {
    l();
    p.setChecked(paramBoolean);
    if (paramBoolean)
    {
      if (d != null) {
        d.a(true);
      }
      g();
      o.setVisibility(8);
      return;
    }
    p_();
  }
  
  public static FindFriendsFBContactsFragment c()
  {
    return new FindFriendsFBContactsFragment();
  }
  
  private void f()
  {
    if ("SOURCE_CONTACTS".equals(a))
    {
      a(null, 2131165906);
      new FindFriendsFBContactsFragment.1(this).execute(new Void[0]);
      return;
    }
    a(Collections.emptyList());
  }
  
  private void g()
  {
    k.setVisibility(0);
    m().setVisibility(8);
  }
  
  private void h()
  {
    k.setVisibility(8);
    m().setVisibility(0);
  }
  
  public ViewIri C_()
  {
    return ViewIri.FriendFinder;
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = (User)c.get(paramInt);
    startActivity(ActivityUserProfile.a(getActivity(), paramListView.ae()));
  }
  
  protected void a(YelpException paramYelpException)
  {
    super.a(paramYelpException);
    m().getEmptyView().setVisibility(8);
    n.setVisibility(8);
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    if ("SOURCE_CONTACTS".equals(a)) {
      return Collections.singletonMap("use_contacts", Boolean.valueOf(true));
    }
    return Collections.singletonMap("use_facebook", Boolean.valueOf(true));
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (g != null) {
      g.a(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      a = paramBundle.getString("source");
      c = paramBundle.getParcelableArrayList("users");
      b = ap.a(paramBundle);
      i = paramBundle.getBoolean("fb_auto_friend");
    }
    for (;;)
    {
      b.a(r);
      b.a(true);
      a(b);
      return;
      b = new ap(2130903411);
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131755025, paramMenu);
  }
  
  @SuppressLint({"InflateParams"})
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    j = ((RelativeLayout)paramLayoutInflater.inflate(2130903242, paramViewGroup, false));
    l = ((TextView)j.findViewById(2131690257));
    m = ((TextView)j.findViewById(2131690255));
    n = ((RelativeLayout)j.findViewById(2131690254));
    o = ((RelativeLayout)j.findViewById(2131690263));
    j.findViewById(2131690264).setOnClickListener(s);
    k = j.findViewById(2131689967);
    paramViewGroup = (ViewFlipper)k;
    paramViewGroup.setDisplayedChild(paramViewGroup.indexOfChild(j.findViewById(2131690255)));
    if ("SOURCE_FACEBOOK".equals(a))
    {
      j.findViewById(2131690258).setVisibility(0);
      ((TextView)n.findViewById(2131690265)).setText(2131165949);
      p = ((YelpToggleButton)j.findViewById(2131690262));
      p.setOnClickListener(t);
      if (com.facebook.share.widget.a.e())
      {
        q = paramLayoutInflater.inflate(2130903416, null);
        q.setOnClickListener(null);
        q.findViewById(2131690704).setOnClickListener(u);
        e(q);
        setHasOptionsMenu(true);
        ((TextView)j.findViewById(2131690256).findViewById(2131690703)).setText(getString(2131166797));
        paramViewGroup.setDisplayedChild(paramViewGroup.indexOfChild(j.findViewById(2131690256)));
        j.findViewById(2131690704).setOnClickListener(u);
      }
    }
    return j;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    q.findViewById(2131690704).performClick();
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    a("friends", d);
    a("facebook_auto_friend_get", e);
    a("facebook_auto_friend_post", f);
  }
  
  public void onResume()
  {
    super.onResume();
    d = ((cc)a("friends", d, x));
    e = ((bu)a("facebook_auto_friend_get", e, w));
    if (c == null)
    {
      if (!"SOURCE_FACEBOOK".equals(a)) {
        break label106;
      }
      if (e == null)
      {
        H_();
        e = new bu(w);
        e.f(new String[0]);
      }
    }
    label106:
    while (d != null) {
      return;
    }
    p_();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    b.b(paramBundle);
    paramBundle.putString("source", a);
    paramBundle.putParcelableArrayList("users", c);
    paramBundle.putBoolean("fb_auto_friend", i);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void p_()
  {
    if ("SOURCE_FACEBOOK".equals(a))
    {
      if (g == null) {
        g = new FacebookConnectManager((ActivityFindFriends)getActivity(), 2131166073, y, FacebookConnectManager.FbPermissionSet.DEFAULT_USER_FRIEND);
      }
      while (FacebookConnectManager.a())
      {
        a(Collections.emptyList());
        return;
        g.a(y);
        g.a((ActivityFindFriends)getActivity());
      }
      g.e();
      return;
    }
    f();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.FindFriendsFBContactsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */