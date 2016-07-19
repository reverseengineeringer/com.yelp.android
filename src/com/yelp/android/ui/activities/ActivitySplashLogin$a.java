package com.yelp.android.ui.activities;

import android.support.v4.app.l;
import android.support.v4.app.n;
import java.util.List;

class ActivitySplashLogin$a
  extends n
{
  private List<OnboardingGuidePagerFragment> b;
  private int c;
  
  public ActivitySplashLogin$a(l paraml, List<OnboardingGuidePagerFragment> paramList)
  {
    super(paramList);
    List localList;
    b = localList;
    c = 0;
  }
  
  public int b()
  {
    return b.size();
  }
  
  public int d()
  {
    return c;
  }
  
  public OnboardingGuidePagerFragment d(int paramInt)
  {
    return (OnboardingGuidePagerFragment)b.get(paramInt);
  }
  
  public void e(int paramInt)
  {
    c = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivitySplashLogin.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */