package com.yelp.android.ui.activities;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fb;
import com.yelp.android.appdata.webrequests.fb.a;
import com.yelp.android.appdata.webrequests.fi;
import com.yelp.android.appdata.webrequests.fi.a;
import com.yelp.android.cg.b;
import com.yelp.android.serializable.RankLocation;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.k;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Map;

public class ActivityRankedBusinesses
  extends YelpListActivity
  implements AdapterView.OnItemClickListener, k, PanelError.a
{
  private RankTitle.Rank a;
  private User b;
  private RankLocation c;
  private ArrayList<RankLocation> d;
  private Bundle e;
  private fi f;
  private fb g;
  private b h;
  private final ApiRequest.b<fi.a> i = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, fi.a paramAnonymousa)
    {
      ActivityRankedBusinesses.a(ActivityRankedBusinesses.this, paramAnonymousa.a(), paramAnonymousa.b());
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      populateError(paramAnonymousYelpException);
    }
  };
  private final ApiRequest.b<fb.a> j = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, fb.a paramAnonymousa)
    {
      ActivityRankedBusinesses.a(ActivityRankedBusinesses.this, paramAnonymousa.a(), paramAnonymousa.b());
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      populateError(paramAnonymousYelpException);
    }
  };
  
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
    for (int k = c.c();; k = b.b(a))
    {
      if (h.getCount() >= k) {
        r().f();
      }
      h.notifyDataSetChanged();
      disableLoading();
      return;
    }
  }
  
  private void f()
  {
    if ((f == null) && (g == null)) {
      p_();
    }
    String str;
    if ((c != null) && (c.b() != null))
    {
      str = c.b();
      setTitle(str);
      return;
    }
    int k = 0;
    switch (3.a[a.ordinal()])
    {
    }
    for (;;)
    {
      str = getString(k);
      break;
      k = 2131166037;
      continue;
      if (b.w())
      {
        k = 2131165525;
      }
      else
      {
        k = 2131165526;
        continue;
        k = 2131165804;
        continue;
        k = 2131166438;
      }
    }
  }
  
  private ApiRequest<?, ?, ?> g()
  {
    String str = b.ae();
    if ((c != null) && ((g == null) || (!g.u())))
    {
      g = new fb(a, str, c.a(), h.getCount(), 20, j);
      g.f(new Void[0]);
      return g;
    }
    if ((c == null) && ((f == null) || (!f.u())))
    {
      f = new fi(a, str, h.getCount(), 20, i);
      f.f(new Void[0]);
      return f;
    }
    return null;
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = (RankLocation)paramListView.getItemAtPosition(paramInt);
    paramView = paramListView.d();
    if (paramView != null) {
      startActivity(ActivityBusinessPage.b(this, paramView.aD()));
    }
    while (paramListView.a() == null) {
      return;
    }
    startActivity(a(this, paramListView, a, b));
  }
  
  public Pair<fi, fb> b()
  {
    return (Pair)super.getLastCustomNonConfigurationInstance();
  }
  
  public void c()
  {
    g();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.UserRankingsBusinesses;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    return g.b(b.ae());
  }
  
  public String getRequestIdForIri(com.yelp.android.analytics.iris.a parama)
  {
    return null;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      d = paramBundle.getParcelableArrayList("locations");
    }
    for (e = paramBundle.getBundle("counts");; e = new Bundle())
    {
      paramBundle = b();
      if (paramBundle != null)
      {
        f = ((fi)first);
        g = ((fb)second);
        if (f != null) {
          f.a(i);
        }
        if (g != null) {
          g.a(j);
        }
      }
      paramBundle = getIntent();
      b = ((User)paramBundle.getParcelableExtra("user"));
      a = RankTitle.Rank.rankForString(paramBundle.getStringExtra("rank").toUpperCase(Locale.US));
      c = ((RankLocation)paramBundle.getParcelableExtra("location"));
      paramBundle = r();
      h = new b(this, d, e);
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
    if ((f != null) && (f.u())) {
      enableLoading(f);
    }
    while ((g == null) || (!g.u())) {
      return;
    }
    enableLoading(g);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("locations", d);
    paramBundle.putBundle("counts", e);
  }
  
  public void p_()
  {
    d.clear();
    e.clear();
    enableLoading(g());
    h.notifyDataSetInvalidated();
  }
  
  public void q_()
  {
    p_();
  }
  
  public Pair<fi, fb> r_()
  {
    return Pair.create(f, g);
  }
  
  public static class a
  {
    public TextView a;
    public TextView b;
    public WebImageView c;
    
    public a(View paramView)
    {
      a = ((TextView)paramView.findViewById(2131689748));
      b = ((TextView)paramView.findViewById(2131689749));
      c = ((WebImageView)paramView.findViewById(2131689747));
    }
  }
  
  private static class b
    extends com.yelp.android.ui.panels.a
  {
    private final ArrayList<RankLocation> a;
    private final Bundle b;
    private final Context c;
    
    public b(Context paramContext, ArrayList<RankLocation> paramArrayList, Bundle paramBundle)
    {
      super();
      c = paramContext;
      a = paramArrayList;
      b = paramBundle;
    }
    
    public YelpBusiness a(int paramInt)
    {
      return b(paramInt).d();
    }
    
    public void a(int paramInt, b paramb)
    {
      super.a(paramInt, paramb);
      f.setText(StringUtils.a(c, 2131230726, b.getInt(a(paramInt).aD()), new String[0]));
    }
    
    public RankLocation b(int paramInt)
    {
      return (RankLocation)a.get(paramInt);
    }
    
    public void clear()
    {
      a.clear();
    }
    
    public int getCount()
    {
      return a.size();
    }
    
    public int getItemViewType(int paramInt)
    {
      if (((RankLocation)a.get(paramInt)).d() == null) {
        return 0;
      }
      return 1;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      RankLocation localRankLocation = b(paramInt);
      if (localRankLocation.d() == null)
      {
        View localView = paramView;
        if (paramView == null)
        {
          localView = a().inflate(2130903384, paramViewGroup, false);
          localView.setTag(new ActivityRankedBusinesses.a(localView));
        }
        paramView = (ActivityRankedBusinesses.a)localView.getTag();
        a.setText(localRankLocation.b());
        b.setText(StringUtils.a(c, 2131230732, localRankLocation.c(), new String[0]));
        c.setVisibility(8);
        return localView;
      }
      return super.getView(paramInt, paramView, paramViewGroup);
    }
    
    public int getViewTypeCount()
    {
      return 2;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRankedBusinesses
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */