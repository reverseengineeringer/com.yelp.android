package com.yelp.android.ui.activities.search;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.location.Address;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.app.FragmentManager;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ap;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.SearchMode;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.fv;
import com.yelp.android.database.q;
import com.yelp.android.serializable.AttributeFilters;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.SearchResultLocalAd;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.fi;
import com.yelp.android.ui.activities.support.o;
import com.yelp.android.ui.dialogs.ChoiceDialog;
import com.yelp.android.ui.dialogs.FiltersDialog;
import com.yelp.android.ui.dialogs.aj;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.panels.YelpLoadingSpinner;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter.DisplayFeature;
import com.yelp.android.ui.panels.businesssearch.SpellingSuggestPanel;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.bf;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bw;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.BasicBroadcastReceiver;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class SearchBusinessesByList
  extends YelpListActivity
  implements ax, ay, o, aj, aa
{
  private static List<SearchResultLocalAd> q;
  ap a;
  private bs b;
  private com.yelp.android.ui.panels.businesssearch.j c;
  private com.yelp.android.ui.panels.businesssearch.j d;
  private com.yelp.android.ui.panels.businesssearch.g<BusinessSearchResult> e;
  private com.yelp.android.ui.util.h f;
  private com.yelp.android.ui.util.h g;
  private com.yelp.android.ui.util.h h;
  private com.yelp.android.ui.util.h i;
  private SpellingSuggestPanel j;
  private String k;
  private l l;
  private SearchUtils.DirtyBusinessListener m;
  private View n;
  private SpellingSuggestPanel o;
  private View p;
  private final AdapterView.OnItemClickListener r = new g(this);
  private final com.yelp.android.appdata.webrequests.j<Void> s = new h(this);
  private final BasicBroadcastReceiver t = new i(this, Collections.singleton(new IntentFilter("com.yelp.android.offer_redeemed")));
  private final View.OnClickListener u = new j(this);
  private final View.OnClickListener v = new k(this);
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, SearchBusinessesByList.class);
  }
  
  public static Intent a(Context paramContext, Intent paramIntent)
  {
    paramIntent.setClass(paramContext, SearchBusinessesByList.class);
    paramIntent.setFlags(536870912);
    paramIntent.addFlags(67108864);
    return paramIntent;
  }
  
  public static Intent a(Context paramContext, SearchRequest paramSearchRequest)
  {
    return a(paramContext, paramSearchRequest, null, null);
  }
  
  public static Intent a(Context paramContext, SearchRequest paramSearchRequest, IriSource paramIriSource, String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.SEARCH");
    EnumSet localEnumSet = EnumSet.of(BusinessAdapter.DisplayFeature.CHECKINS);
    if ((paramSearchRequest.getSearchMode() == BusinessSearchRequest.SearchMode.NEARBY) || (TextUtils.isEmpty(paramSearchRequest.getTermNear()))) {
      localEnumSet.add(BusinessAdapter.DisplayFeature.DISTANCE);
    }
    localIntent.putExtra("extra.source", paramIriSource);
    localIntent.putExtra("extra.search_launch_method", paramString);
    localIntent.setClass(paramContext, SearchBusinessesByList.class);
    localIntent.putExtra("extra.displayFeatures", localEnumSet);
    localIntent.addFlags(536870912);
    localIntent.addFlags(67108864);
    ap.a(paramSearchRequest, localIntent, paramIriSource, paramString);
    return localIntent;
  }
  
  public static Intent a(Context paramContext, com.yelp.android.database.savedsearch.k paramk)
  {
    return a(paramContext, new fv().a(BusinessSearchRequest.SearchMode.DEFAULT).a(paramk.a()).b(paramk.b()).a(), null, null);
  }
  
  private final void a(Context paramContext, SpellingSuggestPanel paramSpellingSuggestPanel)
  {
    SearchUtils.a(paramContext, a);
    getAppData().i().c().d();
    paramSpellingSuggestPanel = String.valueOf(paramSpellingSuggestPanel.getSuggestion());
    startActivity(a(paramContext, a.i().b(paramSpellingSuggestPanel).a()));
  }
  
  private void u()
  {
    boolean bool = true;
    if (a == null)
    {
      YelpLog.error(this, "mSearchSession null in showDialog");
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
        break label110;
      }
      localAttributeFilters = a.l().getSuggestedFilters();
      if (getSupportFragmentManager().findFragmentByTag("filters_dialog") != null) {
        break label119;
      }
      localFilter = a.k();
      if (i1 != 0) {
        break label121;
      }
    }
    for (;;)
    {
      FiltersDialog.a(localFilter, localAttributeFilters, bool).show(getSupportFragmentManager(), "filters_dialog");
      return;
      i1 = 0;
      break label29;
      label110:
      localAttributeFilters = new AttributeFilters();
      break label61;
      label119:
      break;
      label121:
      bool = false;
    }
  }
  
  private void v()
  {
    int i1 = 0;
    View localView = q().getChildAt(0);
    if (localView == null) {}
    for (;;)
    {
      int i2 = q().getFirstVisiblePosition();
      AppData.b().f().a(i2, i1);
      return;
      i1 = localView.getTop() - q().getPaddingTop();
    }
  }
  
  void a(Intent paramIntent)
  {
    a.j();
    e.clear();
    e.b(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.DISTANCE });
    if (!a.a(paramIntent))
    {
      YelpLog.error(this, "Error initializing search intent " + paramIntent);
      finish();
      return;
    }
    paramIntent = (Set)paramIntent.getSerializableExtra("extra.displayFeatures");
    if (paramIntent != null)
    {
      e.c(paramIntent);
      c.c(paramIntent);
      d.c(paramIntent);
    }
    if (a.l() == null)
    {
      enableLoading();
      a.b();
    }
    for (;;)
    {
      if ((m != null) && (m.c())) {
        m.b(this);
      }
      m = new SearchUtils.DirtyBusinessListener(a);
      m.a(this);
      return;
      if (l != null) {
        l.onChanged();
      }
    }
  }
  
  public void a(fv paramfv, String paramString)
  {
    startActivity(a(this, paramfv.a(), null, paramString));
  }
  
  public void a(Filter paramFilter)
  {
    paramFilter = a(this, a.i().a(paramFilter).a());
    paramFilter.addFlags(65536);
    a(paramFilter);
  }
  
  public void a(boolean paramBoolean)
  {
    populateError(ErrorType.NO_LOCATION);
    if (paramBoolean) {
      SearchUtils.a(this);
    }
  }
  
  public ap c()
  {
    return a;
  }
  
  public void clearError()
  {
    super.clearError();
    if (n != null)
    {
      removeStatusView(n);
      n = null;
    }
    if (o != null)
    {
      removeStatusView(o);
      o = null;
    }
  }
  
  public void enableLoading()
  {
    super.enableLoading();
    getLoadingPanel().setSpinner(YelpLoadingSpinner.FINDING_PLACES);
  }
  
  public ap f()
  {
    return (ap)super.getLastCustomNonConfigurationInstance();
  }
  
  public void g()
  {
    if (!com.yelp.android.ui.map.g.a(this, 1022)) {
      return;
    }
    Intent localIntent = new Intent(getIntent().getAction());
    SearchBusinessesByMap.a(this, localIntent);
    a.b(localIntent);
    startActivity(localIntent);
    a.j();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.SearchList;
  }
  
  public void h()
  {
    u();
  }
  
  public void j()
  {
    SearchUtils.b(this);
  }
  
  public List<String> k()
  {
    String str = getResources().getString(2131165670);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(str);
    if ((a != null) && (a.p() != null) && (a.n() != null)) {
      localArrayList.add(getResources().getString(2131165671));
    }
    return localArrayList;
  }
  
  public void k_()
  {
    a(getIntent());
  }
  
  public Context l()
  {
    return this;
  }
  
  public double[] m()
  {
    if ((getString(2131165671).equals(k)) && (a != null)) {
      return a.n();
    }
    return null;
  }
  
  public void m_()
  {
    enableLoading();
    a.d();
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
      return;
      if ((paramInt2 == 0) || (paramIntent == null))
      {
        populateError(ErrorType.NO_RESULTS);
      }
      else if (a.l() != null)
      {
        int i1 = ChoiceDialog.a(paramIntent);
        Object localObject = (Address)a.l().getAmbiguousLocations().get(i1);
        SearchUtils.a(this, (Address)localObject, a);
        localObject = a(this, a.i().a(((Address)localObject).getFeatureName()).a());
        ((Intent)localObject).addFlags(65536);
        a((Intent)localObject);
        continue;
        if ((paramIntent != null) && (paramIntent.hasExtra("extra.business")))
        {
          a.a((YelpBusiness)paramIntent.getParcelableExtra("extra.business"));
          continue;
          if (paramInt2 == -1)
          {
            k = paramIntent.getStringExtra("extra.location");
            SearchUtils.a(paramIntent, this, paramIntent.getStringExtra("extra.search.launch_method"));
          }
          else
          {
            updateOptionsMenu();
            continue;
            if (paramInt2 == -1)
            {
              cr.a(2131166688, 0);
              removeDialog(1011);
            }
          }
        }
      }
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      e = new com.yelp.android.ui.panels.businesssearch.g(this, paramBundle);
    }
    a = f();
    if ((a != null) && (a.c())) {
      enableLoading();
    }
    if ((a != null) && (paramBundle != null)) {
      a.a(s);
    }
    b = new bs();
    paramBundle = new HashSet(Arrays.asList(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.ALTERNATE_NAMES, BusinessAdapter.DisplayFeature.RATING, BusinessAdapter.DisplayFeature.CATEGORY, BusinessAdapter.DisplayFeature.PRICE, BusinessAdapter.DisplayFeature.ADDRESS, BusinessAdapter.DisplayFeature.BOOKMARK, BusinessAdapter.DisplayFeature.AD }));
    c = new com.yelp.android.ui.panels.businesssearch.j(this);
    c.c(paramBundle);
    b.a(2131492923, bw.a(c).a());
    h = new com.yelp.android.ui.util.h(new View[0]);
    b.a(2131492920, h);
    d = new com.yelp.android.ui.panels.businesssearch.j(this);
    j = new SpellingSuggestPanel(l());
    p = LayoutInflater.from(this).inflate(2130903273, q(), false);
    p.setLayoutParams(new AbsListView.LayoutParams(q().getLayoutParams()));
    f = new com.yelp.android.ui.util.h(new View[0]);
    b.a(2131492921, f);
    g = new com.yelp.android.ui.util.h(new View[0]);
    b.a(2131492925, g);
    boolean bool2 = false;
    boolean bool1;
    int i1;
    Object localObject;
    if (e != null)
    {
      bool1 = bool2;
      if (a != null) {}
    }
    else
    {
      e = new com.yelp.android.ui.panels.businesssearch.g(this);
      e.a(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.ALTERNATE_NAMES, BusinessAdapter.DisplayFeature.RATING, BusinessAdapter.DisplayFeature.CATEGORY, BusinessAdapter.DisplayFeature.PRICE, BusinessAdapter.DisplayFeature.NUMBERED, BusinessAdapter.DisplayFeature.BOOKMARK, BusinessAdapter.DisplayFeature.ADDRESS });
      a = new ap(s, getDatabase().g());
      if (getIntent().getParcelableExtra("extra.query") == null) {
        break label786;
      }
      i1 = 1;
      localObject = SearchUtils.a();
      if (i1 == 0) {
        break label791;
      }
      a(getIntent());
      bool1 = bool2;
    }
    for (;;)
    {
      b.a(2131492924, bw.a(e).a());
      i = new com.yelp.android.ui.util.h(new View[0]);
      b.a(2131492919, i);
      d.c(paramBundle);
      b.a(2131492922, bw.a(d).a());
      q().setItemsCanFocus(true);
      q().setDividerHeight(0);
      q().setOnItemClickListener(r);
      q().addHeaderView(j, "spelling suggestion", true);
      q().addFooterView(p, null, false);
      q().f();
      ((TextView)p.findViewById(2131493696)).setOnClickListener(u);
      ((TextView)p.findViewById(2131493725)).setOnClickListener(new e(this));
      q().setAdapter(b);
      registerForContextMenu(q());
      paramBundle = (TextView)p.findViewById(2131493724);
      localObject = (TextView)p.findViewById(2131493726);
      setSearchHotButtonSelected(true);
      l = new l(paramBundle, p, a, e, this, (TextView)localObject, j, c, d, f, b, h, i, g, bool1);
      t.a(this);
      return;
      label786:
      i1 = 0;
      break;
      label791:
      if (localObject != null)
      {
        getIntent().putExtra("extra.query", (Parcelable)localObject);
        getIntent().putExtra("extra.offset", ((BusinessSearchRequest)localObject).getPageOffset());
        bool1 = true;
        a(getIntent());
      }
      else
      {
        populateError(ErrorType.NO_PREV_SEARCH);
        SearchUtils.a(this);
        bool1 = bool2;
      }
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    int i1 = position;
    paramView = ((ListView)paramView).getItemAtPosition(i1);
    if (paramView == null) {
      return;
    }
    if ((paramView instanceof SearchResultLocalAd))
    {
      paramContextMenuInfo = (SearchResultLocalAd)paramView;
      paramView = paramContextMenuInfo.getBusinessSearchResult();
      AppData.a(EventIri.AdSearchListClick, paramContextMenuInfo.getIriParams(false));
    }
    for (;;)
    {
      paramContextMenu.setHeaderTitle(paramView.getBusiness().getDisplayName());
      paramContextMenu.setHeaderIcon(2130837624);
      bf.a(this, paramContextMenu, paramView);
      return;
      if (!(paramView instanceof BusinessSearchResult)) {
        break;
      }
      paramView = (BusinessSearchResult)paramView;
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    }
    return new fi(this, a, createPendingResult(1011, new Intent(), 268435456));
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
    v();
    t.b(this);
    if (m != null) {
      m.b(this);
    }
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("query");
    IriSource localIriSource = (IriSource)paramIntent.getSerializableExtra("extra.source");
    String str2 = paramIntent.getStringExtra("extra.search_launch_method");
    if (!TextUtils.isEmpty(str1))
    {
      paramIntent = a(this, a.i().b(str1).a(), localIriSource, str2);
      SearchUtils.a(this, paramIntent);
    }
    setIntent(paramIntent);
    a(paramIntent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (!SearchUtils.a(this, paramMenuItem)) {
      return super.onOptionsItemSelected(paramMenuItem);
    }
    return true;
  }
  
  public void onPause()
  {
    super.onPause();
    a.unregisterObserver(l);
    v();
    AppData.b().t().b();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    SearchUtils.a(this, paramMenu);
    return super.onPrepareOptionsMenu(paramMenu);
  }
  
  protected void onResume()
  {
    super.onResume();
    a.registerObserver(l);
    AppData.b().t().a();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    e.a(paramBundle);
  }
  
  public void populateError(ErrorType paramErrorType)
  {
    super.populateError(paramErrorType);
    j.setVisibility(8);
    p.setVisibility(8);
    b.a(true);
    if (paramErrorType == ErrorType.NO_RESULTS)
    {
      getErrorPanel().b();
      if (o == null)
      {
        paramErrorType = a.l();
        if (paramErrorType != null) {
          break label212;
        }
        paramErrorType = null;
        if (!TextUtils.isEmpty(paramErrorType))
        {
          o = new SpellingSuggestPanel(this);
          localLayoutParams = new FrameLayout.LayoutParams(-1, -2);
          o.setLayoutParams(localLayoutParams);
          o.setOnClickListener(v);
          o.setSuggestion(paramErrorType);
          addStatusView(o);
        }
      }
      if (n == null)
      {
        n = LayoutInflater.from(this).inflate(2130903268, q(), false);
        paramErrorType = new FrameLayout.LayoutParams(-1, -2);
        gravity = 80;
        n.setLayoutParams(paramErrorType);
        cp.a(n, 2130838365);
        n.setOnClickListener(u);
        addStatusView(n);
      }
    }
    label212:
    while (paramErrorType != ErrorType.NO_PREV_SEARCH) {
      for (;;)
      {
        FrameLayout.LayoutParams localLayoutParams;
        return;
        paramErrorType = paramErrorType.getSpellingSuggestion();
      }
    }
    getErrorPanel().b();
  }
  
  protected void setHotButtonListeners()
  {
    super.setHotButtonListeners();
    findViewById(2131493632).setOnClickListener(new f(this));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */