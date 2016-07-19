package com.yelp.android.g;

public class g<F, S>
{
  public final F a;
  public final S b;
  
  public g(F paramF, S paramS)
  {
    a = paramF;
    b = paramS;
  }
  
  public static <A, B> g<A, B> a(A paramA, B paramB)
  {
    return new g(paramA, paramB);
  }
  
  private static boolean b(Object paramObject1, Object paramObject2)
  {
    return (paramObject1 == paramObject2) || ((paramObject1 != null) && (paramObject1.equals(paramObject2)));
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof g)) {}
    do
    {
      return false;
      paramObject = (g)paramObject;
    } while ((!b(a, a)) || (!b(b, b)));
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
 * Qualified Name:     com.yelp.android.g.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */