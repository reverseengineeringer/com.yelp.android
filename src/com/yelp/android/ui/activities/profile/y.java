package com.yelp.android.ui.activities.profile;

import com.yelp.android.ui.util.au;

final class y<T>
  implements Runnable
{
  private final au<T> a;
  private final T b;
  
  public y(au<T> paramau, T paramT)
  {
    a = paramau;
    b = paramT;
  }
  
  public void run()
  {
    a.b(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */