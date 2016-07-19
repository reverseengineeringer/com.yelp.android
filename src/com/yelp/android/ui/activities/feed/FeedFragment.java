package com.yelp.android.ui.activities.feed;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.design.widget.TabLayout.c;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.experiment.TwoBucketExperiment;
import com.yelp.android.appdata.experiment.TwoBucketExperiment.Cohort;
import com.yelp.android.appdata.experiment.e;
import com.yelp.android.appdata.k;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.bx;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.ez;
import com.yelp.android.appdata.webrequests.fn;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.Alert;
import com.yelp.android.serializable.AlertsResponse;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.feed.viewbinder.q;
import com.yelp.android.ui.activities.notifications.NotificationsFragment.a;
import com.yelp.android.ui.activities.notifications.a.a;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.widgets.MessageAlertBox;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class FeedFragment
  extends AbstractFeedFragment
{
  private q A;
  private ViewGroup B;
  private ArrayList<Alert> C;
  private int D;
  private View E;
  private View.OnLayoutChangeListener F = new FeedFragment.8(this);
  private final k.b<FeedRequestResult> G = new FeedFragment.9(this);
  private final PanelError.a H = new FeedFragment.10(this);
  private final PanelError.a I = new FeedFragment.11(this);
  private final ApiRequest.b<User> J = new FeedFragment.12(this);
  private final ApiRequest.b<User> K = new FeedFragment.13(this);
  private final k.b<AlertsResponse> L = new FeedFragment.2(this);
  private final a.a M = new FeedFragment.3(this);
  private final c.a N = new FeedFragment.4(this);
  private bx j;
  private fn k;
  private ez l;
  private fn m;
  private List<NotificationsFragment.a> n;
  private View o;
  private int p;
  private boolean q = false;
  private boolean r = false;
  private boolean s = false;
  private TabLayout.c t;
  private TabLayout.c u;
  private TabLayout.c v;
  private TabLayout.c w;
  private TabLayout.c x;
  private b y;
  private TabLayout z;
  
  private String a(int paramInt)
  {
    return "inline_action_request_" + paramInt;
  }
  
  private void a(User paramUser)
  {
    if (paramUser != null) {}
    for (int i = 0;; i = 8)
    {
      z.setVisibility(i);
      if (paramUser != null) {
        b(paramUser);
      }
      if ((paramUser != null) && (!paramUser.n()))
      {
        m = new fn(K, null, null);
        m.f(new Void[0]);
      }
      return;
    }
  }
  
  private void b(User paramUser)
  {
    if ((paramUser.C() <= 0) && (w != null))
    {
      z.b(w);
      w = null;
    }
    do
    {
      while ((paramUser.k_() <= 0) && (x != null))
      {
        z.b(x);
        x = null;
        return;
        if ((paramUser.C() > 0) && (w == null))
        {
          w = z.a().b(2131165926);
          z.a(w, u.c());
        }
      }
    } while ((paramUser.k_() <= 0) || (x != null));
    x = z.a().b(2131165933);
    z.a(x, u.c());
  }
  
  private void f(View paramView)
  {
    z = ((TabLayout)paramView.findViewById(2131690224));
    FeedFragment.7 local7 = new FeedFragment.7(this);
    t = z.a().b(2131165483);
    v = z.a().b(2131166213);
    w = z.a().b(2131165926);
    x = z.a().b(2131165933);
    u = z.a().b(2131166215);
    z.a(t);
    z.a(v);
    z.a(w);
    z.a(x);
    z.a(u);
    int i = getContext().getTheme().obtainStyledAttributes(new int[] { 2130772347 }).getColor(0, getResources().getColor(2131624211));
    int i1 = getResources().getColor(2131624257);
    z.setOnTabSelectedListener(local7);
    z.setBackgroundColor(i);
    paramView.findViewById(2131690223).setBackgroundColor(i);
    z.a(i1, i1);
    z.setSelectedTabIndicatorColor(i1);
  }
  
  private void i()
  {
    o = getActivity().getLayoutInflater().inflate(2130903226, B, false);
    o.setVisibility(8);
    C = new ArrayList();
    D = 0;
    A = new q(o, M, this);
    o.addOnLayoutChangeListener(F);
    A.a();
  }
  
  private void t()
  {
    n.clear();
    NotificationsFragment.a locala = (NotificationsFragment.a)a(a(0), null, N);
    int i = 1;
    while (locala != null)
    {
      n.add(locala);
      locala = (NotificationsFragment.a)a(a(i), null, N);
      i += 1;
    }
  }
  
  private void u()
  {
    int i = 0;
    while (i < n.size())
    {
      a(a(i), (ApiRequest)n.get(i));
      i += 1;
    }
  }
  
  protected void a(View paramView)
  {
    E = paramView;
    B.addView(E);
  }
  
  public void a(FeedType paramFeedType)
  {
    if ((r) && (c != paramFeedType))
    {
      c(j);
      r = false;
    }
    c = paramFeedType;
    m().setEmptyView(null);
    switch (FeedFragment.5.a[c.ordinal()])
    {
    }
    for (;;)
    {
      a = y.a(c);
      if (a != null) {
        break;
      }
      a = new a(c, g, f, d);
      a(a);
      p_();
      return;
      AppData.a(ViewIri.FeedMain);
      continue;
      AppData.a(ViewIri.FeedFriend);
      continue;
      AppData.a(ViewIri.FeedNearby);
      continue;
      AppData.a(ViewIri.FeedFollowing);
      continue;
      AppData.a(ViewIri.FeedCheckIn);
    }
    e = y.b(c);
    a(a);
    l();
    z();
    if ("".equals(e))
    {
      n();
      return;
    }
    o();
  }
  
  public void a(ErrorType paramErrorType, PanelError.a parama)
  {
    super.a(paramErrorType, parama);
    A().c();
  }
  
  public void b()
  {
    if ((AppData.b().q().p() != null) && (c == FeedType.MAIN) && (o.getParent() == null) && (a.isEmpty()))
    {
      m().removeHeaderView(o);
      B.addView(o);
    }
    String str2;
    FeedType localFeedType;
    k.b localb;
    if (!r)
    {
      r = true;
      str2 = AppData.b().q().a();
      localFeedType = c;
      localb = G;
      if (!q) {
        break label155;
      }
    }
    label155:
    for (String str1 = null;; str1 = e)
    {
      j = new bx(str2, localFeedType, localb, str1);
      if ((c != FeedType.NEARBY) && (c != FeedType.MAIN)) {
        break;
      }
      j.a(new Void[0]);
      return;
    }
    j.f(new Void[0]);
  }
  
  protected void b(View paramView)
  {
    B.removeView(paramView);
  }
  
  public void b(FeedType paramFeedType)
  {
    switch (FeedFragment.5.a[paramFeedType.ordinal()])
    {
    default: 
      B.removeView(o);
      m().removeHeaderView(o);
      if (E != null) {
        E.setPadding(0, 0, 0, 0);
      }
      break;
    }
    do
    {
      return;
    } while ((AppData.b().q().p() == null) || (m().getHeaderViewsCount() != 0) || (y.a(paramFeedType) == null));
    m().addHeaderView(o);
  }
  
  public void h()
  {
    if (s) {}
    while ((AppData.b().q().p() == null) || (c != FeedType.MAIN)) {
      return;
    }
    if ((l != null) && (l.u())) {
      YelpLog.remoteError("FeedFragment", "Trying to create a second request for inline alerts!");
    }
    A.a();
    l = new ez(L);
    l.f(new Void[0]);
    s = true;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default: 
      return;
    }
    A.a();
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = (ViewGroup)paramLayoutInflater.inflate(2130903237, paramViewGroup, false);
    if (g())
    {
      paramViewGroup = paramLayoutInflater.findViewById(2131690242);
      i = new FeedFragment.1(this, paramViewGroup.getContext());
      a(paramLayoutInflater, paramViewGroup, paramBundle);
    }
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    a("feed", j);
    a("user", k);
    a("user_info", m);
    a("alert", l);
    u();
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (250 == paramInt)
    {
      paramArrayOfString = k.a(paramArrayOfString, paramArrayOfInt);
      if ((paramArrayOfString.containsKey(PermissionGroup.LOCATION)) && (((Boolean)paramArrayOfString.get(PermissionGroup.LOCATION)).booleanValue()))
      {
        AppData.b().F();
        o();
        p_();
        h();
      }
      return;
    }
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  public void onResume()
  {
    super.onResume();
    j = ((bx)a("feed", j, G));
    k = ((fn)a("user", k, J));
    m = ((fn)a("user_info", m, K));
    l = ((ez)a("alert", l, L));
    t();
    User localUser = AppData.b().q().p();
    if ((z.getVisibility() == 8) && (localUser != null))
    {
      a.clear();
      p_();
      h();
    }
    a(localUser);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    y.a(paramBundle);
    paramBundle.putBoolean("requesting_feeds", r);
    paramBundle.putBoolean("requesting_inline_alerts", s);
    paramBundle.putInt("inline_alert_count", D);
    paramBundle.putParcelableArrayList("inline_alerts_list", C);
  }
  
  @SuppressLint({"InflateParams"})
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    int i = getResources().getDimensionPixelOffset(2131361961);
    m().setDividerHeight(0);
    m().setItemsCanFocus(true);
    m().setClipToPadding(false);
    m().setPadding(0, 0, 0, i);
    f(paramView);
    i();
    B = ((ViewGroup)getView().findViewById(2131690242));
    n = new ArrayList();
    if (paramBundle != null)
    {
      y = b.a(paramBundle, g, f, d);
      r = paramBundle.getBoolean("requesting_feeds");
      s = paramBundle.getBoolean("requesting_inline_alerts");
      D = paramBundle.getInt("inline_alert_count");
      C = paramBundle.getParcelableArrayList("inline_alerts_list");
      if (!s) {
        A.a(C, D, getContext());
      }
      a(AppData.b().q().p());
      if (c != null) {
        break label335;
      }
      b(FeedType.MAIN);
      a(FeedType.MAIN);
    }
    for (;;)
    {
      if ((AppData.b().q().b()) && (!AppData.b().q().d()) && (e.t.a(TwoBucketExperiment.Cohort.enabled)))
      {
        paramView = (FrameLayout)getActivity().getLayoutInflater().inflate(2130903065, null);
        ((MessageAlertBox)paramView.findViewById(2131689679)).setOnClickListener(new FeedFragment.6(this));
        AppData.a(ViewIri.ConfirmEmailBanner, "source", "activity_feed");
        m().addHeaderView(paramView);
      }
      if (paramBundle == null) {
        h();
      }
      return;
      y = new b();
      break;
      label335:
      switch (FeedFragment.5.a[c.ordinal()])
      {
      default: 
        break;
      case 1: 
        if (t.f())
        {
          b(FeedType.MAIN);
          a(FeedType.MAIN);
        }
        else
        {
          t.e();
        }
        break;
      case 2: 
        v.e();
        break;
      case 3: 
        u.e();
        break;
      case 4: 
        w.e();
        break;
      case 5: 
        x.e();
      }
    }
  }
  
  public void p_()
  {
    z();
    if (a.getCount() == 0) {
      a(null);
    }
    q = true;
    b();
  }
  
  protected PanelLoading y_()
  {
    PanelLoading localPanelLoading = super.y_();
    localPanelLoading.setBackgroundResource(2131624079);
    return localPanelLoading;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.FeedFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */