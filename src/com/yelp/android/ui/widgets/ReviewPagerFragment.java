package com.yelp.android.ui.widgets;

import android.os.Bundle;
import android.os.Handler;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.e;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ReviewVoteRequest;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.ui.activities.reviewpage.ReviewFragment;
import com.yelp.android.ui.activities.reviewpage.ReviewFragment.a;
import com.yelp.android.ui.activities.support.YelpFragment;
import com.yelp.android.ui.util.av;
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
  private ReviewPagerFragment.a d;
  private b e;
  private ViewPager f;
  private FrameLayout g;
  private ImageView i;
  private ImageView j;
  private int k;
  private int l;
  private int m;
  private boolean n;
  private List<ReviewVoteRequest> o;
  private int p;
  private final c.a q = new ReviewPagerFragment.1(this);
  private final ReviewFragment.a r = new ReviewPagerFragment.2(this);
  private final ViewPager.e s = new ReviewPagerFragment.3(this);
  private final Runnable t = new ReviewPagerFragment.4(this);
  
  public static ReviewPagerFragment a(String paramString1, ArrayList<YelpBusinessReview> paramArrayList, int paramInt1, int paramInt2, String paramString2, String paramString3)
  {
    ReviewPagerFragment localReviewPagerFragment = new ReviewPagerFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("business_id", paramString1);
    localBundle.putParcelableArrayList("reviews", paramArrayList);
    localBundle.putInt("start_index", paramInt1);
    localBundle.putInt("total", paramInt2);
    localBundle.putString("business_name", paramString2);
    localBundle.putString("business_country", paramString3);
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
    paramYelpBusinessReview = ReviewFragment.a(paramYelpBusinessReview, b, c, getArguments().getString("business_country"));
    paramYelpBusinessReview.a(r);
    return paramYelpBusinessReview;
  }
  
  private void c(YelpBusinessReview paramYelpBusinessReview)
  {
    HashMap localHashMap = new HashMap(2);
    localHashMap.put("review_id", paramYelpBusinessReview.a());
    localHashMap.put("business_id", b);
    localHashMap.put("user_id", paramYelpBusinessReview.b());
    AppData.a(ViewIri.ReviewFullPage, localHashMap);
  }
  
  private boolean h()
  {
    return l == k - 1;
  }
  
  private boolean i()
  {
    return m == 0;
  }
  
  private ReviewPagerFragment.a j()
  {
    if ((h()) && (i())) {
      return new ReviewPagerFragment.a(this, getFragmentManager(), ReviewPagerFragment.AdapterState.DEFAULT);
    }
    if (h()) {
      return new ReviewPagerFragment.a(this, getFragmentManager(), ReviewPagerFragment.AdapterState.LOADING_BACKWARDS);
    }
    if (i()) {
      return new ReviewPagerFragment.a(this, getFragmentManager(), ReviewPagerFragment.AdapterState.LOADING_FORWARDS);
    }
    return new ReviewPagerFragment.a(this, getFragmentManager(), ReviewPagerFragment.AdapterState.LOADING);
  }
  
  public void a()
  {
    if ((d.a(c()) instanceof ReviewPagerFragment.LoadingFragment))
    {
      if (f.getCurrentItem() == -1) {
        f.setCurrentItem(0);
      }
    }
    else {
      return;
    }
    switch (ReviewPagerFragment.5.a[d.d().ordinal()])
    {
    default: 
      return;
    case 1: 
    case 2: 
      f.setCurrentItem(a.size());
      return;
    }
    f.setCurrentItem(a.size() - 1);
  }
  
  public void a(int paramInt)
  {
    if ((d.d() == ReviewPagerFragment.AdapterState.LOADING_BACKWARDS) || (d.d() == ReviewPagerFragment.AdapterState.LOADING)) {
      f.setCurrentItem(paramInt + 1);
    }
    do
    {
      return;
      f.setCurrentItem(paramInt);
    } while (paramInt != 0);
    s.b(0);
  }
  
  public void a(YelpBusinessReview paramYelpBusinessReview)
  {
    int i1 = a.indexOf(paramYelpBusinessReview);
    if (i1 >= 0) {
      a.set(i1, paramYelpBusinessReview);
    }
  }
  
  public void a(b paramb)
  {
    e = paramb;
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
      d = j();
      f.setAdapter(d);
      if (!n) {
        break label119;
      }
    }
    label119:
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
    switch (ReviewPagerFragment.5.a[d.d().ordinal()])
    {
    default: 
      return null;
    case 1: 
      return (YelpBusinessReview)a.get(f.getCurrentItem() - 1);
    case 4: 
      return (YelpBusinessReview)a.get(f.getCurrentItem());
    case 2: 
      return (YelpBusinessReview)a.get(f.getCurrentItem() - 1);
    }
    return (YelpBusinessReview)a.get(f.getCurrentItem());
  }
  
  public int c()
  {
    return f.getCurrentItem();
  }
  
  public void f()
  {
    Handler localHandler = new Handler();
    localHandler.removeCallbacks(t);
    if (a.size() != 0)
    {
      if (g.getVisibility() == 0)
      {
        av.b(g, 5000L);
        return;
      }
      av.c(g, 5000L);
      g.setVisibility(0);
      localHandler.postDelayed(t, 5000L);
      return;
    }
    g.setVisibility(8);
  }
  
  public void g()
  {
    int i1 = f.getCurrentItem();
    d = j();
    f.setAdapter(d);
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
      f();
      return;
      a = paramBundle.getParcelableArrayList("reviews");
      d = j();
      f.setAdapter(d);
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
    paramLayoutInflater = paramLayoutInflater.inflate(2130903519, paramViewGroup, false);
    f = ((ViewPager)paramLayoutInflater.findViewById(2131690427));
    f.setOnPageChangeListener(s);
    g = ((FrameLayout)paramLayoutInflater.findViewById(2131690882));
    i = ((ImageView)g.findViewById(2131690883));
    j = ((ImageView)g.findViewById(2131690884));
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
      if (localReviewVoteRequest.v()) {
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
  
  public static abstract interface b
  {
    public abstract void a(boolean paramBoolean, int paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ReviewPagerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */