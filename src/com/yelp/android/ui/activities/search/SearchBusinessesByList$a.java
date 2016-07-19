package com.yelp.android.ui.activities.search;

import android.content.Context;
import android.content.Intent;
import android.database.DataSetObserver;
import android.location.Address;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.app.l;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.o;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.BusinessSearchResponse;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse.Foldability;
import com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest;
import com.yelp.android.appdata.webrequests.TrackOfflineAttributionRequest.OfflineAttributionEventType;
import com.yelp.android.appdata.webrequests.eo;
import com.yelp.android.serializable.AndroidAppAnnotation;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.BusinessSearchResult.SearchActionType;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.DisplayGenericSearchFilter;
import com.yelp.android.serializable.DisplayGenericSearchFilterParameters;
import com.yelp.android.serializable.Distance;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.GenericSearchFilter;
import com.yelp.android.serializable.GenericSearchFilter.FilterType;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.LocalAdPlacement;
import com.yelp.android.serializable.OpenNowGenericSearchFilter;
import com.yelp.android.serializable.PlatformDisambiguatedAddress;
import com.yelp.android.serializable.PlatformFilter;
import com.yelp.android.serializable.PlatformGenericSearchFilter;
import com.yelp.android.serializable.PlatformRSSTermMap;
import com.yelp.android.serializable.PlatformSearchAction;
import com.yelp.android.serializable.ReservationFilter;
import com.yelp.android.serializable.ReservationGenericSearchFilter;
import com.yelp.android.serializable.SearchAction;
import com.yelp.android.serializable.SearchLocation;
import com.yelp.android.ui.dialogs.FiltersDialog;
import com.yelp.android.ui.dialogs.ListDialogFragment;
import com.yelp.android.ui.dialogs.ListDialogFragment.a;
import com.yelp.android.ui.dialogs.PlatformSearchDialogFragment;
import com.yelp.android.ui.dialogs.PlatformSearchDialogFragment.a;
import com.yelp.android.ui.dialogs.ReservationSearchDialogFragment;
import com.yelp.android.ui.dialogs.ReservationSearchDialogFragment.a;
import com.yelp.android.ui.dialogs.SimpleListDialogFragment;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter.DisplayFeature;
import com.yelp.android.ui.panels.businesssearch.SpellingSuggestPanel;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.e;
import com.yelp.android.ui.widgets.AutoResizeTextView;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.u;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class SearchBusinessesByList$a
  extends DataSetObserver
{
  private final View a;
  private final TextView b;
  private final o c;
  private final f d;
  private final WeakReference<SearchBusinessesByList> e;
  private final TextView f;
  private final SpellingSuggestPanel g;
  private final com.yelp.android.ui.panels.businesssearch.d h;
  private final com.yelp.android.ui.panels.businesssearch.d i;
  private final aj j;
  private final com.yelp.android.ui.panels.f k;
  private final e l;
  private final e m;
  private final e n;
  private final PagingPanel o;
  private final u p;
  private boolean q;
  private final PlatformSearchDialogFragment.a r = new SearchBusinessesByList.a.10(this);
  private final ReservationSearchDialogFragment.a s = new SearchBusinessesByList.a.11(this);
  private final View.OnClickListener t = new SearchBusinessesByList.a.2(this);
  private final ListDialogFragment.a u = new SearchBusinessesByList.a.3(this);
  
  public SearchBusinessesByList$a(TextView paramTextView1, View paramView, o paramo, f paramf, SearchBusinessesByList paramSearchBusinessesByList, TextView paramTextView2, SpellingSuggestPanel paramSpellingSuggestPanel, com.yelp.android.ui.panels.businesssearch.d paramd1, com.yelp.android.ui.panels.businesssearch.d paramd2, aj paramaj, e parame1, e parame2, com.yelp.android.ui.panels.f paramf1, e parame3, u paramu, boolean paramBoolean)
  {
    a = paramView;
    o = ((PagingPanel)a.findViewById(2131690548));
    c = paramo;
    d = paramf;
    e = new WeakReference(paramSearchBusinessesByList);
    b = paramTextView1;
    f = paramTextView2;
    g = paramSpellingSuggestPanel;
    h = paramd1;
    i = paramd2;
    j = paramaj;
    k = paramf1;
    l = parame3;
    m = parame1;
    n = parame2;
    p = paramu;
    q = paramBoolean;
    onChanged();
  }
  
  private void a()
  {
    a(m, h);
    a(n, i);
  }
  
  private void a(ToggleButton paramToggleButton)
  {
    ((SearchBusinessesByList)e.get()).getHandler().postDelayed(new SearchBusinessesByList.a.8(this, paramToggleButton), 200L);
  }
  
  private void a(SearchRequest.SearchResponse paramSearchResponse)
  {
    SearchBusinessesByList localSearchBusinessesByList = (SearchBusinessesByList)e.get();
    paramSearchResponse = paramSearchResponse.d();
    if ((localSearchBusinessesByList == null) || (!c.f()) || (TextUtils.isEmpty(paramSearchResponse)))
    {
      g.setVisibility(8);
      return;
    }
    g.setSuggestion(paramSearchResponse);
    g.setVisibility(0);
  }
  
  private void a(DisplayGenericSearchFilter paramDisplayGenericSearchFilter, ToggleButton paramToggleButton)
  {
    boolean bool2 = paramToggleButton.isChecked();
    Filter localFilter = c.j();
    if (localFilter == null) {
      localFilter = new Filter();
    }
    for (;;)
    {
      GenericSearchFilter.FilterType localFilterType = paramDisplayGenericSearchFilter.c();
      eo localeo = c.h();
      boolean bool1;
      switch (SearchBusinessesByList.4.a[localFilterType.ordinal()])
      {
      default: 
        localFilter.a(GenericSearchFilter.a(paramDisplayGenericSearchFilter.h(), bool2));
        bool1 = true;
      }
      for (;;)
      {
        if (bool1)
        {
          paramToggleButton = new HashMap();
          paramToggleButton.put("requestId", c.k().i());
          paramToggleButton.put("from_toggle", Boolean.valueOf(true));
          paramToggleButton.put("alias", paramDisplayGenericSearchFilter.a());
          paramToggleButton.put("toggle_on", Boolean.valueOf(bool2));
          AppData.a(EventIri.SearchPromotedFilterToggle, paramToggleButton);
          paramDisplayGenericSearchFilter = SearchBusinessesByList.a((Context)e.get(), localeo.a(localFilter).a());
          paramDisplayGenericSearchFilter.addFlags(65536);
          ((SearchBusinessesByList)e.get()).a(paramDisplayGenericSearchFilter);
        }
        return;
        localFilter.a(OpenNowGenericSearchFilter.a((OpenNowGenericSearchFilter)paramDisplayGenericSearchFilter.h(), null, bool2));
        bool1 = true;
        continue;
        bool1 = a(localFilter, paramToggleButton, paramDisplayGenericSearchFilter);
        continue;
        bool1 = a(paramDisplayGenericSearchFilter, localFilter, paramToggleButton, localeo);
      }
    }
  }
  
  private void a(Filter paramFilter)
  {
    Object localObject = c.k();
    Distance localDistance;
    if (paramFilter == null)
    {
      localDistance = null;
      if (paramFilter != null) {
        break label52;
      }
      paramFilter = null;
      label20:
      if (localObject != null) {
        break label60;
      }
    }
    label52:
    label60:
    for (localObject = Collections.EMPTY_LIST;; localObject = ((SearchRequest.SearchResponse)localObject).l())
    {
      paramFilter = d.a(localDistance, paramFilter, (List)localObject);
      k.setNonPromotedFilterText(paramFilter);
      return;
      localDistance = paramFilter.d();
      break;
      paramFilter = paramFilter.b();
      break label20;
    }
  }
  
  private void a(e parame, com.yelp.android.ui.panels.businesssearch.d paramd)
  {
    parame.clear();
    if ((d.isEmpty()) || (paramd.isEmpty())) {
      return;
    }
    paramd = new TextView((Context)e.get(), null, 2130772426);
    paramd.setHeight(n.h);
    parame.b(paramd);
  }
  
  private void a(Integer paramInteger)
  {
    String str = null;
    DisplayGenericSearchFilter localDisplayGenericSearchFilter = d.a(c.k().l(), GenericSearchFilter.FilterType.Platform);
    Object localObject = str;
    if (localDisplayGenericSearchFilter != null)
    {
      localObject = str;
      if (localDisplayGenericSearchFilter.i() != null) {
        localObject = localDisplayGenericSearchFilter.i().e();
      }
    }
    str = c();
    paramInteger = PlatformSearchDialogFragment.a("", new PlatformRSSTermMap(str, str), c.l(), (PlatformDisambiguatedAddress)localObject, "promoted_filter", paramInteger);
    paramInteger.a(r);
    paramInteger.show(((SearchBusinessesByList)e.get()).getSupportFragmentManager(), "platform_search_dialog");
    AppData.a(EventIri.SearchPromotedFilterDeliveryOpen);
  }
  
  private void a(List<DisplayGenericSearchFilter> paramList)
  {
    DisplayGenericSearchFilter localDisplayGenericSearchFilter = d.a(paramList);
    l.clear();
    k.a();
    if ((localDisplayGenericSearchFilter == null) || (!localDisplayGenericSearchFilter.b())) {
      return;
    }
    Object localObject1 = c.j();
    boolean bool = localDisplayGenericSearchFilter.h().c();
    Object localObject2 = ViewIri.SearchPromotedFilterShown;
    AutoResizeTextView localAutoResizeTextView;
    if (bool)
    {
      paramList = Boolean.TRUE;
      AppData.a((com.yelp.android.analytics.iris.a)localObject2, "toggle_on", paramList);
      if ((bool) && (localObject1 != null)) {
        ((Filter)localObject1).a(GenericSearchFilter.a(localDisplayGenericSearchFilter.h()));
      }
      paramList = (ListView)((SearchBusinessesByList)e.get()).findViewById(16908298);
      paramList = LayoutInflater.from((Context)e.get()).inflate(2130903452, paramList, false);
      l.b(paramList);
      localObject1 = localDisplayGenericSearchFilter.i();
      localObject2 = Html.fromHtml(((DisplayGenericSearchFilterParameters)localObject1).d());
      localAutoResizeTextView = (AutoResizeTextView)paramList.findViewById(2131690764);
      if (!bool) {
        break label248;
      }
      localAutoResizeTextView.setText(StringUtils.a((Spanned)localObject2, ((DisplayGenericSearchFilterParameters)localObject1).a()));
    }
    for (;;)
    {
      if (bool) {
        k.setPromotedFilterText(localObject2.toString());
      }
      paramList.setOnClickListener(t);
      paramList = (ToggleButton)paramList.findViewById(2131690236);
      paramList.setChecked(bool);
      paramList.setOnClickListener(new SearchBusinessesByList.a.7(this, localDisplayGenericSearchFilter));
      return;
      paramList = Boolean.FALSE;
      break;
      label248:
      localAutoResizeTextView.setText((CharSequence)localObject2);
    }
  }
  
  private boolean a(DisplayGenericSearchFilter paramDisplayGenericSearchFilter, Filter paramFilter, ToggleButton paramToggleButton, eo parameo)
  {
    PlatformGenericSearchFilter localPlatformGenericSearchFilter = (PlatformGenericSearchFilter)paramDisplayGenericSearchFilter.h();
    if (paramToggleButton.isChecked())
    {
      PlatformFilter localPlatformFilter = localPlatformGenericSearchFilter.f();
      if ((localPlatformFilter != null) && (localPlatformFilter.b()))
      {
        localPlatformFilter.a(c.o());
        if ((paramDisplayGenericSearchFilter.i() != null) && (paramDisplayGenericSearchFilter.i().e() != null)) {
          parameo.a(paramDisplayGenericSearchFilter.i().e().b());
        }
        paramFilter.a(PlatformGenericSearchFilter.a(localPlatformGenericSearchFilter, true));
        return true;
      }
      b(paramToggleButton);
      return false;
    }
    if (localPlatformGenericSearchFilter.f() != null)
    {
      paramDisplayGenericSearchFilter = localPlatformGenericSearchFilter.f().e();
      if (paramDisplayGenericSearchFilter != null) {
        paramDisplayGenericSearchFilter.a(parameo);
      }
    }
    paramFilter.a(GenericSearchFilter.a(localPlatformGenericSearchFilter, false));
    return true;
  }
  
  private boolean a(Filter paramFilter, ToggleButton paramToggleButton, DisplayGenericSearchFilter paramDisplayGenericSearchFilter)
  {
    paramDisplayGenericSearchFilter = (ReservationGenericSearchFilter)paramDisplayGenericSearchFilter.h();
    if (paramToggleButton.isChecked())
    {
      ReservationFilter localReservationFilter = paramDisplayGenericSearchFilter.f();
      if ((localReservationFilter != null) && (localReservationFilter.b())) {
        paramFilter.a(ReservationGenericSearchFilter.a(paramDisplayGenericSearchFilter, paramDisplayGenericSearchFilter.f(), true));
      }
    }
    for (;;)
    {
      return true;
      a(paramToggleButton);
      return false;
      paramFilter.a(ReservationGenericSearchFilter.a(paramDisplayGenericSearchFilter, paramDisplayGenericSearchFilter.f(), false));
    }
  }
  
  private void b()
  {
    ReservationSearchDialogFragment localReservationSearchDialogFragment = ReservationSearchDialogFragment.a(EventIri.SearchPromotedFilterReservationCancel);
    localReservationSearchDialogFragment.a(s);
    localReservationSearchDialogFragment.a(c());
    localReservationSearchDialogFragment.show(((SearchBusinessesByList)e.get()).getSupportFragmentManager(), "reservation_search_dialog");
    AppData.a(EventIri.SearchPromotedFilterReservationOpen);
  }
  
  private void b(ToggleButton paramToggleButton)
  {
    ((SearchBusinessesByList)e.get()).getHandler().postDelayed(new SearchBusinessesByList.a.9(this, paramToggleButton), 200L);
  }
  
  private void b(SearchRequest.SearchResponse paramSearchResponse)
  {
    if (paramSearchResponse.a().isEmpty()) {
      return;
    }
    ListDialogFragment localListDialogFragment = (ListDialogFragment)((SearchBusinessesByList)e.get()).getSupportFragmentManager().a("search_location_dialog");
    Object localObject = localListDialogFragment;
    if (localListDialogFragment == null)
    {
      localObject = new ArrayList();
      paramSearchResponse = paramSearchResponse.a().iterator();
      while (paramSearchResponse.hasNext()) {
        ((ArrayList)localObject).add(Pair.create(((Address)paramSearchResponse.next()).getFeatureName(), (Parcelable)null));
      }
      localObject = SimpleListDialogFragment.b(2131165777, (List)localObject);
      ((ListDialogFragment)localObject).show(((SearchBusinessesByList)e.get()).getSupportFragmentManager(), "search_location_dialog");
    }
    ((ListDialogFragment)localObject).a(u);
  }
  
  private boolean b(List<BusinessSearchResult> paramList)
  {
    if ((paramList == null) || (!Features.platform_attributes.isEnabled())) {
      return false;
    }
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      BusinessSearchResult localBusinessSearchResult = (BusinessSearchResult)paramList.next();
      Iterator localIterator = localBusinessSearchResult.c().iterator();
      while (localIterator.hasNext())
      {
        SearchAction localSearchAction = (SearchAction)localIterator.next();
        if ((localSearchAction.a() == BusinessSearchResult.SearchActionType.Platform) && (!((PlatformSearchAction)localSearchAction).q().isEmpty())) {
          return true;
        }
      }
      if (!localBusinessSearchResult.d().isEmpty()) {
        return true;
      }
    }
    return false;
  }
  
  private String c()
  {
    String str = c.o().E();
    Object localObject = str;
    if (TextUtils.isEmpty(str))
    {
      localObject = c.o().G();
      if (localObject == null) {
        localObject = null;
      }
    }
    else
    {
      return (String)localObject;
    }
    return ((Category)localObject).a();
  }
  
  private boolean c(SearchRequest.SearchResponse paramSearchResponse)
  {
    paramSearchResponse = paramSearchResponse.e();
    if (paramSearchResponse == SearchRequest.SearchResponse.Foldability.UNFOLDABLE)
    {
      b.setVisibility(8);
      b.setOnClickListener(null);
      return false;
    }
    b.setVisibility(0);
    b.setOnClickListener(new SearchBusinessesByList.a.6(this, paramSearchResponse));
    if (paramSearchResponse == SearchRequest.SearchResponse.Foldability.FOLDED) {}
    for (int i1 = 2131166583;; i1 = 2131165985)
    {
      b.setText(i1);
      return true;
    }
  }
  
  public void onChanged()
  {
    super.onChanged();
    SearchBusinessesByList localSearchBusinessesByList = (SearchBusinessesByList)e.get();
    if (localSearchBusinessesByList == null) {
      return;
    }
    SearchRequest.SearchResponse localSearchResponse = c.k();
    Object localObject1;
    Object localObject2;
    if (localSearchResponse != null)
    {
      localObject1 = (FiltersDialog)localSearchBusinessesByList.getSupportFragmentManager().a("filters_dialog");
      if (localObject1 != null) {
        ((FiltersDialog)localObject1).a(localSearchResponse.l());
      }
      localSearchBusinessesByList.disableLoading();
      localSearchBusinessesByList.clearError();
      boolean bool1 = b(localSearchResponse.b());
      d.a(bool1);
      d.a(localSearchResponse.g());
      d.a(c.a(localSearchBusinessesByList), c.l());
      d.a(localSearchResponse);
      boolean bool2 = c(localSearchResponse);
      b(localSearchResponse);
      a.setVisibility(0);
      j.a(false);
      if ((d.isEmpty()) && (!bool2)) {
        localSearchBusinessesByList.populateError(ErrorType.NO_RESULTS);
      }
      localObject1 = localSearchResponse.h();
      Iterator localIterator;
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        f.setVisibility(0);
        f.setText((CharSequence)localObject1);
        a.setPadding(0, 0, 0, 0);
        SearchBusinessesByList.a(localSearchResponse.j());
        localObject1 = new ArrayList();
        localObject2 = new ArrayList();
        if (!SearchBusinessesByList.q().isEmpty()) {
          localIterator = SearchBusinessesByList.q().iterator();
        }
      }
      else
      {
        for (;;)
        {
          label293:
          if (!localIterator.hasNext()) {
            break label454;
          }
          LocalAd localLocalAd = (LocalAd)localIterator.next();
          AppData.a(EventIri.AdSearchListImpression, localLocalAd.a(true));
          if (localLocalAd.c() == LocalAdPlacement.ABOVE_SEARCH) {
            ((List)localObject1).add(localLocalAd);
          }
          for (;;)
          {
            if (localLocalAd.a() == null) {
              break label407;
            }
            TrackOfflineAttributionRequest.a(localLocalAd.a(), TrackOfflineAttributionRequest.OfflineAttributionEventType.AD_IMPRESSION);
            break label293;
            f.setVisibility(8);
            break;
            if (localLocalAd.c() == LocalAdPlacement.BELOW_SEARCH) {
              ((List)localObject2).add(localLocalAd);
            }
          }
          label407:
          YelpLog.remoteError("AdsFix", "LocalAd has a null business ad type: " + localLocalAd.k() + "local ad business id: " + localLocalAd.m());
        }
      }
      label454:
      h.a(bool1);
      h.a(localSearchResponse.i());
      h.a((List)localObject1);
      i.a(bool1);
      i.a(localSearchResponse.i());
      i.a((List)localObject2);
      localObject1 = localSearchResponse.l();
      if (localObject1 != null)
      {
        localIterator = ((List)localObject1).iterator();
        localObject1 = null;
        label542:
        localObject2 = localObject1;
        if (!localIterator.hasNext()) {
          break label597;
        }
        localObject2 = (DisplayGenericSearchFilter)localIterator.next();
        if ((((DisplayGenericSearchFilter)localObject2).c() != GenericSearchFilter.FilterType.OpenNow) || (!((DisplayGenericSearchFilter)localObject2).d())) {
          break label975;
        }
        localObject1 = localObject2;
      }
    }
    label597:
    label619:
    label741:
    label775:
    label945:
    label957:
    label969:
    label975:
    for (;;)
    {
      break label542;
      localObject2 = null;
      if (localObject2 != null)
      {
        d.a(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.CLOSES_IN });
        a(localSearchResponse);
        a(localSearchResponse.l());
        if (q)
        {
          localObject1 = AppData.b().f();
          i1 = ((c)localObject1).S();
          int i2 = ((c)localObject1).T();
          localSearchBusinessesByList.r().post(new SearchBusinessesByList.a.1(this, localSearchBusinessesByList, i1, i2));
          q = false;
        }
        d.a((BusinessSearchRequest)c.o(), c.n().c());
        if ((localSearchResponse instanceof BusinessSearchRequest.BusinessSearchResponse))
        {
          localObject1 = ((BusinessSearchRequest.BusinessSearchResponse)localSearchResponse).n();
          p.a(localSearchBusinessesByList, (AndroidAppAnnotation)localObject1);
        }
        localSearchBusinessesByList.updateOptionsMenu();
        if (c.f()) {
          break label945;
        }
        o.b(new SearchBusinessesByList.a.4(this, localSearchBusinessesByList), 20);
        if (c.e()) {
          break label957;
        }
        if (localSearchResponse == null) {
          break label969;
        }
      }
      for (int i1 = localSearchResponse.f() - (localSearchResponse.g() + 20);; i1 = 20)
      {
        o.a(new SearchBusinessesByList.a.5(this, localSearchBusinessesByList), Math.min(20, i1));
        for (;;)
        {
          o.b();
          a(c.j());
          a();
          localObject1 = (PlatformSearchDialogFragment)localSearchBusinessesByList.getSupportFragmentManager().a("platform_search_dialog");
          if (localObject1 != null) {
            ((PlatformSearchDialogFragment)localObject1).a(r);
          }
          localObject1 = (ReservationSearchDialogFragment)localSearchBusinessesByList.getSupportFragmentManager().a("reservation_search_dialog");
          if (localObject1 == null) {
            break;
          }
          ((ReservationSearchDialogFragment)localObject1).a(s);
          return;
          d.b(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.CLOSES_IN });
          break label619;
          d.clear();
          break label741;
          o.b(null, 0);
          break label775;
          o.a(null, 0);
        }
      }
    }
  }
  
  public void onInvalidated()
  {
    super.onInvalidated();
    o.a(null, 0);
    o.b(null, 0);
    o.b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByList.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */