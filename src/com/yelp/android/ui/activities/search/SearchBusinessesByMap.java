package com.yelp.android.ui.activities.search;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.DataSetObserver;
import android.location.Address;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.c.c;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.VisibleRegion;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.o;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.BusinessSearchResponse;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.SearchMode;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest;
import com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest.OfflineAttributionEventType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.aw;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.eo;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.ContinueLastOrderInfo;
import com.yelp.android.serializable.DisplayGenericSearchFilter;
import com.yelp.android.serializable.DisplayGenericSearchFilterParameters;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.SearchLocation;
import com.yelp.android.serializable.SearchResultLocalAd;
import com.yelp.android.serializable.SearchSeparator;
import com.yelp.android.serializable.Sort;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.support.YelpMapActivity;
import com.yelp.android.ui.activities.support.b.e;
import com.yelp.android.ui.dialogs.DidYouMeanDialog;
import com.yelp.android.ui.dialogs.FiltersDialog;
import com.yelp.android.ui.dialogs.FiltersDialog.a;
import com.yelp.android.ui.dialogs.ListDialogFragment;
import com.yelp.android.ui.dialogs.ListDialogFragment.a;
import com.yelp.android.ui.dialogs.SimpleListDialogFragment;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.YelpMapWrapperLayout;
import com.yelp.android.ui.map.e.a;
import com.yelp.android.ui.map.i;
import com.yelp.android.ui.map.m;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.YelpLoadingSpinner;
import com.yelp.android.ui.util.ab;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.BasicBroadcastReceiver;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class SearchBusinessesByMap
  extends YelpMapActivity
  implements d.a, e, FiltersDialog.a
{
  o a;
  private TextView b;
  private View c;
  private YelpMap<BusinessSearchResult> d;
  private ArrayList<String> e;
  private String f;
  private List<SearchResultLocalAd> g;
  private i h;
  private u i;
  private aw j;
  private LatLngBounds k;
  private PanelLoading l;
  private final Runnable m = new Runnable()
  {
    public void run()
    {
      SearchBusinessesByMap.c(SearchBusinessesByMap.this);
    }
  };
  private final b.e n = new b.e()
  {
    public void a(boolean paramAnonymousBoolean)
    {
      if (paramAnonymousBoolean) {
        d.a(SearchBusinessesByMap.this);
      }
    }
    
    public void b()
    {
      a(getIntent());
    }
  };
  private final k.b<Void> o = new k.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid) {}
    
    public boolean a()
    {
      onProvidersRequired(SearchBusinessesByMap.d(SearchBusinessesByMap.this), true, 0);
      return false;
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      Log.e("ActivityBusinessListResultsMap", "Error searching for businesses:\n" + paramAnonymousYelpException.getMessage(), paramAnonymousYelpException);
      SearchBusinessesByMap.a(SearchBusinessesByMap.this, paramAnonymousYelpException);
    }
  };
  private final DataSetObserver p = new DataSetObserver()
  {
    public void onChanged()
    {
      super.onChanged();
      SearchBusinessesByMap.a(SearchBusinessesByMap.this).setOnCameraUpdate(SearchBusinessesByMap.e(SearchBusinessesByMap.this));
      SearchBusinessesByMap.a(SearchBusinessesByMap.this, null);
      SearchRequest.SearchResponse localSearchResponse = a.k();
      if (localSearchResponse == null) {
        return;
      }
      disableLoading();
      String str = localSearchResponse.d();
      if (!localSearchResponse.a().isEmpty()) {
        SearchBusinessesByMap.a(SearchBusinessesByMap.this, localSearchResponse);
      }
      for (;;)
      {
        SearchBusinessesByMap.a(SearchBusinessesByMap.this, a);
        return;
        if (!TextUtils.isEmpty(str)) {
          startActivityForResult(DidYouMeanDialog.a(SearchBusinessesByMap.this, 2131165777, str), 1056);
        } else {
          SearchBusinessesByMap.b(SearchBusinessesByMap.this, localSearchResponse);
        }
      }
    }
  };
  private final c.c q = new c.c()
  {
    public void a(CameraPosition paramAnonymousCameraPosition)
    {
      SearchBusinessesByMap.a(SearchBusinessesByMap.this).getMapView().a(new com.google.android.gms.maps.e()
      {
        public void a(c paramAnonymous2c)
        {
          paramAnonymous2c = dae;
          if ((SearchBusinessesByMap.f(SearchBusinessesByMap.this) != null) && (!paramAnonymous2c.equals(SearchBusinessesByMap.f(SearchBusinessesByMap.this))))
          {
            if (SearchBusinessesByMap.g(SearchBusinessesByMap.this).size() < 2) {
              SearchBusinessesByMap.g(SearchBusinessesByMap.this).add(getString(2131165746));
            }
            SearchBusinessesByMap.b(SearchBusinessesByMap.this).setVisibility(0);
          }
          SearchBusinessesByMap.a(SearchBusinessesByMap.this, paramAnonymous2c);
        }
      });
    }
  };
  private final e.a<BusinessSearchResult> r = new e.a()
  {
    public void a(BusinessSearchResult paramAnonymousBusinessSearchResult)
    {
      SearchBusinessesByMap.this.a(paramAnonymousBusinessSearchResult);
    }
    
    public void b(BusinessSearchResult paramAnonymousBusinessSearchResult)
    {
      Iterator localIterator = SearchBusinessesByMap.h(SearchBusinessesByMap.this).iterator();
      while (localIterator.hasNext())
      {
        SearchResultLocalAd localSearchResultLocalAd = (SearchResultLocalAd)localIterator.next();
        YelpBusiness localYelpBusiness = paramAnonymousBusinessSearchResult.a();
        if (localSearchResultLocalAd.a().equals(localYelpBusiness))
        {
          AppData.a(EventIri.AdSearchMapImpression, localSearchResultLocalAd.a(false));
          TrackOfflineAttributionRequest.a(localYelpBusiness, TrackOfflineAttributionRequest.OfflineAttributionEventType.AD_IMPRESSION);
        }
      }
    }
  };
  private final ListDialogFragment.a s = new ListDialogFragment.a()
  {
    public void a(String paramAnonymousString, Parcelable paramAnonymousParcelable)
    {
      if ((a != null) && (a.k() != null))
      {
        d.a(SearchBusinessesByMap.this, paramAnonymousString, a);
        SearchBusinessesByMap.a(SearchBusinessesByMap.this, a.h().a(paramAnonymousString));
      }
    }
  };
  private final ApiRequest.b<ContinueLastOrderInfo> t = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, ContinueLastOrderInfo paramAnonymousContinueLastOrderInfo)
    {
      d.a((aw)paramAnonymousApiRequest, paramAnonymousContinueLastOrderInfo, a);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException) {}
  };
  private final BasicBroadcastReceiver u = new BasicBroadcastReceiver(new IntentFilter[] { ObjectDirtyEvent.a("com.yelp.android.business.update") })
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      paramAnonymousContext = (YelpBusiness)ObjectDirtyEvent.a(paramAnonymousIntent);
      if ((paramAnonymousContext != null) && (a != null) && (a.k() != null) && (a.k().b() != null)) {
        BusinessSearchResult.a(a.k().b(), paramAnonymousContext);
      }
    }
  };
  
  public static Intent a(Context paramContext, Intent paramIntent)
  {
    paramIntent.setClass(paramContext, SearchBusinessesByMap.class);
    paramIntent.setFlags(536870912);
    paramIntent.addFlags(67108864);
    return paramIntent;
  }
  
  public static Intent a(Context paramContext, SearchRequest paramSearchRequest)
  {
    paramContext = new Intent(paramContext, SearchBusinessesByMap.class);
    o.a(paramSearchRequest, paramContext);
    paramContext.addFlags(67108864);
    paramContext.addFlags(536870912);
    return paramContext;
  }
  
  private void a(o paramo)
  {
    Object localObject1 = null;
    b.setVisibility(8);
    Object localObject2 = paramo.k().l();
    Object localObject3 = paramo.j();
    if (localObject3 == null)
    {
      paramo = null;
      if (localObject3 != null) {
        break label156;
      }
      label39:
      paramo = d.a(paramo, (Sort)localObject1, (List)localObject2);
      if (localObject2 == null) {
        break label165;
      }
      localObject3 = ((List)localObject2).iterator();
      label58:
      localObject1 = paramo;
      if (!((Iterator)localObject3).hasNext()) {
        break label167;
      }
      localObject1 = (DisplayGenericSearchFilter)((Iterator)localObject3).next();
      if ((!((DisplayGenericSearchFilter)localObject1).e()) || (!((DisplayGenericSearchFilter)localObject1).d())) {
        break label191;
      }
      localObject2 = Html.fromHtml(((DisplayGenericSearchFilter)localObject1).i().d()).toString();
      localObject1 = localObject2;
      if (TextUtils.isEmpty(paramo)) {}
    }
    label156:
    label165:
    label167:
    label191:
    for (localObject1 = paramo + ", " + (String)localObject2;; localObject1 = paramo)
    {
      paramo = (o)localObject1;
      break label58;
      paramo = ((Filter)localObject3).d();
      break;
      localObject1 = ((Filter)localObject3).b();
      break label39;
      localObject1 = paramo;
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        b.setText((CharSequence)localObject1);
        b.setVisibility(0);
      }
      return;
    }
  }
  
  private void a(SearchRequest.SearchResponse paramSearchResponse)
  {
    if (paramSearchResponse == null) {
      return;
    }
    Object localObject1 = (FiltersDialog)getSupportFragmentManager().a("filters_dialog");
    if (localObject1 != null) {
      ((FiltersDialog)localObject1).a(paramSearchResponse.l());
    }
    disableLoading();
    updateOptionsMenu();
    d.g();
    g = paramSearchResponse.j();
    Object localObject2 = paramSearchResponse.b();
    Object localObject3;
    int i1;
    label187:
    int i2;
    Object localObject4;
    if (((List)localObject2).size() > 0)
    {
      localObject1 = new ArrayList(g.size());
      localObject3 = g.iterator();
      while (((Iterator)localObject3).hasNext()) {
        ((ArrayList)localObject1).add(((SearchResultLocalAd)((Iterator)localObject3).next()).e());
      }
      h.a(g);
      localObject3 = paramSearchResponse.m();
      if ((localObject3 != null) && (!((List)localObject3).isEmpty()))
      {
        localObject3 = ((List)localObject3).iterator();
        i1 = Integer.MAX_VALUE;
        i2 = i1;
        if (!((Iterator)localObject3).hasNext()) {
          break label233;
        }
        localObject4 = (SearchSeparator)((Iterator)localObject3).next();
        if (((SearchSeparator)localObject4).a() >= i1) {
          break label498;
        }
        i1 = ((SearchSeparator)localObject4).a();
      }
    }
    label233:
    label328:
    label498:
    for (;;)
    {
      break label187;
      i2 = Integer.MAX_VALUE;
      localObject3 = new HashMap();
      localObject4 = new ArrayList();
      i1 = paramSearchResponse.g();
      localObject2 = ((List)localObject2).iterator();
      if (((Iterator)localObject2).hasNext())
      {
        BusinessSearchResult localBusinessSearchResult = (BusinessSearchResult)((Iterator)localObject2).next();
        if (localBusinessSearchResult.a().p())
        {
          if (i1 >= i2) {
            break label328;
          }
          ((Map)localObject3).put(localBusinessSearchResult, Integer.valueOf(i1 + 1));
        }
        for (;;)
        {
          i1 += 1;
          break;
          ((ArrayList)localObject4).add(localBusinessSearchResult);
        }
      }
      d.a(new ArrayList(((Map)localObject3).keySet()), new com.yelp.android.ui.map.l(this, (Map)localObject3));
      if (!((ArrayList)localObject4).isEmpty()) {
        d.a((List)localObject4, new m(2130838390), true);
      }
      d.setInteractive(true);
      if (!((ArrayList)localObject1).isEmpty()) {
        d.a((List)localObject1, new m(2130838387), true);
      }
      d.f();
      if (!(paramSearchResponse instanceof BusinessSearchRequest.BusinessSearchResponse)) {
        break;
      }
      paramSearchResponse = ((BusinessSearchRequest.BusinessSearchResponse)paramSearchResponse).n();
      i.a(this, paramSearchResponse);
      return;
      d.g();
      as.a(getString(2131165854), 0);
      AppData.a("ActivityBusinessListResultsMap", "Business search returned no results.", new Object[0]);
      return;
    }
  }
  
  private void a(YelpException paramYelpException)
  {
    d.g();
    as.a(paramYelpException.getMessage(this), 0);
  }
  
  private void a(eo parameo)
  {
    parameo = a(this, parameo.a());
    parameo.addFlags(65536);
    startActivity(parameo);
  }
  
  private void b(SearchRequest.SearchResponse paramSearchResponse)
  {
    ListDialogFragment localListDialogFragment = (ListDialogFragment)getSupportFragmentManager().a("search_location_dialog");
    Object localObject = localListDialogFragment;
    if (localListDialogFragment == null)
    {
      localObject = new ArrayList();
      paramSearchResponse = paramSearchResponse.a().iterator();
      while (paramSearchResponse.hasNext()) {
        ((ArrayList)localObject).add(Pair.create(((Address)paramSearchResponse.next()).getFeatureName(), (Parcelable)null));
      }
      localObject = SimpleListDialogFragment.b(2131165777, (List)localObject);
      ((ListDialogFragment)localObject).show(getSupportFragmentManager(), "search_location_dialog");
    }
    ((ListDialogFragment)localObject).a(s);
  }
  
  private void d()
  {
    a(a.h());
  }
  
  eo a(double[] paramArrayOfDouble)
  {
    paramArrayOfDouble = a.h().a(null).a(paramArrayOfDouble);
    k = null;
    return paramArrayOfDouble;
  }
  
  public void a()
  {
    d.setInfoWindowListener(r);
    a = b();
    if (a == null)
    {
      com.yelp.android.database.g localg = getAppData().i();
      a = new o(o, localg.e());
      a.registerObserver(p);
      a(getIntent());
      return;
    }
    a.registerObserver(p);
    enableLoading();
    p.onChanged();
    u.a(this);
  }
  
  void a(Intent paramIntent)
  {
    if (a == null)
    {
      YelpLog.remoteError(this, "SearchSession null in newSearch()");
      return;
    }
    a.i();
    if (!a.a(paramIntent))
    {
      Log.e("ActivityBusinessListResultsMap", "It was not possible to initialize this search intent + " + paramIntent);
      finish();
      return;
    }
    updateOptionsMenu();
    if (a.k() == null) {
      if (a.a()) {
        enableLoading();
      }
    }
    for (;;)
    {
      if (u.c()) {
        u.b(this);
      }
      u.a(this);
      return;
      p.onChanged();
    }
  }
  
  public void a(eo parameo, String paramString)
  {
    parameo.a(BusinessSearchRequest.SearchMode.DEFAULT);
    Intent localIntent = new Intent("android.intent.action.SEARCH");
    o.a(parameo.a(), localIntent, null, paramString);
    localIntent.putExtra("mRecenter", true);
    localIntent.setClass(this, getClass());
    localIntent.addFlags(65536);
    localIntent.addFlags(536870912);
    startActivity(localIntent);
  }
  
  public void a(BusinessSearchResult paramBusinessSearchResult)
  {
    Object localObject = g.iterator();
    while (((Iterator)localObject).hasNext())
    {
      LocalAd localLocalAd = (LocalAd)((Iterator)localObject).next();
      YelpBusiness localYelpBusiness = paramBusinessSearchResult.a();
      if (localLocalAd.a().equals(localYelpBusiness))
      {
        AppData.a(EventIri.AdSearchMapClick, localLocalAd.a(false));
        TrackOfflineAttributionRequest.a(localYelpBusiness, TrackOfflineAttributionRequest.OfflineAttributionEventType.AD_CLICK);
      }
    }
    if (a == null) {}
    for (localObject = null;; localObject = a.o())
    {
      startActivityForResult(ActivityBusinessPage.a(this, paramBusinessSearchResult, (SearchRequest)localObject), 1010);
      return;
    }
  }
  
  public void a(Filter paramFilter, SearchLocation paramSearchLocation)
  {
    eo localeo = a.h();
    localeo.a(paramFilter);
    if (paramSearchLocation != null) {
      paramSearchLocation.a(localeo);
    }
    a(localeo);
  }
  
  protected void addStatusView(View paramView) {}
  
  public o b()
  {
    return (o)super.getLastCustomNonConfigurationInstance();
  }
  
  public Context c()
  {
    return this;
  }
  
  public void disableLoading()
  {
    super.disableLoading();
    PanelLoading localPanelLoading = getLoadingPanel();
    if (localPanelLoading.getParent() != null) {
      d.removeView(localPanelLoading);
    }
  }
  
  public void enableLoading()
  {
    PanelLoading localPanelLoading = getLoadingPanel();
    if (localPanelLoading.getParent() == null) {
      d.addView(localPanelLoading);
    }
    localPanelLoading.setVisibility(0);
    d.setOnCameraUpdate(null);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.SearchMap;
  }
  
  protected PanelLoading getLoadingPanel()
  {
    if (l == null)
    {
      PanelLoading localPanelLoading = new PanelLoading(c());
      localPanelLoading.a();
      localPanelLoading.d();
      localPanelLoading.setSpinner(YelpLoadingSpinner.FINDING_PLACES);
      l = localPanelLoading;
    }
    return l;
  }
  
  public void i()
  {
    Intent localIntent = new Intent(getIntent().getAction());
    SearchBusinessesByList.a(this, localIntent);
    if (a != null)
    {
      a.b(localIntent);
      a.i();
    }
    startActivity(localIntent);
    finish();
  }
  
  public void j()
  {
    boolean bool = true;
    if (a == null)
    {
      YelpLog.remoteError(this, "mSearchSession null in onFilterSelected");
      return;
    }
    int i1;
    label29:
    List localList;
    label61:
    Filter localFilter;
    if (a.k() != null)
    {
      i1 = 1;
      if ((i1 == 0) || (a.k().l() == null)) {
        break label123;
      }
      localList = a.k().l();
      if (getSupportFragmentManager().a("filters_dialog") != null) {
        break label128;
      }
      localFilter = a.j();
      if (i1 != 0) {
        break label130;
      }
    }
    for (;;)
    {
      FiltersDialog.a(localFilter, bool, Collections.EMPTY_LIST, localList, SearchLocation.a(a.o())).show(getSupportFragmentManager(), "filters_dialog");
      return;
      i1 = 0;
      break label29;
      label123:
      localList = Collections.EMPTY_LIST;
      break label61;
      label128:
      break;
      label130:
      bool = false;
    }
  }
  
  public String k()
  {
    if (a.k() == null) {
      return null;
    }
    return a.k().i();
  }
  
  public List<String> l()
  {
    return e;
  }
  
  public double[] n()
  {
    if (getString(2131165746).endsWith(f)) {
      return d.getViewableRegion();
    }
    return null;
  }
  
  public int o()
  {
    return 1055;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return;
          } while ((a == null) || (a.k() == null));
          if (paramInt2 == 0)
          {
            a(a.k());
            return;
          }
        } while (paramInt2 != -1);
        paramIntent = a.k();
        AppData.b().i().b().d();
        d.a(this, a);
        a(a.h().b(paramIntent.d()));
        return;
      } while ((paramIntent == null) || (!paramIntent.hasExtra("extra.business")) || (a == null));
      paramIntent = (YelpBusiness)paramIntent.getParcelableExtra("extra.business");
      a.a(paramIntent);
      return;
      updateOptionsMenu();
    } while (paramInt2 != -1);
    f = paramIntent.getStringExtra("extra.location");
    d.a(paramIntent, this, paramIntent.getStringExtra("extra.search.launch_method"));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903121);
    e = new ArrayList();
    e.add(getString(2131165745));
    k = null;
    if (paramBundle != null) {
      k = ((LatLngBounds)paramBundle.getParcelable("mRecenter"));
    }
    i = new u(this);
    d.setOptions(YelpMap.a(AppData.b().r().c()));
    h = new i(this);
    d.a(paramBundle, h);
    paramBundle = (YelpMapWrapperLayout)findViewById(2131689949);
    paramBundle.setup(d.getMapView().getMap());
    h.a(paramBundle);
    c = findViewById(2131689950);
    c.setVisibility(8);
    c.findViewById(2131689951).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        SearchBusinessesByMap.a(SearchBusinessesByMap.this, a(SearchBusinessesByMap.a(SearchBusinessesByMap.this).getViewableRegion()));
        SearchBusinessesByMap.b(SearchBusinessesByMap.this).setVisibility(8);
      }
    });
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    if ((paramView instanceof com.yelp.android.ui.panels.e))
    {
      paramView = ((com.yelp.android.ui.panels.e)paramView).getBusinessSearchResult();
      paramContextMenu.setHeaderTitle(paramView.a().z());
      paramContextMenu.setHeaderIcon(2130837646);
      ab.a(this, paramContextMenu, paramView);
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    d.a(this, paramMenu);
    return true;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    u.b(this);
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      i();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    String str = paramIntent.getStringExtra("query");
    Intent localIntent = paramIntent;
    if (!TextUtils.isEmpty(str))
    {
      localIntent = paramIntent;
      if (a != null)
      {
        localIntent = a(this, a.h().b(str).a());
        d.a(this, localIntent);
      }
    }
    setIntent(localIntent);
    a(localIntent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (!d.a(this, paramMenuItem)) {
      return super.onOptionsItemSelected(paramMenuItem);
    }
    return true;
  }
  
  protected void onPause()
  {
    super.onPause();
    getHandler().removeCallbacks(m);
    if ((isFinishing()) && (a != null))
    {
      a.unregisterAll();
      a.i();
    }
    d.b();
    freezeRequest("continue_last_order_info_request", j);
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    d.a(this, paramMenu);
    return super.onPrepareOptionsMenu(paramMenu);
  }
  
  protected void onResume()
  {
    super.onResume();
    d.c();
    MetricsManager.a(this, AppData.b());
    setSearchHotButtonSelected(true);
    j = ((aw)thawRequest("continue_last_order_info_request", j, t));
  }
  
  public Object onRetainCustomNonConfigurationInstance()
  {
    return a;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("mRecenter", false);
    if (a != null) {
      a.b(getIntent());
    }
  }
  
  public void onStart()
  {
    super.onStart();
    i.a();
  }
  
  public void onStop()
  {
    super.onStop();
    i.b();
  }
  
  public void onSupportContentChanged()
  {
    super.onSupportContentChanged();
    b = ((TextView)findViewById(2131689947));
    d = ((YelpMap)findViewById(2131689889));
  }
  
  public o p()
  {
    return a;
  }
  
  protected void setHotButtonListeners()
  {
    super.setHotButtonListeners();
    findViewById(2131690376).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AppData.a(EventIri.HotButtonSearch);
        d.a(SearchBusinessesByMap.this);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */