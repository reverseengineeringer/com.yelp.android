package com.yelp.android.af;

import android.view.View;

public class j<R>
  implements e<R>
{
  private final k a;
  
  j(k paramk)
  {
    a = paramk;
  }
  
  public boolean a(R paramR, f paramf)
  {
    paramR = paramf.a();
    if (paramR != null)
    {
      paramR.clearAnimation();
      paramR.startAnimation(a.a());
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.af.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */