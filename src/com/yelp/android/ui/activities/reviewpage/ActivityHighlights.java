package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dw;
import com.yelp.android.appdata.webrequests.dw.a;
import com.yelp.android.serializable.ReviewHighlight;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.serializable.YelpBusinessReviewInsight;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.ab;
import com.yelp.android.ui.util.aj;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ActivityHighlights
  extends YelpListActivity
  implements a.a
{
  protected a a;
  protected ArrayList<ReviewHighlight> b;
  protected ArrayList<YelpBusinessReviewInsight> c;
  private aj d;
  private dw e;
  private int f;
  private YelpBusiness g;
  private SearchRequest h;
  private final ApiRequest.b<dw.a> i = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, dw.a paramAnonymousa)
    {
      ActivityHighlights.a(ActivityHighlights.this, paramAnonymousa.b());
      b.addAll(paramAnonymousa.a());
      a.a(false);
      if (b.size() >= paramAnonymousa.b())
      {
        r().f();
        a.c();
      }
      a.a(ActivityHighlights.b(ActivityHighlights.this, b.size()));
      a.notifyDataSetChanged();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      if ((paramAnonymousApiRequest instanceof dw))
      {
        r().f();
        a.c();
        a.notifyDataSetChanged();
      }
    }
  };
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, List<ReviewHighlight> paramList, SearchRequest paramSearchRequest)
  {
    paramContext = new Intent(paramContext, ActivityHighlights.class);
    paramContext.putExtra("extra.param.business", paramYelpBusiness);
    paramContext.putExtra("extra.review_highlights", new ArrayList(paramList));
    paramContext.putExtra("extra.review_insights", new ArrayList(paramYelpBusiness.aO()));
    if (paramSearchRequest != null) {
      paramContext.putExtra("extra.search_request", paramSearchRequest);
    }
    return paramContext;
  }
  
  private ArrayList<Object> a(int paramInt)
  {
    ArrayList localArrayList = new ArrayList(c.size() + paramInt);
    localArrayList.addAll(c);
    if (paramInt >= b.size())
    {
      localArrayList.addAll(b);
      return localArrayList;
    }
    localArrayList.addAll(b.subList(0, paramInt));
    return localArrayList;
  }
  
  private void a(String paramString)
  {
    int j = b.size();
    if (((e != null) && (e.u())) || (j == f)) {
      return;
    }
    e = new dw(paramString, j, 8, h, i);
    e.f(new String[0]);
  }
  
  private String b()
  {
    if ((c.size() > 0) && (b.size() > 0)) {
      return getString(2131166518);
    }
    if (b.size() == 0) {
      return getString(2131166519);
    }
    return getString(2131166517);
  }
  
  public void a(ReviewHighlight paramReviewHighlight)
  {
    startActivity(ActivityReviewsFilteredByHighlightPage.a(this, g, paramReviewHighlight));
  }
  
  protected void c()
  {
    super.c();
    a(g.aD());
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessHighlights;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    return g.b(g.aD());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ScrollToLoadListView localScrollToLoadListView = r();
    Object localObject = getIntent();
    g = ((YelpBusiness)((Intent)localObject).getParcelableExtra("extra.param.business"));
    b = ((Intent)localObject).getParcelableArrayListExtra("extra.review_highlights");
    c = ((Intent)localObject).getParcelableArrayListExtra("extra.review_insights");
    h = ((SearchRequest)((Intent)localObject).getParcelableExtra("extra.search_request"));
    localScrollToLoadListView.setItemsCanFocus(true);
    localObject = createLoadingPanel();
    ((PanelLoading)localObject).a(2131166076);
    localScrollToLoadListView.setEmptyView((View)localObject);
    d = new aj();
    a = new a(2130903455, this);
    d.a(2131166518, b(), a);
    if (paramBundle != null)
    {
      f = paramBundle.getInt("HighlightsTotal");
      b = paramBundle.getParcelableArrayList("Highlights");
      a.a(a(b.size()));
      if (b.size() >= f)
      {
        r().f();
        a.c();
      }
      h = ((SearchRequest)paramBundle.getParcelable("search_request"));
    }
    for (;;)
    {
      setTitle(g.z());
      registerForContextMenu(localScrollToLoadListView);
      localScrollToLoadListView.setAdapter(d);
      return;
      a.a(a(b.size()));
      f = Integer.MAX_VALUE;
      a(g.aD());
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    paramView = (AdapterView.AdapterContextMenuInfo)paramContextMenuInfo;
    paramView = d.getItem(position);
    if ((paramView instanceof YelpBusinessReview))
    {
      paramView = (YelpBusinessReview)paramView;
      paramContextMenu.setHeaderTitle(g.z());
      ab.a(this, paramContextMenu, paramView.b(), paramView.O());
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("Highlights", b);
    paramBundle.putInt("HighlightsTotal", f);
    if (h != null) {
      paramBundle.putParcelable("search_request", h);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityHighlights
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */