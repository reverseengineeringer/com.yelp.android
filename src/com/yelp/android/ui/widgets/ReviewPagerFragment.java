package com.yelp.android.ui.widgets;

import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.ViewPager;
import android.support.v4.view.du;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest;
import com.yelp.android.av.i;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.reviewpage.ReviewFragment;
import com.yelp.android.ui.activities.reviewpage.av;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.util.cw;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class ReviewPagerFragment
  extends YelpFragment
{
  private ArrayList<YelpBusinessReview> a;
  private String b;
  private String c;
  private ag d;
  private ah e;
  private ViewPager g;
  private FrameLayout h;
  private ImageView i;
  private ImageView j;
  private int k;
  private int l;
  private int m;
  private boolean n;
  private List<ReviewVoteRequest> o;
  private int p;
  private final i q = new ab(this);
  private final av r = new ac(this);
  private final du s = new ad(this);
  private final Runnable t = new ae(this);
  
  public static ReviewPagerFragment a(String paramString1, ArrayList<YelpBusinessReview> paramArrayList, int paramInt1, int paramInt2, String paramString2)
  {
    ReviewPagerFragment localReviewPagerFragment = new ReviewPagerFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("business_id", paramString1);
    localBundle.putParcelableArrayList("reviews", paramArrayList);
    localBundle.putInt("start_index", paramInt1);
    localBundle.putInt("total", paramInt2);
    localBundle.putString("business_name", paramString2);
    localReviewPagerFragment.setArguments(localBundle);
    return localReviewPagerFragment;
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    int i2 = 0;
    ImageView localImageView = i;
    if (paramBoolean1)
    {
      i1 = 0;
      localImageView.setVisibility(i1);
      localImageView = j;
      if (!paramBoolean2) {
        break label47;
      }
    }
    label47:
    for (int i1 = i2;; i1 = 8)
    {
      localImageView.setVisibility(i1);
      return;
      i1 = 8;
      break;
    }
  }
  
  private ReviewFragment b(YelpBusinessReview paramYelpBusinessReview)
  {
    paramYelpBusinessReview = ReviewFragment.a(paramYelpBusinessReview, b, c);
    paramYelpBusinessReview.a(r);
    return paramYelpBusinessReview;
  }
  
  private void c(YelpBusinessReview paramYelpBusinessReview)
  {
    HashMap localHashMap = new HashMap(2);
    localHashMap.put("review_id", paramYelpBusinessReview.getId());
    localHashMap.put("business_id", b);
    localHashMap.put("user_id", paramYelpBusinessReview.getUserId());
    AppData.a(ViewIri.ReviewFullPage, localHashMap);
  }
  
  private boolean g()
  {
    return l == k - 1;
  }
  
  private boolean h()
  {
    return m == 0;
  }
  
  private ag i()
  {
    if ((g()) && (h())) {
      return new ag(this, getFragmentManager(), ReviewPagerFragment.AdapterState.DEFAULT);
    }
    if (g()) {
      return new ag(this, getFragmentManager(), ReviewPagerFragment.AdapterState.LOADING_BACKWARDS);
    }
    if (h()) {
      return new ag(this, getFragmentManager(), ReviewPagerFragment.AdapterState.LOADING_FORWARDS);
    }
    return new ag(this, getFragmentManager(), ReviewPagerFragment.AdapterState.LOADING);
  }
  
  public void a()
  {
    if ((d.getItem(c()) instanceof ReviewPagerFragment.LoadingFragment))
    {
      if (g.getCurrentItem() == -1) {
        g.setCurrentItem(0);
      }
    }
    else {
      return;
    }
    switch (af.a[d.a().ordinal()])
    {
    default: 
      return;
    case 1: 
    case 2: 
      g.setCurrentItem(a.size());
      return;
    }
    g.setCurrentItem(a.size() - 1);
  }
  
  public void a(int paramInt)
  {
    if ((d.a() == ReviewPagerFragment.AdapterState.LOADING_BACKWARDS) || (d.a() == ReviewPagerFragment.AdapterState.LOADING)) {
      g.setCurrentItem(paramInt + 1);
    }
    do
    {
      return;
      g.setCurrentItem(paramInt);
    } while (paramInt != 0);
    s.a(0);
  }
  
  public void a(YelpBusinessReview paramYelpBusinessReview)
  {
    int i1 = a.indexOf(paramYelpBusinessReview);
    if (i1 >= 0) {
      a.set(i1, paramYelpBusinessReview);
    }
  }
  
  public void a(ah paramah)
  {
    e = paramah;
  }
  
  public void a(List<YelpBusinessReview> paramList)
  {
    int i1 = 0;
    int i2 = a.size();
    if (n)
    {
      a.addAll(paramList);
      int i3 = l;
      int i4 = paramList.size();
      if (i2 == 0) {
        i1 = 1;
      }
      l = (i4 - i1 + i3);
      f();
      if (!n) {
        break label104;
      }
    }
    label104:
    for (i1 = i2;; i1 = paramList.size() - 1)
    {
      a(i1);
      return;
      a.addAll(0, paramList);
      m -= paramList.size();
      break;
    }
  }
  
  public YelpBusinessReview b()
  {
    if ((a == null) || (a.size() == 0)) {
      return null;
    }
    switch (af.a[d.a().ordinal()])
    {
    default: 
      return null;
    case 1: 
      return (YelpBusinessReview)a.get(g.getCurrentItem() - 1);
    case 4: 
      return (YelpBusinessReview)a.get(g.getCurrentItem());
    case 2: 
      return (YelpBusinessReview)a.get(g.getCurrentItem() - 1);
    }
    return (YelpBusinessReview)a.get(g.getCurrentItem());
  }
  
  public int c()
  {
    return g.getCurrentItem();
  }
  
  public void e()
  {
    Handler localHandler = new Handler();
    localHandler.removeCallbacks(t);
    if (a.size() != 0)
    {
      if (h.getVisibility() == 0)
      {
        cw.b(h, 5000L);
        return;
      }
      cw.c(h, 5000L);
      h.setVisibility(0);
      localHandler.postDelayed(t, 5000L);
      return;
    }
    h.setVisibility(8);
  }
  
  public void f()
  {
    int i1 = g.getCurrentItem();
    d = i();
    g.setAdapter(d);
    a(i1);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle == null)
    {
      paramBundle = getArguments().getParcelableArrayList("reviews");
      if (!paramBundle.isEmpty()) {
        a(paramBundle);
      }
    }
    for (;;)
    {
      e();
      return;
      a = paramBundle.getParcelableArrayList("reviews");
      d = i();
      g.setAdapter(d);
      n = paramBundle.getBoolean("is_loading_forward", n);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    n = true;
    Bundle localBundle = getArguments();
    b = localBundle.getString("business_id");
    c = localBundle.getString("business_name");
    a = new ArrayList();
    if (paramBundle == null)
    {
      l = localBundle.getInt("start_index");
      m = l;
    }
    for (p = 0;; p = paramBundle.getInt("review_votes_count", 0))
    {
      o = new ArrayList();
      k = localBundle.getInt("total");
      return;
      l = paramBundle.getInt("forward_index");
      m = paramBundle.getInt("backwards_index");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903408, paramViewGroup, false);
    g = ((ViewPager)paramLayoutInflater.findViewById(2131494011));
    g.setOnPageChangeListener(s);
    h = ((FrameLayout)paramLayoutInflater.findViewById(2131494012));
    i = ((ImageView)h.findViewById(2131494013));
    j = ((ImageView)h.findViewById(2131494014));
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    Iterator localIterator = o.iterator();
    int i1 = 0;
    if (localIterator.hasNext())
    {
      ReviewVoteRequest localReviewVoteRequest = (ReviewVoteRequest)localIterator.next();
      if (localReviewVoteRequest.isCompleted()) {
        break label80;
      }
      a("vote_request" + i1, localReviewVoteRequest);
      i1 += 1;
    }
    label80:
    for (;;)
    {
      break;
      p = i1;
      return;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    o.clear();
    int i1 = 0;
    while (i1 < p)
    {
      o.add((ReviewVoteRequest)a("vote_request" + i1, null, q));
      i1 += 1;
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("reviews", a);
    paramBundle.putInt("forward_index", l);
    paramBundle.putInt("backwards_index", m);
    paramBundle.putBoolean("is_loading_forward", n);
    paramBundle.putInt("review_votes_count", p);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ReviewPagerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */