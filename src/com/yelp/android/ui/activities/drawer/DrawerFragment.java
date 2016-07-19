package com.yelp.android.ui.activities.drawer;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import com.yelp.android.DinoListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.ApiPreferences;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.j;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Passport;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.ActivityMonocle;
import com.yelp.android.ui.activities.ActivityContributionSearch;
import com.yelp.android.ui.activities.ActivityRecents;
import com.yelp.android.ui.activities.bookmarks.ActivityBookmarks;
import com.yelp.android.ui.activities.bugreport.ActivityReportABug;
import com.yelp.android.ui.activities.events.ActivityEvents;
import com.yelp.android.ui.activities.feed.ActivityFeed;
import com.yelp.android.ui.activities.friendcheckins.NearbyCheckIns;
import com.yelp.android.ui.activities.friends.ActivityFindFriends;
import com.yelp.android.ui.activities.friends.ActivityFriendList;
import com.yelp.android.ui.activities.localissue.ActivityLocalIssue;
import com.yelp.android.ui.activities.mediagrid.ActivityUserBizMediaGrid;
import com.yelp.android.ui.activities.messaging.ActivityMessaging;
import com.yelp.android.ui.activities.mutatebiz.AddBusiness;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.notifications.ActivityNotifications;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.profile.reviews.ActivityUserReviews;
import com.yelp.android.ui.activities.reviews.ActivityReviewSuggestions;
import com.yelp.android.ui.activities.search.SearchBusinessesByList;
import com.yelp.android.ui.activities.search.SearchBusinessesByMap;
import com.yelp.android.ui.activities.settings.ChangeSettings;
import com.yelp.android.ui.activities.support.ActivitySupportCenter;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.activities.talk.ActivityTalk;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.ac;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.util.at;
import com.yelp.android.ui.util.e;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import java.util.List;
import java.util.Locale;

public class DrawerFragment
  extends YelpFragment
{
  BroadcastReceiver a = new DrawerFragment.6(this);
  private a b;
  private TextView c;
  private View d;
  private View e;
  private TextView f;
  private TextView g;
  private TextView i;
  private com.yelp.android.cm.d j;
  private com.yelp.android.cm.d k;
  private DinoListView l;
  private View m;
  private ImageView n;
  private ImageView o;
  private Button p;
  private com.yelp.android.ui.d q;
  private a r;
  private final View.OnClickListener s = new DrawerFragment.5(this);
  
  private boolean f()
  {
    return Features.support_center_feature_release.isEnabled();
  }
  
  private void g()
  {
    d.setVisibility(8);
    e.setVisibility(8);
    l();
  }
  
  private void h()
  {
    int i1 = j.a().e();
    k.a(i1, getActivity().getResources());
    if (i1 > 0)
    {
      g.setCompoundDrawables(g.getCompoundDrawables()[0], null, k, null);
      return;
    }
    g.setCompoundDrawables(g.getCompoundDrawables()[0], null, null, null);
  }
  
  private void i()
  {
    int i1 = j.a().f();
    j.a(i1, getActivity().getResources());
    if (i1 > 0)
    {
      f.setCompoundDrawables(f.getCompoundDrawables()[0], null, j, null);
      return;
    }
    f.setCompoundDrawables(f.getCompoundDrawables()[0], null, null, null);
  }
  
  private void j()
  {
    int i2 = 0;
    Object localObject2 = AppData.b().q();
    Object localObject1 = ((co)localObject2).p();
    boolean bool = ((co)localObject2).b();
    localObject2 = c;
    if (bool)
    {
      i1 = 2131165933;
      ((TextView)localObject2).setText(i1);
      localObject2 = g;
      if (!bool) {
        break label122;
      }
      i1 = 0;
      label54:
      ((TextView)localObject2).setVisibility(i1);
      localObject2 = f;
      if (!bool) {
        break label128;
      }
      i1 = 0;
      label72:
      ((TextView)localObject2).setVisibility(i1);
      if ((!bool) || (localObject1 == null) || (((User)localObject1).k() <= 0)) {
        break label134;
      }
      i1 = 1;
      label97:
      localObject1 = i;
      if (i1 == 0) {
        break label139;
      }
    }
    label122:
    label128:
    label134:
    label139:
    for (int i1 = i2;; i1 = 8)
    {
      ((TextView)localObject1).setVisibility(i1);
      return;
      i1 = 2131165635;
      break;
      i1 = 8;
      break label54;
      i1 = 8;
      break label72;
      i1 = 0;
      break label97;
    }
  }
  
  private void k()
  {
    co localco = AppData.b().q();
    User localUser = localco.p();
    if ((localco.b()) && (localUser != null) && (localUser.n()))
    {
      d.setVisibility(0);
      e.setVisibility(8);
      l();
      n();
    }
    for (;;)
    {
      at.a(m, new DrawerFragment.4(this));
      return;
      if ((localco.b()) && (localco.t()))
      {
        d.setVisibility(4);
        e.setVisibility(8);
        H_();
      }
      else if (localco.b())
      {
        g();
      }
      else
      {
        d.setVisibility(8);
        e.setVisibility(0);
        e.setOnClickListener(s);
      }
    }
  }
  
  private int m()
  {
    Object localObject = getActivity();
    if (((localObject instanceof ActivityFriendList)) && (((ActivityFriendList)localObject).a())) {
      return 2131690385;
    }
    if (((localObject instanceof ActivityUserReviews)) && (((ActivityUserReviews)localObject).b())) {
      return 2131690386;
    }
    if (((localObject instanceof ActivityUserBizMediaGrid)) && (((ActivityUserBizMediaGrid)localObject).a())) {
      return 2131690387;
    }
    if ((localObject instanceof ActivityReviewSuggestions)) {
      return 2131690162;
    }
    if ((localObject instanceof ActivityContributionSearch))
    {
      localObject = ((ActivityContributionSearch)localObject).b();
      if (localObject == BusinessContributionType.CHECK_IN) {
        return 2131690164;
      }
      if (localObject == BusinessContributionType.BUSINESS_PHOTO) {
        return 2131690163;
      }
    }
    else
    {
      if ((localObject instanceof ActivityNearby)) {
        return 2131690165;
      }
      if (((localObject instanceof SearchBusinessesByList)) || ((localObject instanceof SearchBusinessesByMap))) {
        return 2131690166;
      }
      if ((localObject instanceof ActivityFeed)) {
        return 2131690167;
      }
      if ((localObject instanceof ActivityNotifications)) {
        return 2131690168;
      }
      if ((localObject instanceof ActivityBookmarks)) {
        return 2131690169;
      }
      if ((localObject instanceof ActivityEvents)) {
        return 2131690171;
      }
      if ((localObject instanceof ActivityRecents)) {
        return 2131690170;
      }
      if ((localObject instanceof ActivityMessaging)) {
        return 2131690173;
      }
      if ((localObject instanceof NearbyCheckIns)) {
        return 2131690174;
      }
      if ((localObject instanceof ActivityTalk)) {
        return 2131690175;
      }
      if (((localObject instanceof ActivityUserProfile)) && (((ActivityUserProfile)localObject).b())) {
        return 2131690176;
      }
      if ((localObject instanceof ActivityLocalIssue)) {
        return 2131690177;
      }
      if ((localObject instanceof ActivityMonocle)) {
        return 2131690178;
      }
      if ((localObject instanceof ActivityFindFriends)) {
        return 2131690179;
      }
      if ((localObject instanceof AddBusiness)) {
        return 2131690180;
      }
      if ((localObject instanceof ChangeSettings)) {
        return 2131690181;
      }
      if ((localObject instanceof ActivityReportABug)) {
        return 2131690182;
      }
      if ((localObject instanceof ActivitySupportCenter)) {
        return 2131690183;
      }
    }
    return 0;
  }
  
  private void n()
  {
    boolean bool2 = true;
    User localUser = AppData.b().q().p();
    Object localObject = m.findViewById(2131690380);
    TextView localTextView1 = (TextView)((View)localObject).findViewById(2131690385);
    TextView localTextView2 = (TextView)((View)localObject).findViewById(2131690386);
    TextView localTextView3 = (TextView)((View)localObject).findViewById(2131690387);
    TextView localTextView4 = (TextView)((View)localObject).findViewById(2131690384);
    localObject = (WebImageView)((View)localObject).findViewById(2131690383);
    localTextView1.setText(StringUtils.a(getActivity(), 2131230736, localUser.k_(), new Object[] { Boolean.valueOf(true) }));
    localTextView2.setText(StringUtils.a(getActivity(), 2131230757, localUser.j_(), new Object[] { Boolean.valueOf(true) }));
    if (localUser.j_() > 0)
    {
      bool1 = true;
      localTextView2.setClickable(bool1);
      int i1 = localUser.m_();
      int i2 = localUser.M();
      int i3 = i1 + i2;
      localTextView3.setText(Passport.a(true, i2, i1, i3, getResources()));
      if (i3 <= 0) {
        break label245;
      }
    }
    label245:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localTextView3.setClickable(bool1);
      localTextView4.setText(localUser.ad());
      ((WebImageView)localObject).setImageUrl(localUser.c(), 2130837702);
      return;
      bool1 = false;
      break;
    }
  }
  
  private void o()
  {
    e locale = new e(new View[0]);
    locale.b(m);
    locale.b(n);
    q = new com.yelp.android.ui.d(getActivity(), l);
    if (getResourcesgetConfigurationorientation == 2) {
      q.c();
    }
    aj localaj = new aj();
    localaj.a(0, aj.c.a(locale).b());
    localaj.a(1, aj.c.a(q).b());
    l.setAdapter(localaj);
  }
  
  public void a()
  {
    if (getView() != null)
    {
      r.a();
      as.b(getView());
    }
  }
  
  protected void a(View paramView)
  {
    ((ViewGroup)m.findViewById(2131690380)).addView(paramView);
  }
  
  public void b()
  {
    if (d.getVisibility() == 4) {
      C().b();
    }
    AppData.a(ViewIri.Drawer);
    ApiPreferences localApiPreferences = AppData.b().o();
    if ((localApiPreferences.e().isEmpty()) && (localApiPreferences.d().isEmpty())) {
      localApiPreferences.a();
    }
  }
  
  protected void b(View paramView)
  {
    ((ViewGroup)m.findViewById(2131690380)).removeView(paramView);
  }
  
  public void c()
  {
    r.b();
  }
  
  public com.yelp.android.analytics.iris.a getIri()
  {
    return null;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    a(co.b, new DrawerFragment.2(this));
    a(co.c, new DrawerFragment.3(this));
    b("com.yelp.android.messages.count.update", a);
    b("com.yelp.android.notifications.count.update", a);
    b("user", a);
    int i1 = m();
    if (i1 != 0) {
      m.findViewById(i1).setSelected(true);
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      b = ((a)paramActivity);
      return;
    }
    catch (ClassCastException paramActivity)
    {
      YelpLog.d("DrawerFragment", "Parent activity must implement DrawerFragmentListener");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    m = paramLayoutInflater.inflate(2130903216, paramViewGroup, false);
    c = ((TextView)m.findViewById(2131690174));
    d = m.findViewById(2131690381);
    e = m.findViewById(2131690388);
    f = ((TextView)m.findViewById(2131690168));
    g = ((TextView)m.findViewById(2131690173));
    i = ((TextView)m.findViewById(2131690172));
    int i1 = j.a().f();
    int i2 = j.a().e();
    j = new com.yelp.android.cm.d(getActivity(), 2130838368, i1);
    k = new com.yelp.android.cm.d(getActivity(), 2130838368, i2);
    j.setBounds(0, 0, j.getIntrinsicWidth(), j.getIntrinsicHeight());
    k.setBounds(0, 0, k.getIntrinsicWidth(), k.getIntrinsicHeight());
    m.findViewById(2131690382).setOnClickListener(s);
    m.findViewById(2131690385).setOnClickListener(s);
    m.findViewById(2131690386).setOnClickListener(s);
    m.findViewById(2131690387).setOnClickListener(s);
    m.findViewById(2131690162).setOnClickListener(s);
    m.findViewById(2131690163).setOnClickListener(s);
    m.findViewById(2131690164).setOnClickListener(s);
    m.findViewById(2131690165).setOnClickListener(s);
    m.findViewById(2131690166).setOnClickListener(s);
    m.findViewById(2131690167).setOnClickListener(s);
    f.setOnClickListener(s);
    m.findViewById(2131690169).setOnClickListener(s);
    m.findViewById(2131690170).setOnClickListener(s);
    m.findViewById(2131690171).setOnClickListener(s);
    g.setOnClickListener(s);
    c.setOnClickListener(s);
    i.setOnClickListener(s);
    m.findViewById(2131690175).setOnClickListener(s);
    m.findViewById(2131690176).setOnClickListener(s);
    if (ac.a())
    {
      m.findViewById(2131690178).setOnClickListener(s);
      m.findViewById(2131690179).setOnClickListener(s);
      m.findViewById(2131690180).setOnClickListener(s);
      m.findViewById(2131690181).setOnClickListener(s);
      m.findViewById(2131690182).setOnClickListener(s);
      m.findViewById(2131690183).setOnClickListener(s);
      if (!f()) {
        break label878;
      }
      m.findViewById(2131690182).setVisibility(8);
      m.findViewById(2131690183).setVisibility(0);
      label642:
      paramBundle = m.findViewById(2131690177);
      String str1 = ((TelephonyManager)getActivity().getSystemService("phone")).getNetworkCountryIso();
      String str2 = AppData.b().g().h().getCountry();
      if (((TextUtils.isEmpty(str1)) || (!"US".equals(str1.toUpperCase(Locale.US)))) && ((!TextUtils.isEmpty(str1)) || (!"US".equals(str2)))) {
        break label910;
      }
      paramBundle.setOnClickListener(s);
    }
    for (;;)
    {
      paramLayoutInflater = paramLayoutInflater.inflate(2130903215, paramViewGroup, false);
      n = new ImageView(getActivity());
      n.setImageDrawable(getResources().getDrawable(2130838039));
      n.setScaleType(ImageView.ScaleType.FIT_XY);
      l = ((DinoListView)paramLayoutInflater.findViewById(2131690158));
      l.setClickable(false);
      o = ((ImageView)paramLayoutInflater.findViewById(2131690159));
      p = ((Button)paramLayoutInflater.findViewById(2131690160));
      o();
      at.a(m, new DrawerFragment.1(this));
      return paramLayoutInflater;
      m.findViewById(2131690178).setVisibility(8);
      break;
      label878:
      m.findViewById(2131690182).setVisibility(0);
      m.findViewById(2131690183).setVisibility(8);
      break label642;
      label910:
      paramBundle.setVisibility(8);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    k();
    j();
    h();
    i();
  }
  
  public static abstract interface a
  {
    public abstract void closeNavDrawer();
    
    public abstract void onDrawerItemSelected(Intent paramIntent, String paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.drawer.DrawerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */