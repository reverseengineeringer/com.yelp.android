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
import com.yelp.android.analytics.h;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.FormatMode;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.SearchMode;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.cv;
import com.yelp.android.appdata.webrequests.ee;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.database.g;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.ActivitySingleSearchBar;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.panels.g.a;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.b;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

public class ReviewSuggestionsPageFragment
  extends YelpListFragment
  implements PanelError.a
{
  private aj a;
  private d b;
  private a c;
  private ee d;
  private cv e;
  private ArrayList<ReviewSuggestion> f;
  private ArrayList<YelpBusiness> g;
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
  private final k.b<ArrayList<ReviewSuggestion>> v = new ReviewSuggestionsPageFragment.2(this);
  private final k.b<ArrayList<YelpBusiness>> w = new ReviewSuggestionsPageFragment.3(this);
  private final k.b<SearchRequest.SearchResponse> x = new ReviewSuggestionsPageFragment.4(this);
  private final g.a y = new ReviewSuggestionsPageFragment.5(this);
  
  private void b(ErrorType paramErrorType)
  {
    if (paramErrorType.isMoreImportant(l)) {
      l = paramErrorType;
    }
    if (j == i()) {
      a(l, this);
    }
  }
  
  public static ReviewSuggestionsPageFragment f()
  {
    return new ReviewSuggestionsPageFragment();
  }
  
  private void g()
  {
    a = new aj();
    b = new d(y);
    View localView = getActivity().getLayoutInflater().inflate(2130903520, m(), false);
    t = ((Button)localView.findViewById(2131690821));
    t.setOnClickListener(new ReviewSuggestionsPageFragment.1(this));
    String str = getString(2131166634);
    a.a(2131166634, aj.c.a(str, b).a(2130772430).a(localView).b());
    c = new a();
    a.a(2131166218, aj.c.a(c).a(2130772430).b());
  }
  
  private void h()
  {
    if (u == null)
    {
      u = new BusinessSearchRequest(AppData.b().i().e(), x);
      u.a(BusinessSearchRequest.FormatMode.SHORT);
      u.g(p);
      if (!TextUtils.equals(q, getString(2131165745))) {
        break label143;
      }
      u.a(BusinessSearchRequest.SearchMode.NEARBY);
    }
    for (s = getString(2131166218);; s = getString(2131166508))
    {
      a(u);
      u.y();
      a.clear();
      return;
      c(u);
      u = u.B().a(x);
      break;
      label143:
      u.a(null);
      u.e(q);
    }
  }
  
  private int i()
  {
    if (AppData.b().q().b()) {
      return 2;
    }
    return 1;
  }
  
  private void j()
  {
    if ((i() == 2) && ((d == null) || (!d.u())))
    {
      d = new ee(v);
      a(d);
      d.a(new Void[0]);
    }
    if ((e == null) || (!e.u()))
    {
      e = new cv(w);
      a(e);
      e.a(new Void[0]);
    }
  }
  
  private boolean k()
  {
    boolean bool1 = true;
    if (o) {
      return g != null;
    }
    boolean bool2 = m;
    if (k + j == i()) {}
    for (;;)
    {
      m = (bool1 | bool2);
      return m;
      bool1 = false;
    }
  }
  
  private void t()
  {
    m = true;
    a.clear();
    u();
    v();
    if (l != ErrorType.NO_ERROR)
    {
      PanelError localPanelError = A();
      localPanelError.a(l, this);
      c(localPanelError);
    }
    a(a);
    l();
  }
  
  private void u()
  {
    if ((o) || (f == null) || (f.isEmpty())) {
      return;
    }
    i = new ArrayList(f.size());
    i.addAll(f.subList(0, Math.min(f.size(), 3)));
    b.a(i);
    if (f.size() > 3) {
      t.setVisibility(0);
    }
    h.a(IriSource.AddReviewPage, i);
  }
  
  private void v()
  {
    if ((g == null) || (g.isEmpty()))
    {
      b(ErrorType.NO_RESULTS);
      return;
    }
    c.a(g.subList(0, Math.min(g.size(), 20)));
    a.a(2131166218).a(s);
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
      AppData.a(paramView, "id", localYelpBusiness.aD());
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
    h();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle != null)
    {
      f = paramBundle.getParcelableArrayList("saved_suggestions");
      g = paramBundle.getParcelableArrayList("saved_nearby");
      m = paramBundle.getBoolean("saved_requests_completed", false);
      n = paramBundle.getBoolean("saved_review_flow", false);
      o = paramBundle.getBoolean("saved_search_flow", false);
      l = ((ErrorType)paramBundle.getSerializable("saved_main_error"));
      s = paramBundle.getString("saved_search_header");
      p = paramBundle.getString("saved_search_text");
      q = paramBundle.getString("saved_location_text");
    }
    g();
    if (k()) {
      t();
    }
    for (;;)
    {
      b(true);
      return;
      p_();
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
      c(d);
      c(e);
      c(u);
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
    d = ((ee)a("ADD_REVIEW_SUGGESTIONS", d, v));
    e = ((cv)a("ADD_REVIEW_NEARBY", e, w));
    u = ((BusinessSearchRequest)a("ADD_REVIEW_SEARCH", u, x));
    if (n) {
      p_();
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("saved_suggestions", f);
    paramBundle.putParcelableArrayList("saved_nearby", g);
    paramBundle.putBoolean("saved_requests_completed", m);
    paramBundle.putBoolean("saved_review_flow", n);
    paramBundle.putBoolean("saved_search_flow", o);
    paramBundle.putSerializable("saved_main_error", l);
    paramBundle.putString("saved_search_header", s);
    paramBundle.putString("saved_search_text", p);
    paramBundle.putString("saved_location_text", q);
  }
  
  public void p_()
  {
    l();
    z();
    a.clear();
    p = null;
    s = getString(2131166218);
    o = false;
    j = 0;
    k = 0;
    m = false;
    l = ErrorType.NO_ERROR;
    n = false;
    c(d);
    d = null;
    c(e);
    e = null;
    f = null;
    g = null;
    i = null;
    j();
  }
  
  public void q_()
  {
    if (o)
    {
      z();
      h();
      return;
    }
    p_();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ReviewSuggestionsPageFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */