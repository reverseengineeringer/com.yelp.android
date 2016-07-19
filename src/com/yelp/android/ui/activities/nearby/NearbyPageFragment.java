package com.yelp.android.ui.activities.nearby;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.experiment.TrendingSearchesExperiment;
import com.yelp.android.appdata.experiment.TrendingSearchesExperiment.Cohort;
import com.yelp.android.appdata.experiment.j;
import com.yelp.android.appdata.k;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.LocalIssueFromLocationRequest;
import com.yelp.android.appdata.webrequests.LocalIssueFromLocationRequest.LocalIssueSource;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.cw;
import com.yelp.android.appdata.webrequests.cx;
import com.yelp.android.appdata.webrequests.cy;
import com.yelp.android.appdata.webrequests.cz;
import com.yelp.android.appdata.webrequests.et;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.LocalIssue;
import com.yelp.android.serializable.LocalIssueResponse;
import com.yelp.android.serializable.NearbyResult;
import com.yelp.android.serializable.NearbyRow;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.serializable.RichSearchSuggestion.RichSearchSuggestionType;
import com.yelp.android.serializable.TrendingSearches;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.events.ActivityEventPage;
import com.yelp.android.ui.activities.events.ActivityEvents;
import com.yelp.android.ui.activities.support.ActivitySingleSearchBar;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpSwipeRefreshListFragment;
import com.yelp.android.ui.dialogs.LocationSettingsDialog;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.YelpLoadingSpinner;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.b;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.ui.util.ak;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import com.yelp.android.ui.widgets.InAppNotificationView;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.TimeUnit;

public class NearbyPageFragment
  extends YelpSwipeRefreshListFragment
  implements PanelError.a
{
  private static final long b = TimeUnit.MINUTES.toMillis(5L);
  private ArrayList<NearbyRow> A;
  private ArrayList<Event> B;
  private ArrayList<YelpCheckIn> C;
  private ArrayList<RichSearchSuggestion> D;
  private NearbyFriends E;
  private a F;
  private LocalIssue G;
  private TrendingSearches H;
  private a I;
  private boolean J = false;
  private long K;
  private Handler L = null;
  private final k.b<List<RichSearchSuggestion>> M = new NearbyPageFragment.5(this);
  private final k.b<List<NearbyRow>> N = new NearbyPageFragment.6(this);
  private final k.b<List<Event>> O = new NearbyPageFragment.7(this);
  private final k.b<ArrayList<YelpCheckIn>> P = new NearbyPageFragment.8(this);
  private k.b<LocalIssueResponse> Q = new NearbyPageFragment.9(this);
  private k.b<TrendingSearches> R = new NearbyPageFragment.10(this);
  private Runnable S = new NearbyPageFragment.2(this);
  private Parcelable a;
  private cy c;
  private cw d;
  private cx e;
  private cz f;
  private et g;
  private LocalIssueFromLocationRequest j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private boolean p;
  private boolean q;
  private boolean r;
  private int s;
  private int t;
  private boolean u;
  private boolean v = false;
  private ErrorType w;
  private aj x;
  private PanelError y;
  private com.yelp.android.ui.util.e z;
  
  private void H()
  {
    if (m().getHeaderViewsCount() == 1)
    {
      I.a(m());
      if (!J) {
        i();
      }
      a(x);
      x();
    }
  }
  
  public static NearbyPageFragment a(boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("args_show_location_permission", paramBoolean);
    NearbyPageFragment localNearbyPageFragment = new NearbyPageFragment();
    localNearbyPageFragment.setArguments(localBundle);
    return localNearbyPageFragment;
  }
  
  private String a(com.yelp.android.appdata.webrequests.core.b paramb)
  {
    if (paramb != null) {
      return paramb.i_();
    }
    return null;
  }
  
  private void a(TrendingSearches paramTrendingSearches)
  {
    if ((paramTrendingSearches == null) || (paramTrendingSearches.b().isEmpty())) {
      return;
    }
    ArrayList localArrayList = paramTrendingSearches.b();
    f localf = new f(this);
    localf.a(localArrayList);
    x.a(2131689544, aj.c.a(paramTrendingSearches.a(), localf).a(2130772429).a(2131690809, n.l, n.c).b());
  }
  
  private void a(ArrayList<YelpCheckIn> paramArrayList)
  {
    if ((paramArrayList == null) || (paramArrayList.isEmpty())) {
      return;
    }
    E = new NearbyFriends(getActivity(), null);
    E.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
    com.yelp.android.ui.util.e locale = new com.yelp.android.ui.util.e(new View[] { E });
    int i = 0;
    for (;;)
    {
      if (i < paramArrayList.size())
      {
        if (!TextUtils.isEmpty(((YelpCheckIn)paramArrayList.get(i)).c()))
        {
          paramArrayList.add(0, paramArrayList.get(i));
          paramArrayList.remove(i + 1);
        }
      }
      else
      {
        E.setCheckIns(paramArrayList);
        String str = getString(2131165629);
        E.setOnClickListener(new ak(EventIri.NearbyFriends, ActivityComboNearbyCheckIns.a(E.getContext(), paramArrayList, str)));
        x.a(2131689523, aj.c.a(locale).a(2130772429).b());
        return;
      }
      i += 1;
    }
  }
  
  private void a(List<NearbyRow> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()))
    {
      t = 0;
      return;
    }
    t = paramList.size();
    int i = 0;
    label31:
    Object localObject1;
    Object localObject2;
    if (i < t)
    {
      localObject1 = (NearbyRow)paramList.get(i);
      localObject2 = new b(((NearbyRow)localObject1).c());
      if (((NearbyRow)localObject1).b() < ((NearbyRow)localObject1).e().size()) {
        break label301;
      }
      ((b)localObject2).a(((NearbyRow)localObject1).e());
      ((b)localObject2).a(false);
    }
    for (;;)
    {
      localObject2 = aj.c.a(((NearbyRow)localObject1).d(), (BaseAdapter)localObject2).a(2130772429);
      if (((NearbyRow)localObject1).e().size() > ((NearbyRow)localObject1).b())
      {
        View localView = getActivity().getLayoutInflater().inflate(2130903302, m(), false);
        if (i == paramList.size() - 1)
        {
          int i1 = getActivity().getResources().getDimensionPixelSize(2131361958);
          findViewById2131689503getLayoutParamsbottomMargin = i1;
        }
        ((TextView)localView.findViewById(2131690409)).setText(StringUtils.a(getActivity(), 2131230745, ((NearbyRow)localObject1).e().size() - ((NearbyRow)localObject1).b()));
        localObject1 = localView.findViewById(2131689503);
        ((View)localObject1).setEnabled(true);
        ((View)localObject1).setOnClickListener(new NearbyPageFragment.b(this, (ArrayList)paramList, i, null));
        ((aj.c)localObject2).a(localView);
      }
      x.a(i, ((aj.c)localObject2).b());
      i += 1;
      break label31;
      break;
      label301:
      ((b)localObject2).a(((NearbyRow)localObject1).e().subList(0, ((NearbyRow)localObject1).b()));
      ((b)localObject2).a(true);
    }
  }
  
  private void b(ErrorType paramErrorType)
  {
    if (paramErrorType == ErrorType.NO_ERROR) {
      return;
    }
    if (!o)
    {
      o = true;
      y = new PanelError(getActivity());
      y.a(this);
      y.a(paramErrorType);
      z = new com.yelp.android.ui.util.e(new View[] { y });
      x.a(2131689510, aj.c.a(z).b());
    }
    if (paramErrorType == ErrorType.LOCATION_SERVICES_DISABLED) {
      LocationSettingsDialog.a(false, 2131166913).show(getFragmentManager(), null);
    }
    a(x);
    m().f();
    l();
    c(false);
  }
  
  private void b(List<Event> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {}
    do
    {
      do
      {
        return;
        com.yelp.android.ui.activities.events.f localf = new com.yelp.android.ui.activities.events.f(this);
        localf.a(paramList);
        x.a(2131166754, aj.c.a(getResources().getString(2131166754), localf).a(2130772429).a(2131689503, n.l, n.c).b());
      } while (t <= 0);
      paramList = x.a(t - 1).b();
    } while (paramList == null);
    findViewById2131689503getLayoutParamsbottomMargin = 0;
  }
  
  private void c(ErrorType paramErrorType)
  {
    if (paramErrorType == ErrorType.NO_ERROR) {}
    do
    {
      return;
      s += 1;
      if (paramErrorType.isMoreImportant(w)) {
        w = paramErrorType;
      }
    } while (s != 6);
    b(w);
  }
  
  private void c(List<?> paramList)
  {
    if (paramList.isEmpty())
    {
      c(ErrorType.NO_RESULTS);
      return;
    }
    h();
  }
  
  private void f()
  {
    H_();
    F.a();
    s = 0;
    w = ErrorType.NO_ERROR;
    if (L != null) {
      L.removeCallbacksAndMessages(null);
    }
    L = new Handler();
    v = false;
    L.postDelayed(S, 2000L);
    if ((c == null) && (J))
    {
      c = new cy(M);
      c.a(new Void[0]);
      I.b();
    }
    if (e == null)
    {
      e = new cx(P);
      if (!AppData.b().q().b()) {
        break label299;
      }
      e.a(new Void[0]);
    }
    for (;;)
    {
      if (f == null)
      {
        f = new cz(N);
        f.a(new Void[0]);
      }
      if (d == null)
      {
        d = new cw(O);
        d.a(new Void[0]);
      }
      if (j == null)
      {
        j = new LocalIssueFromLocationRequest(LocalIssueFromLocationRequest.LocalIssueSource.NEARBY, Q);
        j.a(new Void[0]);
      }
      if (g == null)
      {
        g = new et(R);
        g.a(new Void[0]);
      }
      return;
      label299:
      c(ErrorType.NO_RESULTS);
    }
  }
  
  private void h()
  {
    if ((c == null) || (!c.u()))
    {
      if ((!k) && (J)) {
        i();
      }
      if ((g == null) || (!g.u()))
      {
        if ((com.yelp.android.appdata.experiment.e.m.a(TrendingSearchesExperiment.Cohort.trending_searches_nearby_list_enabled)) && (!r))
        {
          a(H);
          r = true;
        }
        if ((e == null) || (!e.u()))
        {
          if (!l)
          {
            a(C);
            l = true;
          }
          if (!q)
          {
            u();
            q = true;
          }
          if ((j == null) || (!j.u()))
          {
            if (!p)
            {
              t();
              p = true;
            }
            if ((f == null) || (!f.u()))
            {
              if (!m)
              {
                if ((F != null) && (A != null) && (!A.isEmpty())) {
                  F.b();
                }
                a(A);
                m = true;
              }
              if ((d == null) || (!d.u()))
              {
                if (!n)
                {
                  b(B);
                  n = true;
                }
                a(x);
                b(true);
                l();
              }
            }
          }
        }
      }
    }
  }
  
  private void i()
  {
    I.a(D, a(c));
    k = true;
    l();
  }
  
  private void t()
  {
    if ((G != null) && (G.f() != null))
    {
      Object localObject = LayoutInflater.from(getActivity()).inflate(2130903435, m(), false);
      ((TextView)((View)localObject).findViewById(2131689641)).setText(G.d());
      ((TextView)((View)localObject).findViewById(2131690343)).setText(G.e());
      ImageView localImageView = (ImageView)((View)localObject).findViewById(2131690740);
      t.a(this).a(G.c()).a(localImageView);
      localImageView.setAlpha(0.9F);
      ((View)localObject).setOnClickListener(new NearbyPageFragment.3(this));
      localObject = new com.yelp.android.ui.util.e(new View[] { localObject });
      x.a(2131689522, aj.c.a((BaseAdapter)localObject).b());
      AppData.a(EventIri.NearbyLocalIssueShown);
      return;
    }
    AppData.a(EventIri.NearbyLocalIssueUnavailable);
  }
  
  private void u()
  {
    View localView = LayoutInflater.from(getActivity()).inflate(2130903414, m(), false);
    com.yelp.android.ui.util.e locale = new com.yelp.android.ui.util.e(new View[] { localView });
    x.a(2131689513, aj.c.a(locale).b());
    ((YelpActivity)getActivity()).setupInAppNotification(getClass(), getContext(), (InAppNotificationView)localView.findViewById(2131689513), null);
  }
  
  private ErrorType v()
  {
    if (k.b(getActivity(), PermissionGroup.LOCATION)) {
      return ErrorType.NO_LOCATION_PERMISSION;
    }
    return ErrorType.LOCATION_SERVICES_DISABLED;
  }
  
  private void w()
  {
    if (z != null) {
      z.clear();
    }
  }
  
  private void x()
  {
    m().a(new NearbyPageFragment.4(this), YelpLoadingSpinner.FINDING_PLACES);
    PanelLoading localPanelLoading = m().getLoadingPanel();
    localPanelLoading.setPadding(localPanelLoading.getPaddingLeft(), 100, localPanelLoading.getPaddingRight(), localPanelLoading.getPaddingBottom());
  }
  
  public void H_()
  {
    super.a(null, 0);
    PanelLoading localPanelLoading = C();
    localPanelLoading.setSpinner(YelpLoadingSpinner.FINDING_PLACES);
    localPanelLoading.setBackgroundResource(2130838273);
    localPanelLoading.setClickable(false);
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramView = paramView.getContext();
    paramListView = paramListView.getAdapter().getItem(paramInt);
    if ((paramListView instanceof NearbyResult))
    {
      paramListView = (NearbyResult)paramListView;
      TreeMap localTreeMap = new TreeMap();
      localTreeMap.put("row_id", paramListView.a());
      localTreeMap.put("result_id", paramListView.d());
      AppData.a(EventIri.NearbySuggestion, localTreeMap);
      startActivity(ActivityBusinessPage.b(paramView, paramListView.b()));
    }
    do
    {
      do
      {
        return;
        if (!(paramListView instanceof Event)) {
          break;
        }
        paramListView = (Event)paramListView;
        if (paramListView != com.yelp.android.ui.activities.events.f.a)
        {
          startActivity(ActivityEventPage.a(paramView, paramListView, IriSource.Nearby));
          return;
        }
        AppData.a(EventIri.NearbyEvents);
      } while (B == null);
      startActivity(ActivityEvents.a(paramView));
      return;
    } while (!(paramListView instanceof RichSearchSuggestion));
    paramListView = (RichSearchSuggestion)paramListView;
    paramView = new com.yelp.android.g.a();
    paramView.put("category", paramListView.i());
    paramView.put("type", paramListView.a().name());
    AppData.a(EventIri.NearbyCategory, paramView);
    startActivity(ActivityNearby.a(getContext(), paramListView.h()));
  }
  
  public com.yelp.android.analytics.iris.a getIri()
  {
    return ViewIri.Nearby;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    parama = new com.yelp.android.g.a();
    j.a(parama, "mobile_nearby_new_tag", "nearby_new_tag");
    j.a(parama, "vertical_search_nearby_suggest_prominence", "vertical_search_nearby_suggest_prominence_experiment");
    return parama;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    paramBundle = m();
    paramBundle.setItemsCanFocus(true);
    paramBundle.setPanelLoadingBackground(17170445);
    paramBundle.setBackgroundDrawable(null);
    paramBundle.setSelector(17170445);
    x = new aj();
    H();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    F = ((a)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    k = false;
    l = false;
    m = false;
    n = false;
    p = false;
    q = false;
    r = false;
    I = new a(getActivity());
    I.a();
    J = Features.nearby_search_suggest.isEnabled();
    if (paramBundle != null)
    {
      A = paramBundle.getParcelableArrayList("rows");
      B = paramBundle.getParcelableArrayList("events");
      C = paramBundle.getParcelableArrayList("checkins");
      D = paramBundle.getParcelableArrayList("category_suggestions");
      w = ((ErrorType)paramBundle.getSerializable("most_important_error"));
      K = paramBundle.getLong("nearby_last_refresh_time", System.currentTimeMillis());
      a = paramBundle.getParcelable("list_state");
      G = ((LocalIssue)paramBundle.getParcelable("local_issue"));
      H = ((TrendingSearches)paramBundle.getParcelable("trending_searches"));
    }
    for (;;)
    {
      ((YelpActivity)getActivity()).registerDirtyEventReceiver("com.yelp.android.events.update", new NearbyPageFragment.1(this));
      return;
      B = new ArrayList();
      K = System.currentTimeMillis();
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
    a = m().onSaveInstanceState();
    super.onPause();
    if (L != null) {
      L.removeCallbacksAndMessages(null);
    }
    a("nearby_event_request", d);
    a("nearby_friends_request", e);
    a("nearby_suggest_request", f);
    a("nearby_search_suggest_request", c);
    a("local_issue_request", j);
    a("trending_searches_request", g);
  }
  
  public void onRequestPermissionsResult(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    if (250 == paramInt)
    {
      paramArrayOfString = k.a(paramArrayOfString, paramArrayOfInt);
      if (paramArrayOfString.containsKey(PermissionGroup.LOCATION))
      {
        if (!((Boolean)paramArrayOfString.get(PermissionGroup.LOCATION)).booleanValue()) {
          break label65;
        }
        AppData.b().F();
        z();
        AppData.a(EventIri.PermissionLocationAllowed);
      }
      for (;;)
      {
        u = true;
        return;
        label65:
        AppData.a(EventIri.PermissionLocationDenied);
      }
    }
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfInt);
  }
  
  public void onResume()
  {
    super.onResume();
    d = ((cw)a("nearby_event_request", null, O));
    e = ((cx)a("nearby_friends_request", null, P));
    f = ((cz)a("nearby_suggest_request", null, N));
    c = ((cy)a("nearby_search_suggest_request", null, M));
    j = ((LocalIssueFromLocationRequest)a("local_issue_request", null, Q));
    g = ((et)a("trending_searches_request", null, R));
    if ((System.currentTimeMillis() - K > b) || (u))
    {
      p_();
      u = false;
    }
    for (;;)
    {
      if (a != null) {
        m().onRestoreInstanceState(a);
      }
      return;
      if ((A == null) || (B == null) || ((AppData.b().q().b()) && (C == null))) {
        f();
      } else {
        h();
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("events", B);
    if (A != null) {
      paramBundle.putParcelableArrayList("rows", A);
    }
    if (C != null) {
      paramBundle.putParcelableArrayList("checkins", C);
    }
    if (D != null) {
      paramBundle.putParcelableArrayList("category_suggestions", D);
    }
    if (G != null) {
      paramBundle.putParcelable("local_issue", G);
    }
    if (H != null) {
      paramBundle.putParcelable("trending_searches", H);
    }
    paramBundle.putSerializable("most_important_error", w);
    paramBundle.putLong("nearby_last_refresh_time", K);
    paramBundle.putParcelable("list_state", m().onSaveInstanceState());
  }
  
  public void p_()
  {
    w();
    x = new aj();
    if (J) {
      I.c();
    }
    x();
    k = false;
    l = false;
    m = false;
    p = false;
    n = false;
    o = false;
    q = false;
    r = false;
    c(c);
    c = null;
    c(f);
    f = null;
    c(e);
    e = null;
    c(d);
    d = null;
    c(j);
    j = null;
    c(g);
    g = null;
    D = null;
    B = null;
    A = null;
    C = null;
    G = null;
    H = null;
    f();
    K = System.currentTimeMillis();
  }
  
  public void q_()
  {
    if (y.getErrorType() == ErrorType.NO_LOCATION_PERMISSION)
    {
      k.a(this, 250, new PermissionGroup[] { PermissionGroup.LOCATION });
      return;
    }
    z();
    p_();
  }
  
  protected static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.NearbyPageFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */