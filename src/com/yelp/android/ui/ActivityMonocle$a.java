package com.yelp.android.ui;

import com.yelp.android.serializable.Category;

class ActivityMonocle$a
  implements Runnable
{
  private final h b;
  private final Category c;
  
  public ActivityMonocle$a(ActivityMonocle paramActivityMonocle, h paramh, Category paramCategory)
  {
    b = paramh;
    c = paramCategory;
  }
  
  public void run()
  {
    b.a(c);
    b.b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.ActivityMonocle.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */