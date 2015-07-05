package com.yelp.android.ui.activities.friendcheckins;

import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bv;

class n
  extends p
{
  n(NearbyCheckIns paramNearbyCheckIns) {}
  
  protected void a(YelpCheckIn paramYelpCheckIn)
  {
    int[] arrayOfInt = a.a;
    int j = arrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      int k = arrayOfInt[i];
      ((a)a.d.a(k).a).a(paramYelpCheckIn);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */