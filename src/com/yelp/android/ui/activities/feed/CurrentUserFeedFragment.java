package com.yelp.android.ui.activities.feed;

import android.os.Bundle;
import android.view.View;

public class CurrentUserFeedFragment
  extends AbstractFeedFragment
{
  protected void f()
  {
    super.f();
    b("com.yelp.android.review.state.update", new CurrentUserFeedFragment.1(this));
    b("com.yelp.android.media.delete", new CurrentUserFeedFragment.2(this));
  }
  
  protected boolean g()
  {
    return false;
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    f();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.CurrentUserFeedFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */