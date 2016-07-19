package com.yelp.android.bu;

import java.util.List;
import java.util.Random;

public final class a<T>
{
  private final List<T> a;
  private final Random b;
  private T c;
  
  public a(List<T> paramList, Random paramRandom)
  {
    a = paramList;
    b = paramRandom;
  }
  
  public T a()
  {
    if (c == null) {
      c = a.get(b.nextInt(a.size()));
    }
    return (T)c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bu.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */