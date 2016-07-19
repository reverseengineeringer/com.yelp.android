package com.yelp.android.ui.activities.friendcheckins;

import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.b;

class NearbyCheckIns$6
  extends NearbyCheckIns.a
{
  NearbyCheckIns$6(NearbyCheckIns paramNearbyCheckIns) {}
  
  protected void a(YelpCheckIn paramYelpCheckIn)
  {
    int[] arrayOfInt = a.a;
    int j = arrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      int k = arrayOfInt[i];
      ((a)a.d.a(k).a).b(paramYelpCheckIn);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.NearbyCheckIns.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */