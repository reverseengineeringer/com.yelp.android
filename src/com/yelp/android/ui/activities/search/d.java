package com.yelp.android.ui.activities.search;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.support.v4.view.ai;
import android.support.v7.app.ActionBarActivity;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.o;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.SearchMode;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.aw;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.eo;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.CachedSearch;
import com.yelp.android.serializable.ContinueLastOrderInfo;
import com.yelp.android.serializable.DisplayGenericSearchFilter;
import com.yelp.android.serializable.Distance;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.GenericSearchFilter;
import com.yelp.android.serializable.GenericSearchFilter.FilterType;
import com.yelp.android.serializable.Sort;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpMapActivity;
import com.yelp.android.ui.util.SuggestionFilter.SuggestionType;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;

public class d
{
  public static BusinessSearchRequest a()
  {
    CachedSearch localCachedSearch = AppData.b().f().U();
    if (localCachedSearch == null) {
      return null;
    }
    Object localObject = new eo();
    if (!TextUtils.isEmpty(localCachedSearch.e())) {
      ((eo)localObject).b(localCachedSearch.e());
    }
    for (;;)
    {
      ((eo)localObject).a(localCachedSearch.d()).a(localCachedSearch.g());
      localObject = ((eo)localObject).a();
      ((BusinessSearchRequest)localObject).a(localCachedSearch.b());
      if (TextUtils.isEmpty(localCachedSearch.f())) {
        break;
      }
      ((BusinessSearchRequest)localObject).f(localCachedSearch.f());
      return (BusinessSearchRequest)localObject;
      if (!TextUtils.isEmpty(localCachedSearch.c())) {
        ((eo)localObject).b(localCachedSearch.c());
      } else {
        ((eo)localObject).b(AppData.b().getString(2131165605));
      }
    }
  }
  
  public static DisplayGenericSearchFilter a(List<DisplayGenericSearchFilter> paramList)
  {
    if (paramList != null)
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        DisplayGenericSearchFilter localDisplayGenericSearchFilter = (DisplayGenericSearchFilter)paramList.next();
        if (localDisplayGenericSearchFilter.e()) {
          return localDisplayGenericSearchFilter;
        }
      }
    }
    return null;
  }
  
  public static DisplayGenericSearchFilter a(List<DisplayGenericSearchFilter> paramList, GenericSearchFilter.FilterType paramFilterType)
  {
    if (paramList == null) {
      return null;
    }
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      DisplayGenericSearchFilter localDisplayGenericSearchFilter = (DisplayGenericSearchFilter)paramList.next();
      if (localDisplayGenericSearchFilter.c() == paramFilterType) {
        return localDisplayGenericSearchFilter;
      }
    }
    return null;
  }
  
  public static String a(Distance paramDistance, Sort paramSort, List<DisplayGenericSearchFilter> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    AppData localAppData = AppData.b();
    if ((paramDistance != null) && (paramDistance.b() > 0.0D)) {
      localArrayList.add(localAppData.getString(2131166815, new Object[] { paramDistance.c() }));
    }
    if ((paramSort != null) && (paramSort != Sort.Default)) {
      localArrayList.add(localAppData.getString(2131165899, new Object[] { paramSort.getLabel(localAppData) }));
    }
    localArrayList.addAll(DisplayGenericSearchFilter.a(paramList));
    return TextUtils.join(", ", localArrayList);
  }
  
  public static <SearchContext extends Activity,  extends a> void a(SearchContext paramSearchContext)
  {
    a(paramSearchContext, false);
  }
  
  public static <SearchContext extends Activity,  extends a> void a(SearchContext paramSearchContext, boolean paramBoolean)
  {
    Object localObject = ((a)paramSearchContext).p();
    if (localObject == null)
    {
      YelpLog.remoteError(paramSearchContext, "searchSession in openSearchOverlay");
      return;
    }
    AppData.a(EventIri.SearchBar);
    String str = ((o)localObject).a(paramSearchContext);
    localObject = ((o)localObject).l();
    paramSearchContext.startActivityForResult(SearchOverlay.a(paramSearchContext, ((e)paramSearchContext).l(), str, (String)localObject, true, null, SuggestionFilter.SuggestionType.SEARCH, paramBoolean), ((e)paramSearchContext).o());
  }
  
  public static void a(Context paramContext, Intent paramIntent)
  {
    paramContext = new TreeMap();
    String str = paramIntent.getStringExtra("query");
    paramIntent = paramIntent.getStringExtra("user_query");
    if (TextUtils.isEmpty(paramIntent))
    {
      paramContext.put("text", str);
      paramContext.put("suggest", "");
    }
    for (;;)
    {
      AppData.b().k().a(new com.yelp.android.analytics.g(EventIri.SearchGlobal, null, paramContext));
      return;
      paramContext.put("text", paramIntent);
      paramContext.put("suggest", str);
    }
  }
  
  public static <SearchContext extends Context,  extends a> void a(SearchContext paramSearchContext, Menu paramMenu)
  {
    paramMenu = paramMenu.findItem(2131690868);
    if ((paramSearchContext instanceof YelpMapActivity))
    {
      paramMenu.setTitle(2131166071);
      paramMenu.setIcon(2130837570);
    }
  }
  
  public static void a(Context paramContext, o paramo)
  {
    SearchRequest.SearchResponse localSearchResponse = paramo.k();
    if (localSearchResponse == null)
    {
      YelpLog.remoteError(paramContext, "null response in emitSpellingSuggestionAnalytic");
      return;
    }
    paramContext = paramo.a(paramContext);
    paramo = localSearchResponse.d();
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("text", paramContext);
    localTreeMap.put("suggest", paramo);
    AppData.b().k().a(new com.yelp.android.analytics.g(EventIri.SearchDymTerm, localSearchResponse.i(), localTreeMap));
  }
  
  public static void a(Context paramContext, String paramString, o paramo)
  {
    paramContext = new TreeMap();
    paramContext.put("text", paramo.l());
    paramContext.put("suggest", paramString);
    paramString = paramo.k().i();
    AppData.b().k().a(new com.yelp.android.analytics.g(EventIri.SearchDymAddress, paramString, paramContext));
  }
  
  public static <ContextSearchable extends Context,  extends e> void a(Intent paramIntent, ContextSearchable paramContextSearchable, String paramString)
  {
    a(paramIntent.getStringExtra("extra.location"), paramIntent.getStringExtra("extra.search_text"), paramContextSearchable, paramString);
  }
  
  public static <SearchContext extends ActionBarActivity,  extends a> void a(SearchContext paramSearchContext, Menu paramMenu)
  {
    paramSearchContext.getMenuInflater().inflate(2131755043, paramMenu);
    Toolbar localToolbar = (Toolbar)paramSearchContext.findViewById(2131690378);
    if (localToolbar == null) {}
    do
    {
      return;
      localObject = (ToolbarSearch)localToolbar.findViewById(2131690948);
      paramMenu = (Menu)localObject;
      if (localObject == null)
      {
        LayoutInflater.from(paramSearchContext).inflate(2130903554, localToolbar);
        paramMenu = (ToolbarSearch)localToolbar.findViewById(2131690948);
        ai.h(paramMenu, paramSearchContext.getResources().getDimension(2131362110));
      }
    } while (paramMenu == null);
    Object localObject = ((a)paramSearchContext).p();
    if (localObject != null)
    {
      paramMenu.setTerms(((o)localObject).a(paramSearchContext));
      if ((((o)localObject).o() == null) || (((o)localObject).o().I() == null)) {
        break label172;
      }
      paramMenu.setLocation(paramMenu.getContext().getString(2131165746));
    }
    for (;;)
    {
      paramMenu.getTextField().setOnClickListener(new d.1(paramSearchContext));
      paramMenu.getFilterButton().setOnClickListener(new d.2(paramSearchContext));
      return;
      label172:
      paramMenu.setLocation(((o)localObject).l());
    }
  }
  
  public static void a(BusinessSearchRequest paramBusinessSearchRequest, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return;
    }
    paramBusinessSearchRequest = new CachedSearch(paramBusinessSearchRequest.H(), paramString, paramBusinessSearchRequest.E(), paramBusinessSearchRequest.F(), paramBusinessSearchRequest.A(), paramBusinessSearchRequest.C());
    long l = System.currentTimeMillis() / 1000L;
    AppData.b().f().a(paramBusinessSearchRequest, l);
  }
  
  public static void a(aw paramaw, ContinueLastOrderInfo paramContinueLastOrderInfo, o paramo)
  {
    paramaw = paramaw.b();
    if ((paramContinueLastOrderInfo != null) && (paramo != null) && (paramo.k() != null) && (paramo.k().b() != null))
    {
      paramo = paramo.k().b().iterator();
      while (paramo.hasNext())
      {
        BusinessSearchResult localBusinessSearchResult = (BusinessSearchResult)paramo.next();
        if (localBusinessSearchResult.a().aD().equals(paramaw)) {
          localBusinessSearchResult.a().a(paramContinueLastOrderInfo);
        }
      }
    }
  }
  
  public static <ContextSearchable extends Context,  extends e> void a(String paramString1, String paramString2, ContextSearchable paramContextSearchable, String paramString3)
  {
    double[] arrayOfDouble = ((e)paramContextSearchable).n();
    String str = paramString1;
    if (((e)paramContextSearchable).l().contains(paramString1)) {
      str = null;
    }
    paramString1 = AppData.b().i();
    paramString1.b().a(paramContextSearchable, paramString2);
    paramString1.c().a(paramContextSearchable, str);
    paramString1 = AppData.b().j();
    paramString1 = new eo().a(str).a(new Filter()).b(paramString2).a(paramString1.b(paramString2)).a(arrayOfDouble).a(BusinessSearchRequest.SearchMode.DEFAULT);
    ((e)paramContextSearchable).a(paramString1, paramString3);
  }
  
  public static <SearchContext extends Activity,  extends a> boolean a(SearchContext paramSearchContext, MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    }
    ((a)paramSearchContext).i();
    return true;
  }
  
  public static GenericSearchFilter b(List<GenericSearchFilter> paramList, GenericSearchFilter.FilterType paramFilterType)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      GenericSearchFilter localGenericSearchFilter = (GenericSearchFilter)paramList.next();
      if (localGenericSearchFilter.a() == paramFilterType) {
        return localGenericSearchFilter;
      }
    }
    return null;
  }
  
  public static abstract interface a
    extends e
  {
    public abstract void i();
    
    public abstract void j();
    
    public abstract o p();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */