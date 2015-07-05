package com.yelp.android.ui;

import com.yelp.android.serializable.Category;

class b
  implements Runnable
{
  private final m b;
  private final Category c;
  
  public b(ActivityMonocle paramActivityMonocle, m paramm, Category paramCategory)
  {
    b = paramm;
    c = paramCategory;
  }
  
  public void run()
  {
    b.a(c);
    b.b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */