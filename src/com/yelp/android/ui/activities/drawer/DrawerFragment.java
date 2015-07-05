package com.yelp.android.ui.activities.drawer;

import android.app.Activity;
import android.content.BroadcastReceiver;
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
import android.view.ViewStub;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import com.yelp.android.DinoListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.ab;
import com.yelp.android.appdata.experiment.NavForAnonymousUsersExperiment;
import com.yelp.android.appdata.experiment.NavForAnonymousUsersExperiment.Cohort;
import com.yelp.android.appdata.experiment.c;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.Passport;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.ActivityMonocle;
import com.yelp.android.ui.activities.ActivityBookmarks;
import com.yelp.android.ui.activities.ActivityContributionSearch;
import com.yelp.android.ui.activities.ActivityRecents;
import com.yelp.android.ui.activities.bugreport.ActivityReportABug;
import com.yelp.android.ui.activities.events.ActivityEvents;
import com.yelp.android.ui.activities.feed.ActivityFeed;
import com.yelp.android.ui.activities.feed.SingleFeedFragmentActivity;
import com.yelp.android.ui.activities.friendcheckins.NearbyCheckIns;
import com.yelp.android.ui.activities.friends.ActivityFindFriends;
import com.yelp.android.ui.activities.friends.ActivityFriendList;
import com.yelp.android.ui.activities.messaging.ActivityMessaging;
import com.yelp.android.ui.activities.mutatebiz.AddBusiness;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.activities.notifications.ActivityNotifications;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.profile.UserBizMediaGrid;
import com.yelp.android.ui.activities.reviews.ActivityReviewSuggestions;
import com.yelp.android.ui.activities.search.SearchBusinessesByList;
import com.yelp.android.ui.activities.search.SearchBusinessesByMap;
import com.yelp.android.ui.activities.settings.ChangeSettings;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.activities.talk.ActivityTalk;
import com.yelp.android.ui.activities.weekly.ActivityWeeklyIssue;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bw;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.util.cs;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import java.util.Locale;

public class DrawerFragment
  extends YelpFragment
{
  BroadcastReceiver a = new m(this);
  private o b;
  private TextView c;
  private TextView d;
  private TextView e;
  private View g;
  private View h;
  private View i;
  private View j;
  private DinoListView k;
  private View l;
  private ImageView m;
  private ImageView n;
  private Button o;
  private com.yelp.android.ui.h p;
  private a q;
  private final View.OnClickListener r = new l(this);
  
  private void e()
  {
    g.setVisibility(8);
    h.setVisibility(8);
    j();
  }
  
  private void f()
  {
    int i1 = ab.a().e();
    if (i1 == 0)
    {
      e.setVisibility(8);
      return;
    }
    e.setVisibility(0);
    e.setText(String.valueOf(i1));
  }
  
  private void g()
  {
    int i1 = ab.a().f();
    if (i1 == 0)
    {
      d.setVisibility(8);
      return;
    }
    d.setVisibility(0);
    d.setText(String.valueOf(i1));
  }
  
  private void h()
  {
    int i2 = 0;
    boolean bool = AppData.b().m().c();
    Object localObject = c;
    if (bool)
    {
      i1 = 2131165850;
      ((TextView)localObject).setText(i1);
      localObject = i;
      if (!bool) {
        break label74;
      }
      i1 = 0;
      label43:
      ((View)localObject).setVisibility(i1);
      localObject = j;
      if (!bool) {
        break label80;
      }
    }
    label74:
    label80:
    for (int i1 = i2;; i1 = 8)
    {
      ((View)localObject).setVisibility(i1);
      return;
      i1 = 2131165504;
      break;
      i1 = 8;
      break label43;
    }
  }
  
  private void i()
  {
    View localView = l;
    dc localdc = AppData.b().m();
    User localUser = localdc.s();
    if ((localdc.c()) && (localUser != null) && (localUser.isFullUser()))
    {
      g.setVisibility(0);
      h.setVisibility(8);
      j();
      l();
    }
    for (;;)
    {
      cs.a(l, new k(this));
      return;
      if ((localdc.c()) && (localdc.x()))
      {
        g.setVisibility(4);
        h.setVisibility(8);
        i_();
      }
      else if (localdc.c())
      {
        e();
      }
      else
      {
        g.setVisibility(8);
        h.setVisibility(0);
        localView.findViewById(2131493637).setOnClickListener(r);
      }
    }
  }
  
  private int k()
  {
    Object localObject = getActivity();
    if (((localObject instanceof ActivityFriendList)) && (((ActivityFriendList)localObject).a())) {
      return 2131493644;
    }
    if (((localObject instanceof SingleFeedFragmentActivity)) && (((SingleFeedFragmentActivity)localObject).a())) {
      return 2131493645;
    }
    if (((localObject instanceof UserBizMediaGrid)) && (((UserBizMediaGrid)localObject).a())) {
      return 2131493646;
    }
    if ((localObject instanceof ActivityReviewSuggestions)) {
      return 2131493480;
    }
    if ((localObject instanceof ActivityContributionSearch))
    {
      localObject = ((ActivityContributionSearch)localObject).b();
      if (localObject == BusinessContributionType.CHECK_IN) {
        return 2131493482;
      }
      if (localObject == BusinessContributionType.BUSINESS_PHOTO) {
        return 2131493481;
      }
    }
    else
    {
      if ((localObject instanceof ActivityNearby)) {
        return 2131493483;
      }
      if (((localObject instanceof SearchBusinessesByList)) || ((localObject instanceof SearchBusinessesByMap))) {
        return 2131493484;
      }
      if ((localObject instanceof ActivityFeed)) {
        return 2131493485;
      }
      if ((localObject instanceof ActivityNotifications)) {
        return 2131493486;
      }
      if ((localObject instanceof ActivityBookmarks)) {
        return 2131493489;
      }
      if ((localObject instanceof ActivityEvents)) {
        return 2131493491;
      }
      if ((localObject instanceof ActivityRecents)) {
        return 2131493490;
      }
      if ((localObject instanceof ActivityMessaging)) {
        return 2131493492;
      }
      if ((localObject instanceof NearbyCheckIns)) {
        return 2131493495;
      }
      if ((localObject instanceof ActivityTalk)) {
        return 2131493496;
      }
      if (((localObject instanceof ActivityUserProfile)) && (((ActivityUserProfile)localObject).b())) {
        return 2131493497;
      }
      if ((localObject instanceof ActivityWeeklyIssue)) {
        return 2131493498;
      }
      if ((localObject instanceof ActivityMonocle)) {
        return 2131493499;
      }
      if ((localObject instanceof ActivityFindFriends)) {
        return 2131493500;
      }
      if ((localObject instanceof AddBusiness)) {
        return 2131493501;
      }
      if ((localObject instanceof ChangeSettings)) {
        return 2131493502;
      }
      if ((localObject instanceof ActivityReportABug)) {
        return 2131493503;
      }
    }
    return 0;
  }
  
  private void l()
  {
    User localUser = AppData.b().m().s();
    Object localObject = l.findViewById(2131493638);
    TextView localTextView1 = (TextView)((View)localObject).findViewById(2131493644);
    TextView localTextView2 = (TextView)((View)localObject).findViewById(2131493645);
    TextView localTextView3 = (TextView)((View)localObject).findViewById(2131493646);
    TextView localTextView4 = (TextView)((View)localObject).findViewById(2131493643);
    localObject = (WebImageView)((View)localObject).findViewById(2131493641);
    localTextView1.setText(StringUtils.a(getActivity(), 2131623952, localUser.getFriendCount(), new Object[] { Boolean.valueOf(true) }));
    localTextView2.setText(StringUtils.a(getActivity(), 2131623970, localUser.getReviewCount(), new Object[] { Boolean.valueOf(true) }));
    int i1 = localUser.getVideoCount();
    int i2 = localUser.getLocalPhotoCount();
    localTextView3.setText(Passport.getMediaQuantityString(true, i2, i1, i1 + i2, getResources()));
    localTextView4.setText(localUser.getFullName());
    ((WebImageView)localObject).setImageUrl(localUser.getUserPhotoUrl(), 2130837659);
  }
  
  private void m()
  {
    com.yelp.android.ui.util.h localh = new com.yelp.android.ui.util.h(new View[0]);
    localh.b(l);
    localh.b(m);
    p = new com.yelp.android.ui.h(getActivity(), k);
    if (getResourcesgetConfigurationorientation == 2) {
      p.b();
    }
    bs localbs = new bs();
    localbs.a(0, bw.a(localh).a());
    localbs.a(1, bw.a(p).a());
    k.setAdapter(localbs);
  }
  
  public void a()
  {
    if (getView() != null)
    {
      q.a();
      cr.b(getView());
    }
  }
  
  protected void a(View paramView)
  {
    ((ViewGroup)l.findViewById(2131493638)).addView(paramView);
  }
  
  public void b()
  {
    if (g.getVisibility() == 4) {
      B().b();
    }
    AppData.a(ViewIri.Drawer, "growth_android_dino_nav", ((NavForAnonymousUsersExperiment.Cohort)c.a.a()).name());
  }
  
  protected void b(View paramView)
  {
    ((ViewGroup)l.findViewById(2131493638)).removeView(paramView);
  }
  
  public void c()
  {
    q.b();
  }
  
  public b getIri()
  {
    return null;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    a(dc.b, new i(this));
    a(dc.c, new j(this));
    b("com.yelp.android.messages.count.update", a);
    b("com.yelp.android.notifications.count.update", a);
    int i1 = k();
    if (i1 != 0) {
      l.findViewById(i1).setSelected(true);
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      b = ((o)paramActivity);
      return;
    }
    catch (ClassCastException paramActivity)
    {
      YelpLog.d("DrawerFragment", "Parent activity must implement DrawerFragmentListener");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    l = paramLayoutInflater.inflate(2130903193, paramViewGroup, false);
    c = ((TextView)l.findViewById(2131493495));
    g = l.findViewById(2131493639);
    paramBundle = (ViewStub)l.findViewById(2131493647);
    switch (n.a[((NavForAnonymousUsersExperiment.Cohort)c.a.a()).ordinal()])
    {
    default: 
      paramBundle.setLayoutResource(2130903248);
      paramBundle.inflate();
      h = l.findViewById(2131493636);
      d = ((TextView)l.findViewById(2131493487));
      j = l.findViewById(2131493486);
      i = l.findViewById(2131493492);
      e = ((TextView)l.findViewById(2131493493));
      l.findViewById(2131493640).setOnClickListener(r);
      l.findViewById(2131493644).setOnClickListener(r);
      l.findViewById(2131493645).setOnClickListener(r);
      l.findViewById(2131493646).setOnClickListener(r);
      l.findViewById(2131493480).setOnClickListener(r);
      l.findViewById(2131493481).setOnClickListener(r);
      l.findViewById(2131493482).setOnClickListener(r);
      l.findViewById(2131493483).setOnClickListener(r);
      l.findViewById(2131493484).setOnClickListener(r);
      l.findViewById(2131493485).setOnClickListener(r);
      l.findViewById(2131493488).setOnClickListener(r);
      l.findViewById(2131493489).setOnClickListener(r);
      l.findViewById(2131493490).setOnClickListener(r);
      l.findViewById(2131493491).setOnClickListener(r);
      l.findViewById(2131493494).setOnClickListener(r);
      c.setOnClickListener(r);
      l.findViewById(2131493496).setOnClickListener(r);
      l.findViewById(2131493497).setOnClickListener(r);
      l.findViewById(2131493499).setOnClickListener(r);
      l.findViewById(2131493500).setOnClickListener(r);
      l.findViewById(2131493501).setOnClickListener(r);
      l.findViewById(2131493502).setOnClickListener(r);
      l.findViewById(2131493503).setOnClickListener(r);
      paramBundle = l.findViewById(2131493498);
      String str1 = ((TelephonyManager)getActivity().getSystemService("phone")).getNetworkCountryIso();
      String str2 = AppData.b().g().h().getCountry();
      if (((!TextUtils.isEmpty(str1)) && ("US".equals(str1.toUpperCase()))) || ((TextUtils.isEmpty(str1)) && ("US".equals(str2)))) {
        paramBundle.setOnClickListener(r);
      }
      break;
    }
    for (;;)
    {
      paramLayoutInflater = paramLayoutInflater.inflate(2130903192, paramViewGroup, false);
      m = new ImageView(getActivity());
      m.setImageDrawable(getResources().getDrawable(2130837911));
      m.setScaleType(ImageView.ScaleType.FIT_XY);
      k = ((DinoListView)paramLayoutInflater.findViewById(2131493477));
      k.setClickable(false);
      n = ((ImageView)paramLayoutInflater.findViewById(2131493478));
      o = ((Button)paramLayoutInflater.findViewById(2131493479));
      m();
      cs.a(l, new h(this));
      return paramLayoutInflater;
      paramBundle.setLayoutResource(2130903247);
      paramBundle.inflate();
      ((Button)l.findViewById(2131493637)).setText(2131165663);
      break;
      paramBundle.setLayoutResource(2130903247);
      paramBundle.inflate();
      break;
      paramBundle.setVisibility(8);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    i();
    h();
    f();
    g();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.drawer.DrawerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */