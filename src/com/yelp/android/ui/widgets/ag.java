package com.yelp.android.ui.widgets;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import com.yelp.android.serializable.YelpBusinessReview;
import java.util.ArrayList;

class ag
  extends FragmentStatePagerAdapter
{
  private final ReviewPagerFragment.AdapterState b;
  
  public ag(ReviewPagerFragment paramReviewPagerFragment, FragmentManager paramFragmentManager, ReviewPagerFragment.AdapterState paramAdapterState)
  {
    super(paramFragmentManager);
    b = paramAdapterState;
  }
  
  public ReviewPagerFragment.AdapterState a()
  {
    return b;
  }
  
  public int getCount()
  {
    switch (af.a[b.ordinal()])
    {
    default: 
      return ReviewPagerFragment.a(a).size();
    case 4: 
      return ReviewPagerFragment.a(a).size();
    case 1: 
      return ReviewPagerFragment.a(a).size() + 2;
    case 2: 
      return ReviewPagerFragment.a(a).size() + 1;
    }
    return ReviewPagerFragment.a(a).size() + 1;
  }
  
  public Fragment getItem(int paramInt)
  {
    switch (af.a[b.ordinal()])
    {
    default: 
      return null;
    case 4: 
      return ReviewPagerFragment.b(a, (YelpBusinessReview)ReviewPagerFragment.a(a).get(paramInt));
    case 1: 
      if ((paramInt > 0) && (paramInt < ReviewPagerFragment.a(a).size() + 1)) {
        return ReviewPagerFragment.b(a, (YelpBusinessReview)ReviewPagerFragment.a(a).get(paramInt - 1));
      }
      return new ReviewPagerFragment.LoadingFragment();
    case 2: 
      if (paramInt > 0) {
        return ReviewPagerFragment.b(a, (YelpBusinessReview)ReviewPagerFragment.a(a).get(paramInt - 1));
      }
      return new ReviewPagerFragment.LoadingFragment();
    }
    if (paramInt < ReviewPagerFragment.a(a).size()) {
      return ReviewPagerFragment.b(a, (YelpBusinessReview)ReviewPagerFragment.a(a).get(paramInt));
    }
    return new ReviewPagerFragment.LoadingFragment();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */