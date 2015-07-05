package com.yelp.android.ui.activities.reviews;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.FormatMode;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.SearchMode;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.dr;
import com.yelp.android.appdata.webrequests.fi;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.database.q;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.ActivitySingleSearchBar;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.aa;
import com.yelp.android.ui.panels.at;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bv;
import com.yelp.android.ui.util.bw;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

public class ReviewSuggestionsPageFragment
  extends YelpListFragment
  implements aa
{
  private bs a;
  private ba b;
  private x c;
  private fi d;
  private dr e;
  private ArrayList<ReviewSuggestion> g;
  private ArrayList<YelpBusiness> h;
  private ArrayList<ReviewSuggestion> i;
  private int j;
  private int k;
  private ErrorType l;
  private boolean m;
  private boolean n;
  private boolean o;
  private String p;
  private String q;
  private String r;
  private String s;
  private Button t;
  private BusinessSearchRequest u;
  private final m<ArrayList<ReviewSuggestion>> v = new bc(this);
  private final j<ArrayList<YelpBusiness>> w = new bd(this);
  private final j<SearchRequest.SearchResponse> x = new be(this);
  private final at y = new bf(this);
  
  private void b(ErrorType paramErrorType)
  {
    if (paramErrorType.isMoreImportant(l)) {
      l = paramErrorType;
    }
    if (j == h()) {
      a(l, this);
    }
  }
  
  public static ReviewSuggestionsPageFragment e()
  {
    return new ReviewSuggestionsPageFragment();
  }
  
  private void f()
  {
    a = new bs();
    b = new ba(y);
    View localView = getActivity().getLayoutInflater().inflate(2130903409, m(), false);
    t = ((Button)localView.findViewById(2131493972));
    t.setOnClickListener(new bb(this));
    String str = getString(2131166620);
    a.a(2131166620, bw.a(str, b).a(2130772320).a(localView).a());
    c = new x();
    a.a(2131166168, bw.a(c).a(2130772320).a());
  }
  
  private void g()
  {
    if (u == null)
    {
      u = new BusinessSearchRequest(AppData.b().i().g(), x);
      u.setFormatMode(BusinessSearchRequest.FormatMode.SHORT);
      u.setSearchTerms(p);
      if (!TextUtils.equals(q, getString(2131165670))) {
        break label143;
      }
      u.setSearchMode(BusinessSearchRequest.SearchMode.NEARBY);
    }
    for (s = getString(2131166168);; s = getString(2131166509))
    {
      a(u);
      u.search();
      a.clear();
      return;
      b(u);
      u = u.copy().setCallback(x);
      break;
      label143:
      u.setSearchMode(null);
      u.setTermNear(q);
    }
  }
  
  private int h()
  {
    if (AppData.b().m().c()) {
      return 2;
    }
    return 1;
  }
  
  private void i()
  {
    if ((h() == 2) && ((d == null) || (!d.isFetching())))
    {
      d = new fi(v);
      a(d);
      d.execute(new Void[0]);
    }
    if ((e == null) || (!e.isFetching()))
    {
      e = new dr(w);
      a(e);
      e.executeWithLocation(new Void[0]);
    }
  }
  
  private boolean k()
  {
    boolean bool1 = true;
    if (o) {
      return h != null;
    }
    boolean bool2 = m;
    if (k + j == h()) {}
    for (;;)
    {
      m = (bool1 | bool2);
      return m;
      bool1 = false;
    }
  }
  
  private void l()
  {
    m = true;
    a.clear();
    u();
    v();
    if (l != ErrorType.NO_ERROR)
    {
      PanelError localPanelError = y();
      localPanelError.a(l, this);
      c(localPanelError);
    }
    a(a);
    j();
  }
  
  private void u()
  {
    if ((o) || (g == null) || (g.isEmpty())) {
      return;
    }
    i = new ArrayList(g.size());
    i.addAll(g.subList(0, Math.min(g.size(), 3)));
    b.a(i);
    if (g.size() > 3) {
      t.setVisibility(0);
    }
    AppData.a(ViewIri.ReviewSuggestionsViewed, IriSource.AddReviewPage.getMapWithParameter());
  }
  
  private void v()
  {
    if ((h == null) || (h.isEmpty()))
    {
      b(ErrorType.NO_RESULTS);
      return;
    }
    c.a(h.subList(0, Math.min(h.size(), 20)));
    a.a(2131166168).a(s);
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getAdapter().getItem(paramInt);
    YelpBusiness localYelpBusiness;
    if ((paramListView instanceof YelpBusiness))
    {
      localYelpBusiness = (YelpBusiness)paramListView;
      if (!o) {
        break label66;
      }
      paramView = EventIri.SearchAddReviewSelect;
    }
    for (paramListView = ReviewSource.SearchAddReviewBusiness;; paramListView = ReviewSource.NearbySearchAddReviewBusiness)
    {
      AppData.a(paramView, "id", localYelpBusiness.getId());
      startActivity(ActivityReviewWrite.a(getActivity(), localYelpBusiness, paramListView));
      return;
      label66:
      paramView = EventIri.SearchNearbyAddReviewSelect;
    }
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    o = true;
    p = paramString1;
    q = paramString2;
    r = paramString3;
    g();
  }
  
  public void a_()
  {
    j();
    x();
    a.clear();
    p = null;
    s = getString(2131166168);
    o = false;
    j = 0;
    k = 0;
    m = false;
    l = ErrorType.NO_ERROR;
    n = false;
    b(d);
    d = null;
    b(e);
    e = null;
    g = null;
    h = null;
    i = null;
    i();
  }
  
  public void m_()
  {
    if (o)
    {
      x();
      g();
      return;
    }
    a_();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle != null)
    {
      g = paramBundle.getParcelableArrayList("saved_suggestions");
      h = paramBundle.getParcelableArrayList("saved_nearby");
      m = paramBundle.getBoolean("saved_requests_completed", false);
      n = paramBundle.getBoolean("saved_review_flow", false);
      o = paramBundle.getBoolean("saved_search_flow", false);
      l = ((ErrorType)paramBundle.getParcelable("saved_main_error"));
      s = paramBundle.getString("saved_search_header");
      p = paramBundle.getString("saved_search_text");
      q = paramBundle.getString("saved_location_text");
    }
    f();
    if (k()) {
      l();
    }
    for (;;)
    {
      a(true);
      return;
      a_();
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
  
  public void onDestroy()
  {
    super.onDestroy();
    if (getActivity().isFinishing())
    {
      b(d);
      b(e);
      b(u);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    a("ADD_REVIEW_SUGGESTIONS", d);
    a("ADD_REVIEW_NEARBY", e);
    a("ADD_REVIEW_SEARCH", u);
  }
  
  public void onResume()
  {
    super.onResume();
    d = ((fi)a("ADD_REVIEW_SUGGESTIONS", d, v));
    e = ((dr)a("ADD_REVIEW_NEARBY", e, w));
    u = ((BusinessSearchRequest)a("ADD_REVIEW_SEARCH", u, x));
    if (n) {
      a_();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("saved_suggestions", g);
    paramBundle.putParcelableArrayList("saved_nearby", h);
    paramBundle.putBoolean("saved_requests_completed", m);
    paramBundle.putBoolean("saved_review_flow", n);
    paramBundle.putBoolean("saved_search_flow", o);
    paramBundle.putParcelable("saved_main_error", l);
    paramBundle.putString("saved_search_header", s);
    paramBundle.putString("saved_search_text", p);
    paramBundle.putString("saved_location_text", q);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ReviewSuggestionsPageFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */