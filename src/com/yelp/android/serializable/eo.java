package com.yelp.android.serializable;

import java.util.AbstractList;
import org.json.JSONArray;

class eo<E>
  extends AbstractList<E>
{
  private final JSONArray a;
  private E[] b;
  private final ba<? extends E> c;
  private final int d;
  
  public eo(JSONArray paramJSONArray, ba<? extends E> paramba)
  {
    if ((paramJSONArray == null) || (paramba == null)) {
      throw new NullPointerException("Cannot pass a null variable in");
    }
    c = paramba;
    a = paramJSONArray;
    d = paramJSONArray.length();
  }
  
  public E get(int paramInt)
  {
    if (b == null) {
      b = c.b(d);
    }
    Object localObject2 = b[paramInt];
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = c.make(a, paramInt);
      b[paramInt] = localObject1;
    }
    return (E)localObject1;
  }
  
  public int size()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.eo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */