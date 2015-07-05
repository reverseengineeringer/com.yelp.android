package com.yelp.android.ui.activities.friends;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cc;
import com.yelp.android.appdata.webrequests.cd;
import com.yelp.android.appdata.webrequests.cl;
import com.yelp.android.appdata.webrequests.cm;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.FacebookConnectManager;
import com.yelp.android.ui.activities.FacebookConnectManager.FbPermissionSet;
import com.yelp.android.ui.activities.fg;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.cj;
import com.yelp.android.ui.widgets.YelpToggleButton;
import com.yelp.android.util.ContactsFetcher.Contact;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

public class FindFriendsFBContactsFragment
  extends YelpListFragment
{
  private String a;
  private cj b;
  private ArrayList<User> c;
  private cl d;
  private cc e;
  private cd g;
  private FacebookConnectManager<ActivityFindFriends> h;
  private boolean i;
  private TextView j;
  private RelativeLayout k;
  private RelativeLayout l;
  private YelpToggleButton m;
  private final View.OnClickListener n = new c(this);
  private final View.OnClickListener o = new f(this);
  private final View.OnClickListener p = new g(this);
  private final com.yelp.android.av.i q = new h(this);
  private final com.yelp.android.appdata.webrequests.m<Boolean> r = new i(this);
  private final com.yelp.android.appdata.webrequests.m<cm> s = new j(this);
  private final fg<ActivityFindFriends> t = new l(this);
  private final com.yelp.android.appdata.webrequests.m<RemoteConfigPreferences> u = new m(this);
  
  private void a(Iterable<String> paramIterable)
  {
    boolean bool = "SOURCE_FACEBOOK".equals(a);
    d = new cl(s, paramIterable, false, bool);
    d.execute(new Void[0]);
    a(d, 2131165824);
  }
  
  private void a(ArrayList<User> paramArrayList, Map<String, ContactsFetcher.Contact> paramMap)
  {
    j();
    m().setVisibility(0);
    c = paramArrayList;
    b.clear();
    b.a(paramMap);
    b.a(c);
    a(true);
  }
  
  private void b(boolean paramBoolean)
  {
    j();
    m.setChecked(paramBoolean);
    if (paramBoolean)
    {
      if (d != null) {
        d.cancel(true);
      }
      m().setVisibility(8);
      l.setVisibility(8);
      return;
    }
    a_();
  }
  
  public static FindFriendsFBContactsFragment c()
  {
    return new FindFriendsFBContactsFragment();
  }
  
  private void e()
  {
    if ("SOURCE_CONTACTS".equals(a))
    {
      a(null, 2131165824);
      new b(this).execute(new Void[0]);
      return;
    }
    a(Collections.emptyList());
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = (User)c.get(paramInt);
    startActivity(ActivityUserProfile.a(getActivity(), paramListView.getId()));
  }
  
  protected void a(YelpException paramYelpException)
  {
    super.a(paramYelpException);
    m().getEmptyView().setVisibility(8);
    k.setVisibility(8);
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public void a_()
  {
    if ("SOURCE_FACEBOOK".equals(a))
    {
      if (h == null) {
        h = new FacebookConnectManager((ActivityFindFriends)getActivity(), 2131166015, t, FacebookConnectManager.FbPermissionSet.DEFAULT_USER_FRIEND, 1023);
      }
      while (FacebookConnectManager.a())
      {
        a(Collections.emptyList());
        return;
        h.a(t);
        h.a((ActivityFindFriends)getActivity());
      }
      h.e();
      return;
    }
    if (AppData.b().m().h() == null)
    {
      AppData.b().m().a(u);
      a(null, 2131165824);
      return;
    }
    e();
  }
  
  public ViewIri d()
  {
    return ViewIri.FriendFinder;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.b paramb)
  {
    if ("SOURCE_CONTACTS".equals(a)) {
      return Collections.singletonMap("use_contacts", Boolean.valueOf(true));
    }
    return Collections.singletonMap("use_facebook", Boolean.valueOf(true));
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default: 
      return;
    }
    h.a(paramInt1, paramInt2, paramIntent);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      a = paramBundle.getString("source");
      c = paramBundle.getParcelableArrayList("users");
      b = cj.a(paramBundle);
      i = paramBundle.getBoolean("fb_auto_friend");
    }
    for (;;)
    {
      b.a(n);
      b.a(true);
      a(b);
      return;
      b = new cj(2130903314);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903216, paramViewGroup, false);
    j = ((TextView)paramLayoutInflater.findViewById(2131493553));
    k = ((RelativeLayout)paramLayoutInflater.findViewById(2131493552));
    l = ((RelativeLayout)paramLayoutInflater.findViewById(2131493559));
    paramLayoutInflater.findViewById(2131493560).setOnClickListener(o);
    if ("SOURCE_FACEBOOK".equals(a))
    {
      paramLayoutInflater.findViewById(2131493554).setVisibility(0);
      ((TextView)k.findViewById(2131493561)).setText(2131165872);
      m = ((YelpToggleButton)paramLayoutInflater.findViewById(2131493558));
      m.setOnClickListener(p);
    }
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    a("friends", d);
    a("facebook_auto_friend_get", e);
    a("facebook_auto_friend_post", g);
    if (h != null)
    {
      FacebookConnectManager localFacebookConnectManager = h;
      if (FacebookConnectManager.a()) {
        h.a(null);
      }
    }
  }
  
  public void onResume()
  {
    super.onResume();
    d = ((cl)a("friends", d, s));
    e = ((cc)a("facebook_auto_friend_get", e, r));
    if (c == null)
    {
      if (!"SOURCE_FACEBOOK".equals(a)) {
        break label106;
      }
      i_();
      if (e == null)
      {
        e = new cc(r);
        e.execute(new String[0]);
      }
    }
    label106:
    while (d != null) {
      return;
    }
    a_();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    b.b(paramBundle);
    paramBundle.putString("source", a);
    paramBundle.putParcelableArrayList("users", c);
    paramBundle.putBoolean("fb_auto_friend", i);
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.FindFriendsFBContactsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */