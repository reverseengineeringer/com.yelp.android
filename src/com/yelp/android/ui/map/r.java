package com.yelp.android.ui.map;

import com.google.android.gms.maps.model.BitmapDescriptor;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.yelp.android.serializable.by;

public class r<T extends by>
  implements a<T>
{
  final int a;
  
  public r(int paramInt)
  {
    a = paramInt;
  }
  
  public BitmapDescriptor a(T paramT)
  {
    return BitmapDescriptorFactory.fromResource(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */