package com.yelp.android.appdata;

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
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.g.a;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.DisplayGenericSearchFilter;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.GenericSearchFilter;
import com.yelp.android.serializable.GenericSearchFilter.FilterType;
import com.yelp.android.ui.activities.search.d;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

class o$1
  extends k.b<SearchRequest.SearchResponse>
{
  o$1(o paramo) {}
  
  private int a(SearchRequest.SearchResponse paramSearchResponse)
  {
    paramSearchResponse = paramSearchResponse.b();
    int j;
    if (paramSearchResponse != null)
    {
      paramSearchResponse = paramSearchResponse.iterator();
      int i = 0;
      j = i;
      if (!paramSearchResponse.hasNext()) {
        break label67;
      }
      BusinessSearchResult localBusinessSearchResult = (BusinessSearchResult)paramSearchResponse.next();
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
  
  private void a(SearchRequest paramSearchRequest, SearchRequest.SearchResponse paramSearchResponse)
  {
    if (!TextUtils.isEmpty(MOBILE_VERTICAL_SEARCH_ENTRYvalue)) {
      return;
    }
    DisplayGenericSearchFilter localDisplayGenericSearchFilter = d.a(paramSearchResponse.l(), GenericSearchFilter.FilterType.Platform);
    paramSearchResponse = d.a(paramSearchResponse.l(), GenericSearchFilter.FilterType.Reservation);
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
      if ((paramSearchResponse == null) || (!paramSearchResponse.d())) {
        break label168;
      }
      m = 1;
      paramSearchRequest = paramSearchRequest.H();
      if (paramSearchRequest != null) {
        break label174;
      }
      paramSearchRequest = Collections.emptyList();
      paramSearchResponse = paramSearchRequest;
      if (paramSearchRequest == null) {
        paramSearchResponse = Collections.emptyList();
      }
      paramSearchRequest = paramSearchResponse.iterator();
      j = 0;
      i = 0;
      label107:
      if (!paramSearchRequest.hasNext()) {
        break label211;
      }
      paramSearchResponse = (GenericSearchFilter)paramSearchRequest.next();
      if ((paramSearchResponse.a() != GenericSearchFilter.FilterType.Reservation) || (!paramSearchResponse.c())) {
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
      paramSearchRequest = paramSearchRequest.c();
      break label85;
      label182:
      if ((paramSearchResponse.a() == GenericSearchFilter.FilterType.Platform) && (paramSearchResponse.c()))
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
  
  private void a(Map<String, Object> paramMap)
  {
    j.a(paramMap, "mobile_promoted_filter_text_experiment", "mobile_promoted_filter_text_experiment");
    j.a(paramMap, "mobile_platform_medium_intent_queries", "medium_intent_delivery");
    j.a(paramMap, "mobile_lower_promoted_delivery_threshold", "lower_delivery_threshold");
    j.a(paramMap, "mobile.request_quote_search_actions_v2_experiment", "biz_msg.mobile.request_quote_search_actions_v2");
    j.a(paramMap, "dead_end_separated_search", "dead_end_separated_search");
    j.a(paramMap, "platform_pickup_filter", "platform_pickup_filter");
    j.a(paramMap, "auto_enable_pickup", "auto_enable_pickup");
    j.a(paramMap, "remove_platform_category_filter", "remove_platform_category_filter");
    j.a(paramMap, "auto_enable_with_separated_search", "auto_enable_with_separated_search");
    j.a(paramMap, "txn_growth_suggest_boost_delivery_searches", "txn_growth_suggest_boost_delivery_searches");
    j.a(paramMap, "txn_growth_free_delivery_filter_expansion", "txn_growth_free_delivery_filter_expansion");
    j.a(paramMap, "txn_growth_search_answers_food", "txn_growth_search_answers_food");
    j.a(paramMap, "txn_growth_search_answers_reservations", "txn_growth_search_answers_reservations");
    j.a(paramMap, "txn_growth_filter_act_like_auto_enable", "txn_growth_filter_act_like_auto_enable");
    j.a(paramMap, "txn_growth_search_action_button_delivery", "txn_growth_search_action_button_delivery");
    j.a(paramMap, "txn_growth_search_action_button_spas", "txn_growth_search_action_button_spas");
    j.a(paramMap, "txn_growth_search_action_button_activity", "txn_growth_search_action_button_activity");
    j.a(paramMap, "txn_growth_search_action_button_golf", "txn_growth_search_action_button_golf");
    j.a(paramMap, "txn_growth.platform_distance_score_exponent_v2", "txn_growth.platform_distance_score_exponent_v2");
    j.a(paramMap, "txn_growth.platform_word_score_score_exponent_v2", "txn_growth.platform_word_score_score_exponent_v2");
    j.a(paramMap, "txn_growth.platform_attr_score_exponent_v2", "txn_growth.platform_attr_score_exponent_v2");
    j.a(paramMap, "txn_growth.platform_ctr_score_exponent_v2", "txn_growth.platform_ctr_score_exponent_v2");
    j.a(paramMap, "txn_growth.platform_wilson_score_exponent_v2", "txn_growth.platform_wilson_score_exponent_v2");
    j.a(paramMap, "txn_growth.platform_distance_score_curve_v3", "txn_growth.platform_distance_score_curve_v3");
  }
  
  public void a(Location paramLocation)
  {
    super.a(paramLocation);
    if (o.a(a) != null) {
      o.a(a).a(paramLocation);
    }
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, SearchRequest.SearchResponse paramSearchResponse)
  {
    boolean bool2 = true;
    o.a(a, paramSearchResponse);
    DisplayGenericSearchFilter localDisplayGenericSearchFilter = d.a(paramSearchResponse.l());
    if ((localDisplayGenericSearchFilter == null) || ((localDisplayGenericSearchFilter.c() != GenericSearchFilter.FilterType.Reservation) && (localDisplayGenericSearchFilter.c() != GenericSearchFilter.FilterType.Platform)))
    {
      MOBILE_VERTICAL_SEARCH_TYPEvalue = null;
      MOBILE_VERTICAL_SEARCH_ENTRYvalue = null;
    }
    a((SearchRequest)paramApiRequest, paramSearchResponse);
    MetricsManager localMetricsManager = AppData.b().k();
    AppData.b().l().a(AdjustManager.YelpAdjustEvent.SEARCH);
    a locala = new a();
    locala.put("term", ((SearchRequest)paramApiRequest).E());
    if (o.c(a) != null) {
      o.c(a).addParameter(locala);
    }
    if (o.d(a) != null)
    {
      locala.put("button", o.d(a));
      o.a(a, null);
    }
    if (localDisplayGenericSearchFilter != null)
    {
      locala.put("promoted_filter_alias_type", localDisplayGenericSearchFilter.a() + "-" + localDisplayGenericSearchFilter.c());
      locala.put("promoted_filter_toggle_on", Boolean.valueOf(localDisplayGenericSearchFilter.d()));
      int i = a(paramSearchResponse);
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
      localMetricsManager.a(new g(EventIri.Search, o.e(a).i(), locala));
      o.a(a, o.e(a).g());
      paramSearchResponse = a;
      if (o.e(a).b().size() + o.f(a) < o.e(a).f()) {
        break label559;
      }
    }
    label536:
    label542:
    label559:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      o.a(paramSearchResponse, bool1);
      o.a(a, o.b(a).K());
      o.g(a);
      a.notifyChanged();
      AppData.b().m().a(KahunaEventIri.Search);
      paramApiRequest = ((SearchRequest)paramApiRequest).G();
      if (paramApiRequest != null) {
        AppData.b().m().a(KahunaAttributeIri.LastSearchCategory, paramApiRequest.toString());
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
    return o.a(a).a();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    o.a(a).onError(paramApiRequest, paramYelpException);
    a.notifyInvalidated();
    o.a(a, o.b(a).K());
    YelpLog.e(this, "Error occured with search request", paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.o.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */