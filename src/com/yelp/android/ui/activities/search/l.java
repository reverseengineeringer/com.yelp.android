package com.yelp.android.ui.activities.search;

import android.content.Context;
import android.database.DataSetObserver;
import android.location.Address;
import android.support.v4.app.FragmentManager;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.yelp.android.analytics.iris.AutoIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.ap;
import com.yelp.android.appdata.i;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse.Foldability;
import com.yelp.android.ax.a;
import com.yelp.android.serializable.AttributeFilters;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.Filter.BusinessState;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.LocalAdPlacement;
import com.yelp.android.serializable.PromotedFilter;
import com.yelp.android.serializable.PromotedFilter.PromotedFilterType;
import com.yelp.android.ui.dialogs.ChoiceDialog;
import com.yelp.android.ui.dialogs.FiltersDialog;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter.DisplayFeature;
import com.yelp.android.ui.panels.businesssearch.SpellingSuggestPanel;
import com.yelp.android.ui.panels.businesssearch.g;
import com.yelp.android.ui.panels.businesssearch.j;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.h;
import com.yelp.android.util.ErrorType;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;

final class l
  extends DataSetObserver
{
  private final View a;
  private final TextView b;
  private final ap c;
  private final g<BusinessSearchResult> d;
  private final WeakReference<SearchBusinessesByList> e;
  private final TextView f;
  private final SpellingSuggestPanel g;
  private final j h;
  private final j i;
  private final h j;
  private final bs k;
  private final h l;
  private final h m;
  private final h n;
  private final PagingPanel o;
  private boolean p;
  
  public l(TextView paramTextView1, View paramView, ap paramap, g<BusinessSearchResult> paramg, SearchBusinessesByList paramSearchBusinessesByList, TextView paramTextView2, SpellingSuggestPanel paramSpellingSuggestPanel, j paramj1, j paramj2, h paramh1, bs parambs, h paramh2, h paramh3, h paramh4, boolean paramBoolean)
  {
    a = paramView;
    o = ((PagingPanel)a.findViewById(2131493723));
    c = paramap;
    d = paramg;
    e = new WeakReference(paramSearchBusinessesByList);
    b = paramTextView1;
    f = paramTextView2;
    g = paramSpellingSuggestPanel;
    h = paramj1;
    i = paramj2;
    j = paramh1;
    k = parambs;
    l = paramh4;
    m = paramh2;
    n = paramh3;
    p = paramBoolean;
    onChanged();
  }
  
  private void a()
  {
    a(m, h);
    a(n, i);
  }
  
  private void a(SearchRequest.SearchResponse paramSearchResponse)
  {
    SearchBusinessesByList localSearchBusinessesByList = (SearchBusinessesByList)e.get();
    paramSearchResponse = paramSearchResponse.getSpellingSuggestion();
    if ((localSearchBusinessesByList == null) || (!c.g()) || (TextUtils.isEmpty(paramSearchResponse)))
    {
      g.setVisibility(8);
      return;
    }
    g.setSuggestion(paramSearchResponse);
    g.setVisibility(0);
  }
  
  private void a(Filter paramFilter, String paramString)
  {
    j.clear();
    paramFilter = Filter.getFilterDisplayString(paramFilter, paramString);
    if (!TextUtils.isEmpty(paramFilter))
    {
      paramString = new TextView((Context)e.get(), null, 2130772317);
      paramString.setText(paramFilter);
      j.b(paramString);
    }
  }
  
  private void a(PromotedFilter paramPromotedFilter)
  {
    l.clear();
    if ((paramPromotedFilter == null) || (paramPromotedFilter.getFilterType() == null) || (paramPromotedFilter.getFilterType() != PromotedFilter.PromotedFilterType.Boolean)) {
      return;
    }
    Filter localFilter = c.k();
    boolean bool = paramPromotedFilter.isOn();
    Object localObject;
    if (localFilter != null)
    {
      localObject = localFilter.getAttributes().getAttribute(paramPromotedFilter.getAlias());
      if ((bool) || (localObject != null)) {
        bool = true;
      }
    }
    for (;;)
    {
      ViewIri localViewIri = ViewIri.SearchPromotedFilterShown;
      if (bool) {}
      for (localObject = Boolean.TRUE;; localObject = Boolean.FALSE)
      {
        AppData.a(localViewIri, "toggle_on", localObject);
        if ((bool) && (localFilter != null)) {
          localFilter.getAttributes().addPromotedFilter(paramPromotedFilter);
        }
        localObject = (ListView)((SearchBusinessesByList)e.get()).findViewById(16908298);
        localObject = LayoutInflater.from((Context)e.get()).inflate(2130903353, (ViewGroup)localObject, false);
        l.b((View)localObject);
        ((TextView)((View)localObject).findViewById(2131493924)).setText(Html.fromHtml(paramPromotedFilter.getLabelAttributed()));
        localObject = (ToggleButton)((View)localObject).findViewById(2131493543);
        ((ToggleButton)localObject).setChecked(bool);
        ((ToggleButton)localObject).setOnCheckedChangeListener(new q(this, paramPromotedFilter));
        return;
        bool = false;
        break;
      }
    }
  }
  
  private void a(h paramh, j paramj)
  {
    paramh.clear();
    if ((d.isEmpty()) || (paramj.isEmpty()) || (!j.isEmpty()) || (!l.isEmpty())) {
      return;
    }
    paramj = new TextView((Context)e.get(), null, 2130772317);
    paramj.setHeight(ao.h);
    paramh.b(paramj);
  }
  
  private void b(SearchRequest.SearchResponse paramSearchResponse)
  {
    if (paramSearchResponse.getAmbiguousLocations().isEmpty()) {
      return;
    }
    ArrayList localArrayList = new ArrayList();
    paramSearchResponse = paramSearchResponse.getAmbiguousLocations().iterator();
    while (paramSearchResponse.hasNext()) {
      localArrayList.add(((Address)paramSearchResponse.next()).getFeatureName());
    }
    paramSearchResponse = ChoiceDialog.a(a.getContext(), 2131165700, (String[])localArrayList.toArray(new String[localArrayList.size()]));
    ((SearchBusinessesByList)e.get()).startActivityForResult(paramSearchResponse, 1012);
  }
  
  private boolean c(SearchRequest.SearchResponse paramSearchResponse)
  {
    paramSearchResponse = paramSearchResponse.isFolded();
    if (paramSearchResponse == SearchRequest.SearchResponse.Foldability.UNFOLDABLE)
    {
      b.setVisibility(8);
      b.setOnClickListener(null);
      return false;
    }
    b.setVisibility(0);
    b.setOnClickListener(new p(this, paramSearchResponse));
    if (paramSearchResponse == SearchRequest.SearchResponse.Foldability.FOLDED) {}
    for (int i1 = 2131166574;; i1 = 2131165911)
    {
      b.setText(i1);
      return true;
    }
  }
  
  public void onChanged()
  {
    super.onChanged();
    Object localObject1 = (SearchBusinessesByList)e.get();
    if (localObject1 == null) {
      return;
    }
    SearchRequest.SearchResponse localSearchResponse = c.l();
    if (localSearchResponse != null)
    {
      Object localObject2 = (FiltersDialog)((SearchBusinessesByList)localObject1).getSupportFragmentManager().findFragmentByTag("filters_dialog");
      if (localObject2 != null) {
        ((FiltersDialog)localObject2).a(localSearchResponse.getSuggestedFilters());
      }
      ((SearchBusinessesByList)localObject1).disableLoading();
      ((SearchBusinessesByList)localObject1).clearError();
      d.b(localSearchResponse.getOffset());
      d.a(localSearchResponse.getBusinessSearchResults());
      boolean bool = c(localSearchResponse);
      b(localSearchResponse);
      a.setVisibility(0);
      k.a(false);
      if ((d.isEmpty()) && (!bool)) {
        ((SearchBusinessesByList)localObject1).populateError(ErrorType.NO_RESULTS);
      }
      localObject2 = localSearchResponse.getAttribution();
      Object localObject3;
      Iterator localIterator;
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        f.setVisibility(0);
        f.setText((CharSequence)localObject2);
        a.setPadding(0, 0, 0, 0);
        SearchBusinessesByList.a(localSearchResponse.getLocalAds());
        localObject2 = new ArrayList();
        localObject3 = new ArrayList();
        if (!SearchBusinessesByList.p().isEmpty()) {
          localIterator = SearchBusinessesByList.p().iterator();
        }
      }
      else
      {
        for (;;)
        {
          if (!localIterator.hasNext()) {
            break label347;
          }
          LocalAd localLocalAd = (LocalAd)localIterator.next();
          AppData.a(AutoIri.AdSearchListImpression, localLocalAd.getIriParams(true));
          if (localLocalAd.getLocalAdPlacement() == LocalAdPlacement.ABOVE_SEARCH)
          {
            ((List)localObject2).add(localLocalAd);
            continue;
            f.setVisibility(8);
            break;
          }
          if (localLocalAd.getLocalAdPlacement() == LocalAdPlacement.BELOW_SEARCH) {
            ((List)localObject3).add(localLocalAd);
          }
        }
      }
      label347:
      h.a((List)localObject2);
      i.a((List)localObject3);
      localObject2 = c.k();
      if ((localObject2 != null) && (((Filter)localObject2).getBusinessState().contains(Filter.BusinessState.OPEN)))
      {
        d.a(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.CLOSES_IN });
        a(localSearchResponse);
        a(localSearchResponse.getPromotedFilter());
        if (p)
        {
          localObject2 = AppData.b().f();
          i1 = ((i)localObject2).U();
          int i2 = ((i)localObject2).V();
          ((SearchBusinessesByList)localObject1).q().post(new m(this, (SearchBusinessesByList)localObject1, i1, i2));
          p = false;
        }
        localObject2 = (BusinessSearchRequest)c.p();
        localObject3 = c.o().d();
        SearchUtils.a(((BusinessSearchRequest)localObject2).getSearchTerms(), ((BusinessSearchRequest)localObject2).getCategoryName(), ((BusinessSearchRequest)localObject2).getTermNear(), ((BusinessSearchRequest)localObject2).getPageOffset(), ((BusinessSearchRequest)localObject2).getFilter(), (String)localObject3);
        label534:
        ((SearchBusinessesByList)localObject1).updateOptionsMenu();
        if (c.g()) {
          break label707;
        }
        o.b(new n(this, (SearchBusinessesByList)localObject1), 20);
        label568:
        if (c.f()) {
          break label719;
        }
        if (localSearchResponse == null) {
          break label737;
        }
      }
    }
    label625:
    label707:
    label719:
    label737:
    for (int i1 = localSearchResponse.getTotal() - (localSearchResponse.getOffset() + 20);; i1 = 20)
    {
      o.a(new o(this, (SearchBusinessesByList)localObject1), Math.min(20, i1));
      o.b();
      if ((localSearchResponse != null) && (localSearchResponse.getPromotedFilter() != null)) {}
      for (localObject1 = localSearchResponse.getPromotedFilter().getAlias();; localObject1 = null)
      {
        a(c.k(), (String)localObject1);
        a();
        return;
        d.b(new BusinessAdapter.DisplayFeature[] { BusinessAdapter.DisplayFeature.CLOSES_IN });
        break;
        d.clear();
        break label534;
        o.b(null, 0);
        break label568;
        o.a(null, 0);
        break label625;
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
 * Qualified Name:     com.yelp.android.ui.activities.search.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */