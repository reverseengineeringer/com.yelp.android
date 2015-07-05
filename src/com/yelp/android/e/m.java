package com.yelp.android.e;

public class m<F, S>
{
  public final F a;
  public final S b;
  
  public m(F paramF, S paramS)
  {
    a = paramF;
    b = paramS;
  }
  
  private static boolean a(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof m)) {}
    do
    {
      return false;
      paramObject = (m)paramObject;
    } while ((!a(a, a)) || (!a(b, b)));
    return true;
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label33;
      }
    }
    for (;;)
    {
      return i ^ j;
      i = a.hashCode();
      break;
      label33:
      j = b.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.e.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */