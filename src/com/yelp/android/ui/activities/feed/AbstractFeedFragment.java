package com.yelp.android.ui.activities.feed;

import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView.l;
import android.util.ArrayMap;
import android.view.View;
import android.widget.AbsListView.RecyclerListener;
import android.widget.ListAdapter;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest;
import com.yelp.android.appdata.webrequests.eh;
import com.yelp.android.appdata.webrequests.ej;
import com.yelp.android.appdata.webrequests.ek;
import com.yelp.android.appdata.webrequests.em;
import com.yelp.android.ci.f;
import com.yelp.android.serializable.FeedItem;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import com.yelp.android.ui.activities.support.YelpSwipeRefreshListFragment;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.t;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.c;
import java.util.List;
import java.util.Map;

public abstract class AbstractFeedFragment
  extends YelpSwipeRefreshListFragment
{
  protected a a;
  protected String b;
  protected FeedType c;
  protected t d;
  protected String e = null;
  protected final RecyclerView.l f = new AbstractFeedFragment.8(this);
  protected final f g = new AbstractFeedFragment.9(this);
  private ReviewVoteRequest j;
  private em k;
  private ek l;
  private eh m;
  private ej n;
  private c o;
  private YelpBusiness p;
  private boolean q;
  private int r = -1;
  private final AbsListView.RecyclerListener s = new AbstractFeedFragment.10(this);
  private final com.yelp.android.appdata.webrequests.core.c.a t = new AbstractFeedFragment.11(this);
  private final com.yelp.android.appdata.webrequests.core.c.a u = new AbstractFeedFragment.12(this);
  private final com.yelp.android.appdata.webrequests.core.c.a v = new AbstractFeedFragment.13(this);
  private final com.yelp.android.appdata.webrequests.core.c.a w = new AbstractFeedFragment.2(this);
  private final com.yelp.android.appdata.webrequests.core.c.a x = new AbstractFeedFragment.3(this);
  private final com.yelp.android.util.c.a y = new AbstractFeedFragment.4(this);
  
  private ReviewSource h()
  {
    switch (AbstractFeedFragment.5.a[c.ordinal()])
    {
    default: 
      ReviewSource localReviewSource = ReviewSource.FeedFriendYnra;
      YelpLog.remoteError("AbstractFeedFragment", "Starting YNRA review from invalid feed type: " + c);
      return localReviewSource;
    case 1: 
      return ReviewSource.FeedMainYnra;
    case 2: 
      return ReviewSource.FeedMeYnra;
    case 3: 
      return ReviewSource.FeedNearbyYnra;
    }
    return ReviewSource.FeedFriendYnra;
  }
  
  public void B_()
  {
    int i = a.b();
    ArrayMap localArrayMap = new ArrayMap();
    localArrayMap.put("seen_item_count", Long.valueOf(i));
    localArrayMap.put("total_item_count", Long.valueOf(q().getCount()));
    localArrayMap.put("request_id", b);
    if (getView() != null)
    {
      localArrayMap.put("user_did_scroll", Boolean.valueOf(m().h()));
      m().i();
    }
    for (;;)
    {
      AppData.a(FeedEventIriType.FEED_SEEN.getFeedEventIriByFeedType(c), localArrayMap);
      a.c();
      return;
      localArrayMap.put("user_did_scroll", Boolean.valueOf(q));
    }
  }
  
  public void a(FeedType paramFeedType)
  {
    if (paramFeedType == c) {
      return;
    }
    c = paramFeedType;
    m().setItemsCanFocus(true);
    a = new a(c, g, f, d);
    a(a);
  }
  
  public void a(List<FeedItem> paramList)
  {
    a.a(paramList);
    b(a.getCount());
  }
  
  protected void b(List<FeedItem> paramList)
  {
    a.clear();
    a(paramList);
  }
  
  public a c()
  {
    return a;
  }
  
  protected void f()
  {
    b("com.yelp.android.tips.update", new AbstractFeedFragment.1(this));
    b("com.yelp.android.review.update", new AbstractFeedFragment.6(this));
    b("com.yelp.android.business.update", new AbstractFeedFragment.7(this));
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default: 
      p = o.a(paramInt1, paramInt2, p);
      return;
    case 1070: 
      YelpActivity.IntentData.popData();
      return;
    }
    a.c(a.getItem(r));
    a.notifyDataSetChanged();
  }
  
  public void onPause()
  {
    super.onPause();
    q = m().h();
    a("review_vote", j);
    a("tip_feedback", k);
    a("checkin_feedback", l);
    a("photo_feedback", m);
    a("video_feedback", n);
    a("add_bookmark", o.a());
    a("remove_bookmark", o.b());
  }
  
  public void onResume()
  {
    super.onResume();
    j = ((ReviewVoteRequest)a("review_vote", j, t));
    k = ((em)a("tip_feedback", k, u));
    l = ((ek)a("checkin_feedback", l, v));
    m = ((eh)a("photo_feedback", m, w));
    n = ((ej)a("video_feedback", n, x));
    a("remove_bookmark", null, o.d());
    a("add_bookmark", null, o.c());
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("all_entries", a.d());
    paramBundle.putBoolean("has_user_scrolled", q);
    paramBundle.putString("feed_request_id", b);
    paramBundle.putString("next_page_index", e);
    paramBundle.putInt("selected_item_position", r);
    paramBundle.putSerializable("feed_type", c);
    paramBundle.putParcelable("business_to_bookmark", p);
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    d = t.a(this);
    if (paramBundle != null)
    {
      q = paramBundle.getBoolean("has_user_scrolled");
      b = paramBundle.getString("feed_request_id");
      e = paramBundle.getString("next_page_index");
      r = paramBundle.getInt("selected_item_position");
      c = ((FeedType)paramBundle.getSerializable("feed_type"));
      p = ((YelpBusiness)paramBundle.getParcelable("business_to_bookmark"));
      a = new a(c, g, f, d);
      paramView = paramBundle.getParcelableArrayList("all_entries");
      a.a(paramView);
      a(a);
      b(a.getCount());
    }
    o = new c(getActivity(), y, p);
    f();
    m().setRecyclerListener(s);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.AbstractFeedFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */