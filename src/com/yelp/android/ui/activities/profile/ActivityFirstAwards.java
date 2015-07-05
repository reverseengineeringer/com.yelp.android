package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.gy;
import com.yelp.android.appdata.webrequests.gz;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.BusinessInfoProviderFeedEntry;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.serializable.ReviewFeedEntry;
import com.yelp.android.serializable.TipFeedEntry;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.feed.UserIdOverridenTipFeedEntry;
import com.yelp.android.ui.activities.feed.aq;
import com.yelp.android.ui.activities.feed.be;
import com.yelp.android.ui.activities.feed.bl;
import com.yelp.android.ui.activities.feed.br;
import com.yelp.android.ui.activities.feed.v;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.YelpListActivity;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

public class ActivityFirstAwards
  extends YelpListActivity
{
  private int a;
  private int b;
  private User c;
  private gy d;
  private gz e;
  private aq f;
  private final m<List<BusinessInfoProviderFeedEntry>> g = new b(this);
  private final m<List<BusinessInfoProviderFeedEntry>> h = new c(this);
  private final br i = new d(this);
  private final Comparator<FeedEntry> j = new e(this);
  
  public static Intent a(Context paramContext, User paramUser)
  {
    paramContext = new Intent(paramContext, ActivityFirstAwards.class);
    paramContext.putExtra("extra.user", paramUser);
    return paramContext;
  }
  
  private void a(List<BusinessInfoProviderFeedEntry> paramList)
  {
    f.a(paramList, j);
    if ((b >= c.getFirstToReviewCount()) && (a >= c.getFirstToTipCount())) {
      q().f();
    }
  }
  
  private boolean a(ApiRequest paramApiRequest)
  {
    return (paramApiRequest == null) || (paramApiRequest.isCompleted());
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    paramListView = paramListView.getItemAtPosition(paramInt);
    if ((paramListView instanceof ReviewFeedEntry)) {
      startActivity(((ReviewFeedEntry)paramListView).getIntentForClick(paramView.getContext()));
    }
    while (!(paramListView instanceof TipFeedEntry)) {
      return;
    }
    startActivity(((TipFeedEntry)paramListView).getIntentForClick(paramView.getContext()));
  }
  
  protected void d()
  {
    super.d();
    if ((b < c.getFirstToReviewCount()) && (a(d)))
    {
      d = new gy(h, c, b, e_(), true);
      d.execute(new Void[0]);
    }
    if ((a < c.getFirstToTipCount()) && (a(e)))
    {
      e = new gz(g, c, a, e_(), true, false);
      e.execute(new Void[0]);
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.UserProfileFirsts;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.b paramb)
  {
    return Collections.singletonMap("user_id", c.getUserId());
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(getString(2131165840));
    c = ((User)getIntent().getParcelableExtra("extra.user"));
    Object localObject;
    if (paramBundle != null)
    {
      localObject = paramBundle.getParcelableArrayList("tip_and_review_list");
      b = paramBundle.getInt("review_count");
      a = paramBundle.getInt("tip_count");
    }
    for (paramBundle = (Bundle)localObject;; paramBundle = null)
    {
      localObject = paramBundle;
      if (paramBundle == null) {
        localObject = new ArrayList();
      }
      f = new aq(null, new v());
      f.a((Collection)localObject);
      f.a(ReviewFeedEntry.class, new be());
      f.a(UserIdOverridenTipFeedEntry.class, new bl(i));
      q().setAdapter(f);
      return;
    }
  }
  
  protected void onPause()
  {
    super.onPause();
    freezeRequest("first_to_review", d);
    freezeRequest("first_to_tip", e);
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((b >= c.getFirstToReviewCount()) && (a >= c.getFirstToTipCount()))
    {
      q().f();
      return;
    }
    d = ((gy)thawRequest("first_to_review", d, h));
    e = ((gz)thawRequest("first_to_tip", e, g));
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("review_count", b);
    paramBundle.putInt("tip_count", a);
    paramBundle.putParcelableArrayList("tip_and_review_list", new ArrayList(f.b()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityFirstAwards
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */