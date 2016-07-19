package com.yelp.android.appdata;

import android.content.Context;
import android.content.Intent;
import android.database.DataSetObservable;
import android.location.Location;
import android.text.TextUtils;
import com.yelp.android.analytics.GADimensions;
import com.yelp.android.analytics.adjust.AdjustManager;
import com.yelp.android.analytics.adjust.AdjustManager.YelpAdjustEvent;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.i;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.analytics.iris.KahunaEventIri;
import com.yelp.android.appdata.experiment.TwoBucketExperiment;
import com.yelp.android.appdata.experiment.TwoBucketExperiment.Cohort;
import com.yelp.android.appdata.experiment.e;
import com.yelp.android.appdata.experiment.j;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.eo;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.DisplayGenericSearchFilter;
import com.yelp.android.serializable.DisplayGenericSearchFilterParameters;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.GenericSearchFilter;
import com.yelp.android.serializable.GenericSearchFilter.FilterType;
import com.yelp.android.serializable.PlatformDisambiguatedAddress;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.search.d;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class o
  extends DataSetObservable
{
  private SearchRequest.SearchResponse a;
  private final com.yelp.android.ca.a b;
  private SearchRequest c;
  private k.b<Void> d;
  private int e;
  private IriSource f;
  private String g;
  private boolean h;
  private final k.b<SearchRequest.SearchResponse> i = new k.b()
  {
    private int a(SearchRequest.SearchResponse paramAnonymousSearchResponse)
    {
      paramAnonymousSearchResponse = paramAnonymousSearchResponse.b();
      int j;
      if (paramAnonymousSearchResponse != null)
      {
        paramAnonymousSearchResponse = paramAnonymousSearchResponse.iterator();
        int i = 0;
        j = i;
        if (!paramAnonymousSearchResponse.hasNext()) {
          break label67;
        }
        BusinessSearchResult localBusinessSearchResult = (BusinessSearchResult)paramAnonymousSearchResponse.next();
        if ((localBusinessSearchResult == null) || (localBusinessSearchResult.c().isEmpty())) {
          break label69;
        }
        i += 1;
      }
      label67:
      label69:
      for (;;)
      {
        break;
        j = 0;
        return j;
      }
    }
    
    private void a(SearchRequest paramAnonymousSearchRequest, SearchRequest.SearchResponse paramAnonymousSearchResponse)
    {
      if (!TextUtils.isEmpty(MOBILE_VERTICAL_SEARCH_ENTRYvalue)) {
        return;
      }
      DisplayGenericSearchFilter localDisplayGenericSearchFilter = d.a(paramAnonymousSearchResponse.l(), GenericSearchFilter.FilterType.Platform);
      paramAnonymousSearchResponse = d.a(paramAnonymousSearchResponse.l(), GenericSearchFilter.FilterType.Reservation);
      int k;
      label56:
      int m;
      label70:
      label85:
      int j;
      int i;
      if ((localDisplayGenericSearchFilter != null) && (localDisplayGenericSearchFilter.d()))
      {
        k = 1;
        if ((paramAnonymousSearchResponse == null) || (!paramAnonymousSearchResponse.d())) {
          break label168;
        }
        m = 1;
        paramAnonymousSearchRequest = paramAnonymousSearchRequest.H();
        if (paramAnonymousSearchRequest != null) {
          break label174;
        }
        paramAnonymousSearchRequest = Collections.emptyList();
        paramAnonymousSearchResponse = paramAnonymousSearchRequest;
        if (paramAnonymousSearchRequest == null) {
          paramAnonymousSearchResponse = Collections.emptyList();
        }
        paramAnonymousSearchRequest = paramAnonymousSearchResponse.iterator();
        j = 0;
        i = 0;
        label107:
        if (!paramAnonymousSearchRequest.hasNext()) {
          break label211;
        }
        paramAnonymousSearchResponse = (GenericSearchFilter)paramAnonymousSearchRequest.next();
        if ((paramAnonymousSearchResponse.a() != GenericSearchFilter.FilterType.Reservation) || (!paramAnonymousSearchResponse.c())) {
          break label182;
        }
        i = j;
        j = 1;
      }
      for (;;)
      {
        int n = j;
        j = i;
        i = n;
        break label107;
        k = 0;
        break label56;
        label168:
        m = 0;
        break label70;
        label174:
        paramAnonymousSearchRequest = paramAnonymousSearchRequest.c();
        break label85;
        label182:
        if ((paramAnonymousSearchResponse.a() == GenericSearchFilter.FilterType.Platform) && (paramAnonymousSearchResponse.c()))
        {
          n = 1;
          j = i;
          i = n;
          continue;
          label211:
          if (((i != 0) || (m == 0)) && ((j != 0) || (k == 0))) {
            break;
          }
          MOBILE_VERTICAL_SEARCH_ENTRYvalue = "auto_enabled";
          return;
        }
        n = i;
        i = j;
        j = n;
      }
    }
    
    private void a(Map<String, Object> paramAnonymousMap)
    {
      j.a(paramAnonymousMap, "mobile_promoted_filter_text_experiment", "mobile_promoted_filter_text_experiment");
      j.a(paramAnonymousMap, "mobile_platform_medium_intent_queries", "medium_intent_delivery");
      j.a(paramAnonymousMap, "mobile_lower_promoted_delivery_threshold", "lower_delivery_threshold");
      j.a(paramAnonymousMap, "mobile.request_quote_search_actions_v2_experiment", "biz_msg.mobile.request_quote_search_actions_v2");
      j.a(paramAnonymousMap, "dead_end_separated_search", "dead_end_separated_search");
      j.a(paramAnonymousMap, "platform_pickup_filter", "platform_pickup_filter");
      j.a(paramAnonymousMap, "auto_enable_pickup", "auto_enable_pickup");
      j.a(paramAnonymousMap, "remove_platform_category_filter", "remove_platform_category_filter");
      j.a(paramAnonymousMap, "auto_enable_with_separated_search", "auto_enable_with_separated_search");
      j.a(paramAnonymousMap, "txn_growth_suggest_boost_delivery_searches", "txn_growth_suggest_boost_delivery_searches");
      j.a(paramAnonymousMap, "txn_growth_free_delivery_filter_expansion", "txn_growth_free_delivery_filter_expansion");
      j.a(paramAnonymousMap, "txn_growth_search_answers_food", "txn_growth_search_answers_food");
      j.a(paramAnonymousMap, "txn_growth_search_answers_reservations", "txn_growth_search_answers_reservations");
      j.a(paramAnonymousMap, "txn_growth_filter_act_like_auto_enable", "txn_growth_filter_act_like_auto_enable");
      j.a(paramAnonymousMap, "txn_growth_search_action_button_delivery", "txn_growth_search_action_button_delivery");
      j.a(paramAnonymousMap, "txn_growth_search_action_button_spas", "txn_growth_search_action_button_spas");
      j.a(paramAnonymousMap, "txn_growth_search_action_button_activity", "txn_growth_search_action_button_activity");
      j.a(paramAnonymousMap, "txn_growth_search_action_button_golf", "txn_growth_search_action_button_golf");
      j.a(paramAnonymousMap, "txn_growth.platform_distance_score_exponent_v2", "txn_growth.platform_distance_score_exponent_v2");
      j.a(paramAnonymousMap, "txn_growth.platform_word_score_score_exponent_v2", "txn_growth.platform_word_score_score_exponent_v2");
      j.a(paramAnonymousMap, "txn_growth.platform_attr_score_exponent_v2", "txn_growth.platform_attr_score_exponent_v2");
      j.a(paramAnonymousMap, "txn_growth.platform_ctr_score_exponent_v2", "txn_growth.platform_ctr_score_exponent_v2");
      j.a(paramAnonymousMap, "txn_growth.platform_wilson_score_exponent_v2", "txn_growth.platform_wilson_score_exponent_v2");
      j.a(paramAnonymousMap, "txn_growth.platform_distance_score_curve_v3", "txn_growth.platform_distance_score_curve_v3");
    }
    
    public void a(Location paramAnonymousLocation)
    {
      super.a(paramAnonymousLocation);
      if (o.a(o.this) != null) {
        o.a(o.this).a(paramAnonymousLocation);
      }
    }
    
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, SearchRequest.SearchResponse paramAnonymousSearchResponse)
    {
      boolean bool2 = true;
      o.a(o.this, paramAnonymousSearchResponse);
      DisplayGenericSearchFilter localDisplayGenericSearchFilter = d.a(paramAnonymousSearchResponse.l());
      if ((localDisplayGenericSearchFilter == null) || ((localDisplayGenericSearchFilter.c() != GenericSearchFilter.FilterType.Reservation) && (localDisplayGenericSearchFilter.c() != GenericSearchFilter.FilterType.Platform)))
      {
        MOBILE_VERTICAL_SEARCH_TYPEvalue = null;
        MOBILE_VERTICAL_SEARCH_ENTRYvalue = null;
      }
      a((SearchRequest)paramAnonymousApiRequest, paramAnonymousSearchResponse);
      MetricsManager localMetricsManager = AppData.b().k();
      AppData.b().l().a(AdjustManager.YelpAdjustEvent.SEARCH);
      com.yelp.android.g.a locala = new com.yelp.android.g.a();
      locala.put("term", ((SearchRequest)paramAnonymousApiRequest).E());
      if (o.c(o.this) != null) {
        o.c(o.this).addParameter(locala);
      }
      if (o.d(o.this) != null)
      {
        locala.put("button", o.d(o.this));
        o.a(o.this, null);
      }
      if (localDisplayGenericSearchFilter != null)
      {
        locala.put("promoted_filter_alias_type", localDisplayGenericSearchFilter.a() + "-" + localDisplayGenericSearchFilter.c());
        locala.put("promoted_filter_toggle_on", Boolean.valueOf(localDisplayGenericSearchFilter.d()));
        int i = a(paramAnonymousSearchResponse);
        if (i > 0) {
          AppData.a(EventIri.SearchActionsShown, "num_actions_shown", Integer.valueOf(i));
        }
        if (i <= 0) {
          break label536;
        }
        bool1 = true;
        label275:
        locala.put("search_actions_shown", Boolean.valueOf(bool1));
        locala.put("num_actions_shown", Integer.valueOf(i));
        if (e.e.b() != TwoBucketExperiment.Cohort.enabled) {
          break label542;
        }
        locala.put("low_intent_search_actions", "will_see_search_actions");
        label332:
        a(locala);
        localMetricsManager.a(new g(EventIri.Search, o.e(o.this).i(), locala));
        o.a(o.this, o.e(o.this).g());
        paramAnonymousSearchResponse = o.this;
        if (o.e(o.this).b().size() + o.f(o.this) < o.e(o.this).f()) {
          break label559;
        }
      }
      label536:
      label542:
      label559:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        o.a(paramAnonymousSearchResponse, bool1);
        o.a(o.this, o.b(o.this).K());
        o.g(o.this);
        notifyChanged();
        AppData.b().m().a(KahunaEventIri.Search);
        paramAnonymousApiRequest = ((SearchRequest)paramAnonymousApiRequest).G();
        if (paramAnonymousApiRequest != null) {
          AppData.b().m().a(KahunaAttributeIri.LastSearchCategory, paramAnonymousApiRequest.toString());
        }
        return;
        locala.put("promoted_filter_alias_type", "none");
        break;
        bool1 = false;
        break label275;
        locala.put("low_intent_search_actions", "will_not_see_search_actions");
        break label332;
      }
    }
    
    public boolean a()
    {
      YelpLog.i(this, "No Providers enabled");
      return o.a(o.this).a();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      o.a(o.this).onError(paramAnonymousApiRequest, paramAnonymousYelpException);
      notifyInvalidated();
      o.a(o.this, o.b(o.this).K());
      YelpLog.e(this, "Error occured with search request", paramAnonymousYelpException);
    }
  };
  
  public o(k.b<Void> paramb, com.yelp.android.ca.a parama)
  {
    if (paramb == null) {
      throw new IllegalArgumentException("Need a non null callback or else your search is going to be pretty useless");
    }
    if (parama == null) {
      throw new IllegalArgumentException("Need a non null Cache to perform a search, don't be wasteful of bandwidth");
    }
    b = parama;
    d = paramb;
  }
  
  public static void a(SearchRequest paramSearchRequest, Intent paramIntent)
  {
    a(paramSearchRequest, paramIntent, null, null);
  }
  
  public static void a(SearchRequest paramSearchRequest, Intent paramIntent, IriSource paramIriSource, String paramString)
  {
    paramIntent.putExtra("extra.query", paramSearchRequest);
    paramIntent.putExtra("extra.source", paramIriSource);
    paramIntent.putExtra("extra.search_launch_method", paramString);
    paramIntent.setAction("android.intent.action.SEARCH");
  }
  
  private boolean p()
  {
    if ((c != null) && (!c.u())) {}
    for (boolean bool = true;; bool = false)
    {
      if ((c != null) && (c.v()))
      {
        if (a != null) {
          break;
        }
        notifyInvalidated();
      }
      return bool;
    }
    notifyChanged();
    return bool;
  }
  
  private void q()
  {
    Object localObject = d.a(a.l(), GenericSearchFilter.FilterType.Platform);
    if ((localObject != null) && (((DisplayGenericSearchFilter)localObject).e()) && (((DisplayGenericSearchFilter)localObject).d()) && (((DisplayGenericSearchFilter)localObject).i() != null))
    {
      localObject = ((DisplayGenericSearchFilter)localObject).i().e();
      if ((localObject != null) && (!StringUtils.d(((PlatformDisambiguatedAddress)localObject).b()))) {
        c.h(((PlatformDisambiguatedAddress)localObject).b());
      }
    }
  }
  
  public String a(Context paramContext)
  {
    if (!g()) {
      return "";
    }
    if (!TextUtils.isEmpty(c.E())) {
      return c.E();
    }
    if (c.G() != null) {
      return c.G().a();
    }
    return "";
  }
  
  public void a(k.b<Void> paramb)
  {
    d = paramb;
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    if ((k() != null) && (k().b() != null)) {
      BusinessSearchResult.a(k().b(), paramYelpBusiness);
    }
  }
  
  public boolean a()
  {
    boolean bool = p();
    int k;
    if (bool)
    {
      k = e;
      if (a == null) {
        break label64;
      }
    }
    label64:
    for (int j = a.b().size();; j = 0)
    {
      a = null;
      c.a(j + k);
      c.y();
      return bool;
    }
  }
  
  public boolean a(Intent paramIntent)
  {
    a = null;
    c = ((SearchRequest)paramIntent.getParcelableExtra("extra.query"));
    e = paramIntent.getIntExtra("extra.offset", 0);
    f = ((IriSource)paramIntent.getSerializableExtra("extra.source"));
    g = paramIntent.getStringExtra("extra.search_launch_method");
    if (c != null)
    {
      c.b(b);
      c.b(i);
    }
    return g();
  }
  
  public void b(Intent paramIntent)
  {
    paramIntent.putExtra("extra.query", c);
    paramIntent.putExtra("extra.offset", e);
  }
  
  public boolean b()
  {
    return (c != null) && (!c.v());
  }
  
  public boolean c()
  {
    boolean bool = p();
    if (bool)
    {
      a = null;
      c.y();
    }
    return bool;
  }
  
  public boolean d()
  {
    boolean bool = p();
    if (bool)
    {
      a = null;
      int j = Math.max(0, e - 20);
      c.a(j);
      c.y();
    }
    return bool;
  }
  
  public boolean e()
  {
    return h;
  }
  
  public boolean f()
  {
    return e < 20;
  }
  
  public boolean g()
  {
    return c != null;
  }
  
  public eo h()
  {
    if (c == null) {
      return new eo();
    }
    eo localeo = new eo();
    localeo.a(c.G()).a(c.J()).a(c.D()).b(c.E()).a(c.F()).a(c.I()).a(c.H());
    return localeo;
  }
  
  public void i()
  {
    if (c != null) {
      c.a(true);
    }
    notifyInvalidated();
  }
  
  public Filter j()
  {
    if (c != null) {
      return c.H();
    }
    return null;
  }
  
  public SearchRequest.SearchResponse k()
  {
    return a;
  }
  
  public String l()
  {
    if (g()) {
      return c.F();
    }
    return "";
  }
  
  public double[] m()
  {
    return c.I();
  }
  
  public com.yelp.android.ca.a n()
  {
    return b;
  }
  
  public SearchRequest o()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */