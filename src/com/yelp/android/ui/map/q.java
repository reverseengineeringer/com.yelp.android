package com.yelp.android.ui.map;

import android.content.Context;
import com.yelp.android.serializable.by;
import java.util.Map;

public class q<T extends by>
  extends j<T>
{
  private Map<T, Integer> a;
  
  public q(Context paramContext, Map<T, Integer> paramMap)
  {
    super(paramContext);
    a = paramMap;
  }
  
  protected int b(T paramT)
  {
    return ((Integer)a.get(paramT)).intValue();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */