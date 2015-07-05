package com.yelp.android.ui.activities.search;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.location.Address;
import android.support.v4.view.ce;
import android.support.v7.app.ActionBarActivity;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ap;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.SearchMode;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchOption;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.fv;
import com.yelp.android.database.j;
import com.yelp.android.database.l;
import com.yelp.android.database.m;
import com.yelp.android.database.q;
import com.yelp.android.database.savedsearch.c;
import com.yelp.android.database.savedsearch.i;
import com.yelp.android.database.savedsearch.k;
import com.yelp.android.serializable.AttributeFilters;
import com.yelp.android.serializable.Filter;
import com.yelp.android.ui.activities.support.YelpMapActivity;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.TreeMap;

public class SearchUtils
{
  public static BusinessSearchRequest a()
  {
    i locali = AppData.b().i().d().a();
    if (locali == null) {
      return null;
    }
    Object localObject = new fv();
    if (!TextUtils.isEmpty(locali.e())) {
      ((fv)localObject).b(locali.e());
    }
    for (;;)
    {
      ((fv)localObject).a(locali.b()).a(locali.d());
      localObject = ((fv)localObject).a();
      ((BusinessSearchRequest)localObject).setOffset(locali.g());
      if (TextUtils.isEmpty(locali.c())) {
        break;
      }
      ((BusinessSearchRequest)localObject).setCacheDescriptorOverride(locali.c());
      return (BusinessSearchRequest)localObject;
      if (!TextUtils.isEmpty(locali.f())) {
        ((fv)localObject).b(locali.f());
      } else {
        ((fv)localObject).b(AppData.b().getString(2131165475));
      }
    }
  }
  
  public static <SearchContext extends Activity,  extends ax> void a(SearchContext paramSearchContext)
  {
    Object localObject = ((ax)paramSearchContext).o();
    if (localObject == null)
    {
      YelpLog.error(paramSearchContext, "searchSession in openSearchOverlay");
      return;
    }
    AppData.a(EventIri.SearchBar);
    String str = ((ap)localObject).a(paramSearchContext);
    localObject = ((ap)localObject).m();
    paramSearchContext.startActivityForResult(SearchOverlay.a(paramSearchContext, ((ay)paramSearchContext).k(), str, (String)localObject, false, null), ((ay)paramSearchContext).n());
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
      AppData.b().k().a(new g(EventIri.SearchGlobal, null, paramContext));
      return;
      paramContext.put("text", paramIntent);
      paramContext.put("suggest", str);
    }
  }
  
  public static void a(Context paramContext, Address paramAddress, ap paramap)
  {
    paramContext = new TreeMap();
    paramContext.put("text", paramap.m());
    paramContext.put("suggest", paramAddress.getFeatureName());
    paramAddress = paramap.l().getRequestId();
    AppData.b().k().a(new g(EventIri.SearchDymAddress, paramAddress, paramContext));
  }
  
  public static <SearchContext extends Context,  extends ax> void a(SearchContext paramSearchContext, Menu paramMenu)
  {
    paramMenu = paramMenu.findItem(2131493997);
    if ((paramSearchContext instanceof YelpMapActivity))
    {
      paramMenu.setTitle(2131166013);
      paramMenu.setIcon(2130837563);
    }
  }
  
  public static void a(Context paramContext, ap paramap)
  {
    SearchRequest.SearchResponse localSearchResponse = paramap.l();
    if (localSearchResponse == null)
    {
      YelpLog.error(paramContext, "null response in emitSpellingSuggestionAnalytic");
      return;
    }
    paramContext = paramap.a(paramContext);
    paramap = localSearchResponse.getSpellingSuggestion();
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("text", paramContext);
    localTreeMap.put("suggest", paramap);
    AppData.b().k().a(new g(EventIri.SearchDymTerm, localSearchResponse.getRequestId(), localTreeMap));
  }
  
  public static <ContextSearchable extends Context,  extends ay> void a(Intent paramIntent, ContextSearchable paramContextSearchable, String paramString)
  {
    a(paramIntent.getStringExtra("extra.location"), paramIntent.getStringExtra("extra.search_text"), paramContextSearchable, paramString);
  }
  
  public static <SearchContext extends ActionBarActivity,  extends ax> void a(SearchContext paramSearchContext, Menu paramMenu)
  {
    paramSearchContext.getMenuInflater().inflate(2131755038, paramMenu);
    Toolbar localToolbar = (Toolbar)paramSearchContext.findViewById(2131493634);
    if (localToolbar == null) {}
    do
    {
      return;
      localObject = (ToolbarSearch)localToolbar.findViewById(2131494078);
      paramMenu = (Menu)localObject;
      if (localObject == null)
      {
        LayoutInflater.from(paramSearchContext).inflate(2130903432, localToolbar);
        paramMenu = (ToolbarSearch)localToolbar.findViewById(2131494078);
        ce.f(paramMenu, paramSearchContext.getResources().getDimension(2131427533));
      }
    } while (paramMenu == null);
    Object localObject = ((ax)paramSearchContext).o();
    if (localObject != null)
    {
      paramMenu.setTerms(((ap)localObject).a(paramSearchContext));
      paramMenu.setLocation(((ap)localObject).m());
    }
    paramMenu.getTextField().setOnClickListener(new au(paramSearchContext));
    paramMenu.getFilterButton().setOnClickListener(new av(paramSearchContext));
  }
  
  public static <ContextSearchable extends Context,  extends ay> void a(String paramString1, String paramString2, ContextSearchable paramContextSearchable, String paramString3)
  {
    Object localObject = ((ay)paramContextSearchable).l();
    double[] arrayOfDouble = ((ay)paramContextSearchable).m();
    String str1 = paramString1;
    if (((ay)paramContextSearchable).k().contains(paramString1)) {
      str1 = null;
    }
    paramString1 = AppData.b().i();
    paramString1.c().a(paramContextSearchable, paramString2);
    paramString1.e().a(paramContextSearchable, str1);
    m localm = AppData.b().j();
    String str2 = ((Context)localObject).getString(2131165489);
    paramString1 = EnumSet.noneOf(SearchRequest.SearchOption.class);
    localObject = new ArrayList();
    BusinessSearchRequest.SearchMode localSearchMode = BusinessSearchRequest.SearchMode.DEFAULT;
    if (str2.equalsIgnoreCase(paramString2)) {
      paramString1 = EnumSet.of(SearchRequest.SearchOption.CHECK_IN_OFFERS);
    }
    paramString1 = new fv().a(paramString1).a(str1).a(new Filter(new AttributeFilters((List)localObject))).b(paramString2).a(localm.b(paramString2)).a(arrayOfDouble).a(localSearchMode);
    ((ay)paramContextSearchable).a(paramString1, paramString3);
  }
  
  public static void a(String paramString1, String paramString2, String paramString3, int paramInt, Filter paramFilter, String paramString4)
  {
    if (TextUtils.isEmpty(paramString4)) {
      return;
    }
    paramString1 = new i(paramString1, paramString2, paramFilter, paramString3, paramInt, paramString4);
    AppData.b().i().d().a(paramString1);
  }
  
  public static <SearchContext extends Activity,  extends ax> boolean a(SearchContext paramSearchContext, MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return false;
    case 2131493997: 
      ((ax)paramSearchContext).g();
    }
    for (;;)
    {
      return true;
      ((ax)paramSearchContext).j();
    }
  }
  
  public static <SearchActivityContext extends Activity,  extends ax> void b(SearchActivityContext paramSearchActivityContext)
  {
    Object localObject = ((ax)paramSearchActivityContext).o();
    if (localObject != null)
    {
      localObject = new k(((ap)localObject).a(paramSearchActivityContext), ((ap)localObject).k());
      paramSearchActivityContext = new aw(paramSearchActivityContext);
      AppData.b().i().b().a((k)localObject, paramSearchActivityContext);
      AppData.a(EventIri.SearchSave);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */