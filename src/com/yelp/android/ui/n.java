package com.yelp.android.ui;

import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;

class n
  implements ActivityMonocle.MonocleButton
{
  private final YelpBusiness a;
  private final ActivityMonocle b;
  
  public n(ActivityMonocle paramActivityMonocle, YelpBusiness paramYelpBusiness)
  {
    a = paramYelpBusiness;
    b = paramActivityMonocle;
  }
  
  public void a()
  {
    b.startActivity(ActivityBusinessPage.b(b, a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */