package com.yelp.android.ui.activities.search;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.database.DataSetObserver;
import android.location.Address;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.google.android.gms.maps.GoogleMap.OnCameraChangeListener;
import com.google.android.gms.maps.model.LatLngBounds;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.ap;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.SearchMode;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchOption;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fv;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.av.a;
import com.yelp.android.database.l;
import com.yelp.android.serializable.AttributeFilters;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.SearchResultLocalAd;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.fi;
import com.yelp.android.ui.activities.support.YelpMapActivity;
import com.yelp.android.ui.activities.support.o;
import com.yelp.android.ui.dialogs.ChoiceDialog;
import com.yelp.android.ui.dialogs.FiltersDialog;
import com.yelp.android.ui.dialogs.aj;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.b;
import com.yelp.android.ui.map.f;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.YelpLoadingSpinner;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class SearchBusinessesByMap
  extends YelpMapActivity
  implements ax, ay, aj
{
  ap a;
  private TextView b;
  private YelpMap<YelpBusiness> c;
  private ArrayList<String> d;
  private String e;
  private List<SearchResultLocalAd> f;
  private b g;
  private LatLngBounds h;
  private PanelLoading i;
  private final Runnable j = new s(this);
  private final o k = new t(this);
  private final j<Void> l = new u(this);
  private final DataSetObserver m = new v(this);
  private final GoogleMap.OnCameraChangeListener n = new w(this);
  private final f<YelpBusiness> o = new y(this);
  
  public static Intent a(Context paramContext, Intent paramIntent)
  {
    paramIntent.setClass(paramContext, SearchBusinessesByMap.class);
    paramIntent.setFlags(536870912);
    paramIntent.addFlags(67108864);
    return paramIntent;
  }
  
  public static Intent a(Context paramContext, SearchRequest paramSearchRequest)
  {
    Intent localIntent = new Intent(paramContext, SearchBusinessesByMap.class);
    ap.a(paramSearchRequest, localIntent);
    Object localObject2 = paramSearchRequest.getSearchTerms();
    Object localObject1 = localObject2;
    if (TextUtils.isEmpty((CharSequence)localObject2))
    {
      localObject1 = localObject2;
      if (paramSearchRequest.getCategory() != null) {
        localObject1 = paramSearchRequest.getCategory().getName();
      }
    }
    localObject2 = localObject1;
    if (TextUtils.isEmpty((CharSequence)localObject1))
    {
      localObject2 = localObject1;
      if (paramSearchRequest.getSearchOptions().contains(SearchRequest.SearchOption.CHECK_IN_OFFERS)) {
        localObject2 = paramContext.getString(2131165489);
      }
    }
    if ((TextUtils.isEmpty((CharSequence)localObject2)) && (BusinessSearchRequest.SearchMode.NEARBY == paramSearchRequest.getSearchMode())) {
      paramContext.getString(2131165475);
    }
    localIntent.addFlags(67108864);
    localIntent.addFlags(536870912);
    return localIntent;
  }
  
  private void a(SearchRequest.SearchResponse paramSearchResponse)
  {
    if (paramSearchResponse == null) {}
    do
    {
      return;
      Object localObject1 = (FiltersDialog)getSupportFragmentManager().findFragmentByTag("filters_dialog");
      if (localObject1 != null) {
        ((FiltersDialog)localObject1).a(paramSearchResponse.getSuggestedFilters());
      }
      disableLoading();
      updateOptionsMenu();
      c.f();
      f = paramSearchResponse.getLocalAds();
      Object localObject3 = BusinessSearchResult.getBusinessesFromBusinessSearchResult(paramSearchResponse.getBusinessSearchResults());
      if (((List)localObject3).size() <= 0) {
        break;
      }
      localObject1 = new ArrayList(f.size());
      Object localObject2 = f.iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((ArrayList)localObject1).add(((LocalAd)((Iterator)localObject2).next()).getBusiness());
      }
      g.a(f);
      localObject2 = new HashMap();
      int i1 = paramSearchResponse.getOffset();
      paramSearchResponse = ((List)localObject3).iterator();
      i1 += 1;
      while (paramSearchResponse.hasNext())
      {
        localObject3 = (YelpBusiness)paramSearchResponse.next();
        if (((YelpBusiness)localObject3).isLocationAccurate()) {
          ((Map)localObject2).put(localObject3, Integer.valueOf(i1));
        }
        i1 += 1;
      }
      paramSearchResponse = c.a(new ArrayList(((Map)localObject2).keySet()), new com.yelp.android.ui.map.q(this, (Map)localObject2));
      c.setInteractive(true);
      if (!((ArrayList)localObject1).isEmpty()) {
        c.a((List)localObject1, new com.yelp.android.ui.map.r(2130838151));
      }
    } while (h != null);
    c.post(paramSearchResponse);
    return;
    c.f();
    cr.a(getString(2131165768), 0);
    AppData.a("ActivityBusinessListResultsMap", "Business search returned no results.", new Object[0]);
  }
  
  private void a(SearchRequest paramSearchRequest, YelpException paramYelpException)
  {
    c.f();
    cr.a(paramYelpException.getMessage(this), 0);
  }
  
  private void a(fv paramfv)
  {
    paramfv = a(this, paramfv.a());
    paramfv.addFlags(65536);
    startActivity(paramfv);
  }
  
  private void b(Filter paramFilter)
  {
    b.setVisibility(8);
    paramFilter = Filter.getFilterDisplayString(paramFilter);
    if (!TextUtils.isEmpty(paramFilter))
    {
      b.setText(paramFilter);
      b.setVisibility(0);
    }
  }
  
  private void c()
  {
    a(a.i());
  }
  
  fv a(double[] paramArrayOfDouble)
  {
    return a.i().a(null).a(paramArrayOfDouble);
  }
  
  public void a()
  {
    c.setInfoWindowListener(o);
    a = b();
    if (a == null)
    {
      com.yelp.android.database.q localq = getAppData().i();
      a = new ap(l, localq.g());
      a.registerObserver(m);
      a(getIntent());
      return;
    }
    a.registerObserver(m);
    enableLoading();
    m.onChanged();
  }
  
  void a(Intent paramIntent)
  {
    if (a == null) {
      YelpLog.error(this, "SearchSession null in newSearch()");
    }
    do
    {
      return;
      a.j();
      if (!a.a(paramIntent))
      {
        Log.e("ActivityBusinessListResultsMap", "It was not possible to initialize this search intent + " + paramIntent);
        finish();
        return;
      }
      updateOptionsMenu();
      b(a.k());
      if (a.l() != null) {
        break;
      }
    } while (!a.b());
    enableLoading();
    return;
    m.onChanged();
  }
  
  public void a(fv paramfv, String paramString)
  {
    paramfv.a(BusinessSearchRequest.SearchMode.DEFAULT);
    Intent localIntent = new Intent("android.intent.action.SEARCH");
    ap.a(paramfv.a(), localIntent, null, paramString);
    localIntent.putExtra("mRecenter", true);
    localIntent.setClass(this, getClass());
    localIntent.addFlags(65536);
    localIntent.addFlags(536870912);
    startActivity(localIntent);
  }
  
  public void a(Filter paramFilter)
  {
    b(paramFilter);
    a(a.i().a(paramFilter));
  }
  
  protected void addStatusView(View paramView) {}
  
  public ap b()
  {
    return (ap)super.getLastCustomNonConfigurationInstance();
  }
  
  public void disableLoading()
  {
    super.disableLoading();
    PanelLoading localPanelLoading = getLoadingPanel();
    if (localPanelLoading.getParent() != null) {
      c.removeView(localPanelLoading);
    }
  }
  
  public void enableLoading()
  {
    PanelLoading localPanelLoading = getLoadingPanel();
    if (localPanelLoading.getParent() == null) {
      c.addView(localPanelLoading);
    }
    localPanelLoading.setVisibility(0);
    c.setOnCameraUpdate(null);
  }
  
  public void g()
  {
    Intent localIntent = new Intent(getIntent().getAction());
    SearchBusinessesByList.a(this, localIntent);
    if (a != null)
    {
      a.b(localIntent);
      a.j();
    }
    startActivity(localIntent);
    finish();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.SearchMap;
  }
  
  protected PanelLoading getLoadingPanel()
  {
    if (i == null)
    {
      PanelLoading localPanelLoading = new PanelLoading(l());
      localPanelLoading.a();
      localPanelLoading.d();
      localPanelLoading.setSpinner(YelpLoadingSpinner.FINDING_PLACES);
      i = localPanelLoading;
    }
    return i;
  }
  
  public void h()
  {
    boolean bool = true;
    if (a == null)
    {
      YelpLog.error(this, "mSearchSession null in onFilterSelected");
      return;
    }
    int i1;
    label29:
    AttributeFilters localAttributeFilters;
    label61:
    Filter localFilter;
    if (a.l() != null)
    {
      i1 = 1;
      if ((i1 == 0) || (a.l().getSuggestedFilters() == null)) {
        break label108;
      }
      localAttributeFilters = a.l().getSuggestedFilters();
      if (getSupportFragmentManager().findFragmentByTag("filters_dialog") != null) {
        break label117;
      }
      localFilter = a.k();
      if (i1 != 0) {
        break label119;
      }
    }
    for (;;)
    {
      FiltersDialog.a(localFilter, localAttributeFilters, bool).show(getSupportFragmentManager(), "filters_dialog");
      return;
      i1 = 0;
      break label29;
      label108:
      localAttributeFilters = new AttributeFilters();
      break label61;
      label117:
      break;
      label119:
      bool = false;
    }
  }
  
  public void j()
  {
    SearchUtils.b(this);
  }
  
  public List<String> k()
  {
    return d;
  }
  
  public Context l()
  {
    return this;
  }
  
  public double[] m()
  {
    if (getString(2131165671).endsWith(e)) {
      return c.getViewableRegion();
    }
    return null;
  }
  
  public int n()
  {
    return 1048;
  }
  
  public ap o()
  {
    return a;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      do
      {
        do
        {
          do
          {
            do
            {
              return;
              if ((paramInt2 != 0) && (paramIntent != null) && (a != null) && (a.l() != null))
              {
                paramInt1 = ChoiceDialog.a(paramIntent);
                paramIntent = (Address)a.l().getAmbiguousLocations().get(paramInt1);
                SearchUtils.a(this, paramIntent, a);
                a(a.i().a(paramIntent.getFeatureName()));
                return;
              }
            } while ((a == null) || (a.l() == null));
            if (paramInt2 == 0)
            {
              a(a.l());
              return;
            }
          } while (paramInt2 != -1);
          paramIntent = a.l();
          AppData.b().i().c().d();
          SearchUtils.a(this, a);
          a(a.i().b(paramIntent.getSpellingSuggestion()));
          return;
        } while ((paramIntent == null) || (!paramIntent.hasExtra("extra.business")) || (a == null));
        paramIntent = (YelpBusiness)paramIntent.getParcelableExtra("extra.business");
        a.a(paramIntent);
        return;
        updateOptionsMenu();
      } while (paramInt2 != -1);
      e = paramIntent.getStringExtra("extra.location");
      SearchUtils.a(paramIntent, this, paramIntent.getStringExtra("extra.search.launch_method"));
      return;
      if (paramInt2 == -1)
      {
        removeDialog(1011);
        cr.a(2131166688, 0);
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903110);
    d = new ArrayList();
    d.add(getString(2131165670));
    h = null;
    if (paramBundle != null) {
      h = ((LatLngBounds)paramBundle.getParcelable("mRecenter"));
    }
    c.setOptions(YelpMap.a(this, AppData.b().n().c()));
    g = new b(this);
    c.a(paramBundle, g);
    setSearchHotButtonSelected(true);
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    }
    return new fi(this, a, createPendingResult(2131166501, new Intent(), 268435456));
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    SearchUtils.a(this, paramMenu);
    return true;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      g();
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
        localIntent = a(this, a.i().b(str).a());
        SearchUtils.a(this, localIntent);
      }
    }
    setIntent(localIntent);
    a(localIntent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (!SearchUtils.a(this, paramMenuItem)) {
      return super.onOptionsItemSelected(paramMenuItem);
    }
    return true;
  }
  
  protected void onPause()
  {
    super.onPause();
    getHandler().removeCallbacks(j);
    if ((isFinishing()) && (a != null))
    {
      a.unregisterAll();
      a.j();
    }
    c.b();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    SearchUtils.a(this, paramMenu);
    return super.onPrepareOptionsMenu(paramMenu);
  }
  
  protected void onResume()
  {
    super.onResume();
    c.c();
    a.a(this, AppData.b());
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
  
  public void onSupportContentChanged()
  {
    super.onSupportContentChanged();
    b = ((TextView)findViewById(2131493290));
    c = ((YelpMap)findViewById(2131493221));
  }
  
  protected void setHotButtonListeners()
  {
    super.setHotButtonListeners();
    findViewById(2131493632).setOnClickListener(new r(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */