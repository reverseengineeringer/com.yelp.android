package com.yelp.android.ui.map;

import android.content.Context;
import com.yelp.android.serializable.by;

public class k<T extends by>
  extends j<T>
{
  private int a;
  
  public k(Context paramContext, int paramInt)
  {
    super(paramContext);
    a = paramInt;
  }
  
  protected int b(T paramT)
  {
    int i = a + 1;
    a = i;
    return i;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */