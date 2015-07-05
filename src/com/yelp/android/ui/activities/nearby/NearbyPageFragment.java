package com.yelp.android.ui.activities.nearby;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.ds;
import com.yelp.android.appdata.webrequests.dt;
import com.yelp.android.appdata.webrequests.du;
import com.yelp.android.appdata.webrequests.dv;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.av.g;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.NearbyResult;
import com.yelp.android.serializable.NearbyRow;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.events.ActivityEventPage;
import com.yelp.android.ui.activities.events.ActivityEvents;
import com.yelp.android.ui.activities.events.ay;
import com.yelp.android.ui.activities.support.ActivitySingleSearchBar;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpSwipeRefreshListFragment;
import com.yelp.android.ui.dialogs.LocationSettingsDialog;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.YelpLoadingSpinner;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bv;
import com.yelp.android.ui.util.bw;
import com.yelp.android.ui.util.by;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.h;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;

public class NearbyPageFragment
  extends YelpSwipeRefreshListFragment
  implements com.yelp.android.ui.panels.aa
{
  private static final long a = TimeUnit.MINUTES.toMillis(5L);
  private final j<List<RichSearchSuggestion>> A = new y(this);
  private final j<List<NearbyRow>> B = new z(this);
  private final j<List<Event>> C = new aa(this);
  private final j<ArrayList<YelpCheckIn>> D = new ab(this);
  private du b;
  private ds c;
  private dt d;
  private dv e;
  private boolean g;
  private boolean h;
  private boolean i;
  private boolean j;
  private boolean k;
  private int l;
  private int m;
  private ErrorType n;
  private bs o;
  private PanelError p;
  private h q;
  private ArrayList<NearbyRow> r;
  private ArrayList<Event> s;
  private ArrayList<YelpCheckIn> t;
  private ArrayList<RichSearchSuggestion> u;
  private NearbyFriends v;
  private ac w;
  private s x;
  private boolean y = false;
  private long z;
  
  private String a(g paramg)
  {
    if (paramg != null) {
      return paramg.getRequestId();
    }
    return null;
  }
  
  private void a(ArrayList<YelpCheckIn> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.isEmpty())) {
      return;
    }
    v = new NearbyFriends(getActivity(), null);
    v.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
    h localh = new h(new View[] { v });
    int i1 = 0;
    for (;;)
    {
      if (i1 < paramArrayList.size())
      {
        if (!TextUtils.isEmpty(((YelpCheckIn)paramArrayList.get(i1)).getUserPhotoUrl()))
        {
          paramArrayList.add(0, paramArrayList.get(i1));
          paramArrayList.remove(i1 + 1);
        }
      }
      else
      {
        v.setCheckIns(paramArrayList);
        String str = getString(2131165499);
        v.setOnClickListener(new by(EventIri.NearbyFriends, ActivityComboNearbyCheckIns.a(v.getContext(), paramArrayList, str)));
        o.a(2131492908, bw.a(localh).a(2130772319).a());
        return;
      }
      i1 += 1;
    }
  }
  
  private void a(List<RichSearchSuggestion> paramList)
  {
    x.a(paramList, a(b));
  }
  
  private void b(ErrorType paramErrorType)
  {
    if (paramErrorType == ErrorType.NO_ERROR) {
      return;
    }
    if (!k)
    {
      k = true;
      p = new PanelError(getActivity());
      p.a(this);
      p.a(paramErrorType);
      q = new h(new View[] { p });
      o.a(2131492899, bw.a(q).a());
    }
    if (paramErrorType == ErrorType.LOCATION_SERVICES_DISABLED) {
      LocationSettingsDialog.a(false, 2131166173).show(getFragmentManager(), null);
    }
    m().f();
    b(false);
    j();
  }
  
  private void b(List<NearbyRow> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()))
    {
      m = 0;
      return;
    }
    m = paramList.size();
    int i1 = 0;
    label31:
    Object localObject1;
    Object localObject2;
    if (i1 < m)
    {
      localObject1 = (NearbyRow)paramList.get(i1);
      localObject2 = new ae(((NearbyRow)localObject1).getRowId());
      if (((NearbyRow)localObject1).getTopResultCount() < ((NearbyRow)localObject1).getResults().size()) {
        break label298;
      }
      ((ae)localObject2).a(((NearbyRow)localObject1).getResults());
      ((ae)localObject2).a(false);
    }
    for (;;)
    {
      localObject2 = bw.a(((NearbyRow)localObject1).getHeader(), (BaseAdapter)localObject2).a(2130772319);
      if (((NearbyRow)localObject1).getResults().size() > ((NearbyRow)localObject1).getTopResultCount())
      {
        View localView = getActivity().getLayoutInflater().inflate(2130903254, m(), false);
        if (i1 == paramList.size() - 1)
        {
          int i2 = cp.a(getActivity(), 2130772041);
          findViewById2131492893getLayoutParamsbottomMargin = i2;
        }
        ((TextView)localView.findViewById(2131493668)).setText(StringUtils.a(getActivity(), 2131623959, ((NearbyRow)localObject1).getResults().size() - ((NearbyRow)localObject1).getTopResultCount()));
        localObject1 = localView.findViewById(2131492893);
        ((View)localObject1).setEnabled(true);
        ((View)localObject1).setOnClickListener(new ad(this, (ArrayList)paramList, i1, null));
        ((bw)localObject2).a(localView);
      }
      o.a(i1, ((bw)localObject2).a());
      i1 += 1;
      break label31;
      break;
      label298:
      ((ae)localObject2).a(((NearbyRow)localObject1).getResults().subList(0, ((NearbyRow)localObject1).getTopResultCount()));
      ((ae)localObject2).a(true);
    }
  }
  
  private void c(ErrorType paramErrorType)
  {
    if (paramErrorType == ErrorType.NO_ERROR) {}
    do
    {
      return;
      l += 1;
      if (paramErrorType.isMoreImportant(n)) {
        n = paramErrorType;
      }
    } while (l != 4);
    b(n);
  }
  
  private void c(List<Event> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {}
    do
    {
      do
      {
        return;
        ay localay = new ay(this);
        localay.a(paramList);
        o.a(2131166790, bw.a(getResources().getString(2131166790), localay).a(2130772319).a(2131492893, ao.l, ao.c).a());
      } while (m <= 0);
      paramList = o.a(m - 1).a();
    } while (paramList == null);
    findViewById2131492893getLayoutParamsbottomMargin = 0;
  }
  
  private void d(List<?> paramList)
  {
    if (paramList.isEmpty())
    {
      c(ErrorType.NO_RESULTS);
      return;
    }
    f();
  }
  
  private void e()
  {
    i_();
    w.a();
    l = 0;
    n = ErrorType.NO_ERROR;
    if (((b == null) || (!b.isFetching())) && (y))
    {
      b = new du(A);
      b.setLocationTimeout(2000L);
      b.executeWithLocation(new Void[0]);
      x.a();
    }
    if ((d == null) || (!d.isFetching()))
    {
      d = new dt(D);
      if (!AppData.b().m().c()) {
        break label234;
      }
      d.executeWithLocation(new Void[0]);
    }
    for (;;)
    {
      if ((e == null) || (!e.isFetching()))
      {
        e = new dv(B);
        e.executeWithLocation(new Void[0]);
      }
      if ((c == null) || (!c.isFetching()))
      {
        c = new ds(C);
        c.executeWithLocation(new Void[0]);
      }
      return;
      label234:
      c(ErrorType.NO_RESULTS);
    }
  }
  
  private void f()
  {
    if ((b == null) || (!b.isFetching()))
    {
      if ((!g) && (y))
      {
        a(u);
        g = true;
        if (!i()) {
          j();
        }
      }
      if ((d == null) || (!d.isFetching()))
      {
        if (!h)
        {
          a(t);
          h = true;
        }
        if ((e == null) || (!e.isFetching()))
        {
          if (!i)
          {
            if ((w != null) && (r != null) && (!r.isEmpty())) {
              w.b();
            }
            b(r);
            i = true;
          }
          if ((c == null) || (!c.isFetching()))
          {
            if (!j)
            {
              c(s);
              j = true;
            }
            a(o);
            a(true);
            j();
          }
        }
      }
    }
  }
  
  private void g()
  {
    if (q != null) {
      q.clear();
    }
  }
  
  private void h()
  {
    m().a(new x(this), YelpLoadingSpinner.FINDING_PLACES);
    PanelLoading localPanelLoading = m().getLoadingPanel();
    localPanelLoading.setPadding(localPanelLoading.getPaddingLeft(), 100, localPanelLoading.getPaddingRight(), localPanelLoading.getPaddingBottom());
  }
  
  private void l()
  {
    if (m().getHeaderViewsCount() == 1)
    {
      x.a(m());
      if (!y) {
        x.a(null, null);
      }
      a(o);
      h();
    }
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramView = paramView.getContext();
    paramListView = paramListView.getAdapter().getItem(paramInt);
    if ((paramListView instanceof NearbyResult))
    {
      paramListView = (NearbyResult)paramListView;
      TreeMap localTreeMap = new TreeMap();
      localTreeMap.put("row_id", paramListView.getRowId());
      localTreeMap.put("result_id", paramListView.getResultId());
      AppData.a(EventIri.NearbySuggestion, localTreeMap);
      startActivity(ActivityBusinessPage.b(paramView, paramListView.getBusiness()));
    }
    do
    {
      do
      {
        return;
      } while (!(paramListView instanceof Event));
      paramListView = (Event)paramListView;
      if (paramListView != ay.a)
      {
        startActivity(ActivityEventPage.a(paramView, paramListView, IriSource.Nearby));
        return;
      }
      AppData.a(EventIri.NearbyEvents);
    } while (s == null);
    startActivity(ActivityEvents.a(paramView));
  }
  
  public void a_()
  {
    g();
    o.clear();
    o.notifyDataSetChanged();
    if (y) {
      x.b();
    }
    h();
    g = false;
    h = false;
    i = false;
    j = false;
    k = false;
    if (b != null)
    {
      b.cancel(true);
      b = null;
    }
    if (e != null)
    {
      e.cancel(true);
      e = null;
    }
    if (d != null)
    {
      d.cancel(true);
      d = null;
    }
    if (c != null)
    {
      c.cancel(true);
      c = null;
    }
    u = null;
    s = null;
    r = null;
    t = null;
    e();
    z = System.currentTimeMillis();
  }
  
  public b getIri()
  {
    return ViewIri.Nearby;
  }
  
  public void i_()
  {
    super.a(null, 0);
    PanelLoading localPanelLoading = B();
    localPanelLoading.setSpinner(YelpLoadingSpinner.FINDING_PLACES);
    localPanelLoading.setBackgroundResource(2130838071);
    localPanelLoading.setClickable(false);
  }
  
  public void m_()
  {
    x();
    a_();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    paramBundle = m();
    paramBundle.setItemsCanFocus(true);
    paramBundle.setPanelLoadingBackground(17170445);
    paramBundle.setBackgroundDrawable(null);
    paramBundle.setSelector(17170445);
    o = new bs();
    l();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    w = ((ac)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    g = false;
    h = false;
    i = false;
    j = false;
    x = new s(getActivity());
    y = Features.nearby_search_suggest.isEnabled();
    if (paramBundle != null)
    {
      r = paramBundle.getParcelableArrayList("rows");
      s = paramBundle.getParcelableArrayList("events");
      t = paramBundle.getParcelableArrayList("checkins");
      u = paramBundle.getParcelableArrayList("category_suggestions");
      n = ((ErrorType)paramBundle.getParcelable("most_important_error"));
    }
    for (z = paramBundle.getLong("nearby_last_refresh_time", System.currentTimeMillis());; z = System.currentTimeMillis())
    {
      ((YelpActivity)getActivity()).registerDirtyEventReceiver("com.yelp.android.events.update", new w(this));
      return;
      s = new ArrayList();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if ((getActivity() instanceof ActivitySingleSearchBar)) {
      ((ActivitySingleSearchBar)getActivity()).a((ListView)paramLayoutInflater.findViewById(16908298));
    }
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    a("nearby_event_request", c);
    a("nearby_friends_request", d);
    a("nearby_suggest_request", e);
    a("nearby_search_suggest_request", b);
  }
  
  public void onResume()
  {
    super.onResume();
    c = ((ds)a("nearby_event_request", null, C));
    d = ((dt)a("nearby_friends_request", null, D));
    e = ((dv)a("nearby_suggest_request", null, B));
    b = ((du)a("nearby_search_suggest_request", null, A));
    if (System.currentTimeMillis() - z > a)
    {
      a_();
      return;
    }
    if ((r == null) || (s == null) || ((AppData.b().m().c()) && (t == null)))
    {
      e();
      return;
    }
    f();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("events", s);
    if (r != null) {
      paramBundle.putParcelableArrayList("rows", r);
    }
    if (t != null) {
      paramBundle.putParcelableArrayList("checkins", t);
    }
    if (u != null) {
      paramBundle.putParcelableArrayList("category_suggestions", u);
    }
    paramBundle.putParcelable("most_important_error", n);
    paramBundle.putLong("nearby_last_refresh_time", z);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.NearbyPageFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */