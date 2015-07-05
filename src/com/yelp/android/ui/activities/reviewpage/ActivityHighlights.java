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
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.webrequests.SearchRequest;
import com.yelp.android.appdata.webrequests.eu;
import com.yelp.android.appdata.webrequests.ev;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.ReviewHighlight;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.serializable.YelpBusinessReviewInsight;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import com.yelp.android.ui.util.bf;
import com.yelp.android.ui.util.bs;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ActivityHighlights
  extends YelpListActivity
  implements v
{
  protected t a;
  protected ArrayList<ReviewHighlight> b;
  protected ArrayList<YelpBusinessReviewInsight> c;
  private bs d;
  private eu e;
  private int f;
  private YelpBusiness g;
  private SearchRequest h;
  private final m<ev> i = new h(this);
  
  public static Intent a(Context paramContext, YelpBusiness paramYelpBusiness, List<ReviewHighlight> paramList, SearchRequest paramSearchRequest)
  {
    paramContext = new Intent(paramContext, ActivityHighlights.class);
    paramContext.putExtra("extra.param.business", paramYelpBusiness);
    paramContext.putExtra("extra.review_highlights", new ArrayList(paramList));
    paramContext.putExtra("extra.review_insights", new ArrayList(paramYelpBusiness.getReviewInsights()));
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
    if (((e != null) && (e.isFetching())) || (j == f)) {
      return;
    }
    e = new eu(paramString, j, 8, h, i);
    e.execute(new String[0]);
  }
  
  private String c()
  {
    if ((c.size() > 0) && (b.size() > 0)) {
      return getString(2131166519);
    }
    if (b.size() == 0) {
      return getString(2131166520);
    }
    return getString(2131166518);
  }
  
  public void a(ReviewHighlight paramReviewHighlight)
  {
    startActivity(ActivityReviewsFilteredByHighlightPage.a(this, g, paramReviewHighlight));
  }
  
  protected void d()
  {
    super.d();
    a(g.getId());
  }
  
  public ViewIri getIri()
  {
    return ViewIri.BusinessHighlights;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return g.b(g.getId());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ScrollToLoadListView localScrollToLoadListView = q();
    Object localObject = getIntent();
    g = ((YelpBusiness)((Intent)localObject).getParcelableExtra("extra.param.business"));
    b = ((Intent)localObject).getParcelableArrayListExtra("extra.review_highlights");
    c = ((Intent)localObject).getParcelableArrayListExtra("extra.review_insights");
    h = ((SearchRequest)((Intent)localObject).getParcelableExtra("extra.search_request"));
    localScrollToLoadListView.setItemsCanFocus(true);
    localObject = createLoadingPanel();
    ((PanelLoading)localObject).b(2131166017);
    localScrollToLoadListView.setEmptyView((View)localObject);
    d = new bs();
    a = new t(2130903357, this, g);
    d.a(2131166519, c(), a);
    if (paramBundle != null)
    {
      f = paramBundle.getInt("HighlightsTotal");
      b = paramBundle.getParcelableArrayList("Highlights");
      a.a(a(b.size()));
      if (b.size() >= f)
      {
        q().f();
        a.c();
      }
      h = ((SearchRequest)paramBundle.getParcelable("search_request"));
    }
    for (;;)
    {
      setTitle(g.getDisplayName());
      registerForContextMenu(localScrollToLoadListView);
      localScrollToLoadListView.setAdapter(d);
      return;
      a.a(a(b.size()));
      f = Integer.MAX_VALUE;
      a(g.getId());
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
      paramContextMenu.setHeaderTitle(g.getDisplayName());
      bf.a(this, paramContextMenu, paramView.getUserId(), paramView.getUserName());
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