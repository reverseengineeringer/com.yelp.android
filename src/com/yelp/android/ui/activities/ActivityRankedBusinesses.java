package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Pair;
import android.view.View;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.gi;
import com.yelp.android.appdata.webrequests.gj;
import com.yelp.android.appdata.webrequests.gs;
import com.yelp.android.appdata.webrequests.gt;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.RankLocation;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.p;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Map;

public class ActivityRankedBusinesses
  extends YelpListActivity
  implements AdapterView.OnItemClickListener, p, aa
{
  private RankTitle.Rank a;
  private User b;
  private RankLocation c;
  private ArrayList<RankLocation> d;
  private Bundle e;
  private gs f;
  private gi g;
  private dl h;
  private final m<gt> i = new dh(this);
  private final m<gj> j = new di(this);
  
  public static Intent a(Context paramContext, RankLocation paramRankLocation, RankTitle.Rank paramRank, User paramUser)
  {
    paramContext = a(paramContext, paramRank, paramUser);
    paramContext.putExtra("location", paramRankLocation);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, RankTitle.Rank paramRank, User paramUser)
  {
    paramContext = new Intent(paramContext, ActivityRankedBusinesses.class);
    paramContext.putExtra("user", paramUser);
    paramContext.putExtra("rank", paramRank.name());
    return paramContext;
  }
  
  private void a(ArrayList<RankLocation> paramArrayList, Bundle paramBundle)
  {
    d.addAll(paramArrayList);
    e.putAll(paramBundle);
    if (c != null) {}
    for (int k = c.getTopUserCount();; k = b.getLocationCount(a))
    {
      if (h.getCount() >= k) {
        q().f();
      }
      h.notifyDataSetChanged();
      disableLoading();
      return;
    }
  }
  
  private void f()
  {
    if ((f == null) && (g == null)) {
      a_();
    }
    String str;
    if ((c != null) && (c.getName() != null))
    {
      str = c.getName();
      setTitle(str);
      return;
    }
    int k = 0;
    switch (dj.a[a.ordinal()])
    {
    }
    for (;;)
    {
      str = getString(k);
      break;
      k = 2131165983;
      continue;
      if (b.isMale())
      {
        k = 2131165390;
      }
      else
      {
        k = 2131165391;
        continue;
        k = 2131165726;
        continue;
        k = 2131166413;
      }
    }
  }
  
  private ApiRequest<?, ?, ?> g()
  {
    String str = b.getId();
    if ((c != null) && ((g == null) || (!g.isFetching())))
    {
      g = new gi(a, str, c.getId(), h.getCount(), 20, j);
      g.execute(new Void[0]);
      return g;
    }
    if ((c == null) && ((f == null) || (!f.isFetching())))
    {
      f = new gs(a, str, h.getCount(), 20, i);
      f.execute(new Void[0]);
      return f;
    }
    return null;
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = (RankLocation)paramListView.getItemAtPosition(paramInt);
    paramView = paramListView.getBusiness();
    if (paramView != null) {
      startActivity(ActivityBusinessPage.a(this, paramView.getId()));
    }
    while (paramListView.getId() == null) {
      return;
    }
    startActivity(a(this, paramListView, a, b));
  }
  
  public void a_()
  {
    d.clear();
    e.clear();
    enableLoading(g());
    h.notifyDataSetInvalidated();
  }
  
  public Pair<gs, gi> c()
  {
    return (Pair)super.getLastCustomNonConfigurationInstance();
  }
  
  public void d()
  {
    g();
  }
  
  public Pair<gs, gi> d_()
  {
    return Pair.create(f, g);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.UserRankingsBusinesses;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return g.b(b.getId());
  }
  
  public String getRequestIdForIri(b paramb)
  {
    return null;
  }
  
  public void m_()
  {
    a_();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      d = paramBundle.getParcelableArrayList("locations");
    }
    for (e = paramBundle.getBundle("counts");; e = new Bundle())
    {
      paramBundle = c();
      if (paramBundle != null)
      {
        f = ((gs)first);
        g = ((gi)second);
        if (f != null) {
          f.setCallback(i);
        }
        if (g != null) {
          g.setCallback(j);
        }
      }
      paramBundle = getIntent();
      b = ((User)paramBundle.getParcelableExtra("user"));
      a = RankTitle.Rank.rankForString(paramBundle.getStringExtra("rank").toUpperCase(Locale.US));
      c = ((RankLocation)paramBundle.getParcelableExtra("location"));
      paramBundle = q();
      h = new dl(this, d, e);
      paramBundle.setDividerHeight(0);
      paramBundle.setAdapter(h);
      f();
      return;
      d = new ArrayList();
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    populateError(paramYelpException);
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((f != null) && (f.isFetching())) {
      enableLoading(f);
    }
    while ((g == null) || (!g.isFetching())) {
      return;
    }
    enableLoading(g);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("locations", d);
    paramBundle.putBundle("counts", e);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRankedBusinesses
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */