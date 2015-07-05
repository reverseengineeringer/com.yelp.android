package com.yelp.android.appdata;

import android.content.Context;
import android.content.Intent;
import android.database.DataSetObservable;
import android.net.Uri;
import android.text.TextUtils;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchOption;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.fv;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.ax.a;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.YelpBusiness;
import java.util.EnumSet;
import java.util.List;

public class ap
  extends DataSetObservable
{
  private SearchRequest.SearchResponse a;
  private final a b;
  private SearchRequest c;
  private j<Void> d;
  private int e;
  private IriSource f;
  private String g;
  private boolean h;
  private final j<SearchRequest.SearchResponse> i = new aq(this);
  
  public ap(j<Void> paramj, a parama)
  {
    if (paramj == null) {
      throw new IllegalArgumentException("Need a non null callback or else your search is going to be pretty useless");
    }
    if (parama == null) {
      throw new IllegalArgumentException("Need a non null Cache to perform a search, don't be wasteful of bandwidth");
    }
    b = parama;
    d = paramj;
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
  
  private boolean q()
  {
    if ((c != null) && (!c.isFetching())) {}
    for (boolean bool = true;; bool = false)
    {
      if ((c != null) && (c.isCompleted()))
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
  
  public Uri a()
  {
    Uri localUri = null;
    if (c != null) {
      localUri = Uri.parse(c.getUrlString());
    }
    return localUri;
  }
  
  public String a(Context paramContext)
  {
    if (!h()) {}
    do
    {
      return "";
      if (!TextUtils.isEmpty(c.getSearchTerms())) {
        return c.getSearchTerms();
      }
      if (c.getCategory() != null) {
        return c.getCategory().getName();
      }
    } while (!TextUtils.isEmpty(""));
    if (c.getSearchOptions().contains(SearchRequest.SearchOption.CHECK_IN_OFFERS)) {
      return paramContext.getString(2131165489);
    }
    return paramContext.getString(2131165475);
  }
  
  public void a(j<Void> paramj)
  {
    d = paramj;
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    if ((l() != null) && (l().getBusinessSearchResults() != null)) {
      BusinessSearchResult.replaceBusiness(l().getBusinessSearchResults(), paramYelpBusiness);
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
      c.setCacheAdapter(b);
      c.setCallback(i);
    }
    return h();
  }
  
  public void b(Intent paramIntent)
  {
    paramIntent.putExtra("extra.query", c);
    paramIntent.putExtra("extra.offset", e);
  }
  
  public boolean b()
  {
    boolean bool = q();
    int k;
    if (bool)
    {
      k = e;
      if (a == null) {
        break label64;
      }
    }
    label64:
    for (int j = a.getBusinessSearchResults().size();; j = 0)
    {
      a = null;
      c.setOffset(j + k);
      c.search();
      return bool;
    }
  }
  
  public boolean c()
  {
    return (c != null) && (!c.isCompleted());
  }
  
  public boolean d()
  {
    boolean bool = q();
    if (bool)
    {
      a = null;
      c.search();
    }
    return bool;
  }
  
  public boolean e()
  {
    boolean bool = q();
    if (bool)
    {
      a = null;
      int j = Math.max(0, e - 20);
      c.setOffset(j);
      c.search();
    }
    return bool;
  }
  
  public boolean f()
  {
    return h;
  }
  
  public boolean g()
  {
    return e < 20;
  }
  
  public boolean h()
  {
    return c != null;
  }
  
  public fv i()
  {
    if (c == null) {
      return new fv();
    }
    fv localfv = new fv();
    localfv.a(c.getCategory()).a(c.getFormatMode()).a(c.getSearchMode()).b(c.getSearchTerms()).a(c.getTermNear()).a(c.getRegion()).a(c.getSearchOptions()).a(c.getFilter());
    return localfv;
  }
  
  public void j()
  {
    if (c != null) {
      c.cancel(true);
    }
    notifyInvalidated();
  }
  
  public Filter k()
  {
    if (c != null) {
      return c.getFilter();
    }
    return null;
  }
  
  public SearchRequest.SearchResponse l()
  {
    return a;
  }
  
  public String m()
  {
    if (h()) {
      return c.getTermNear();
    }
    return "";
  }
  
  public double[] n()
  {
    return c.getRegion();
  }
  
  public a o()
  {
    return b;
  }
  
  public SearchRequest p()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */