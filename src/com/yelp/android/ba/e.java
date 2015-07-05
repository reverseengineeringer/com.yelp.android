package com.yelp.android.ba;

import android.view.View;
import com.yelp.android.az.a;
import com.yelp.android.serializable.YelpBusiness;

public class e
  extends a
{
  public e(View paramView, int paramInt)
  {
    super(paramView, paramInt);
  }
  
  protected String a(YelpBusiness paramYelpBusiness)
  {
    if (paramYelpBusiness == null) {
      return null;
    }
    return paramYelpBusiness.getPhotoUrl();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ba.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */