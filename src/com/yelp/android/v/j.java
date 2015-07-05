package com.yelp.android.v;

import com.yelp.android.ai.d;

public class j<A, B>
{
  private final d<l<A>, B> a;
  
  public j()
  {
    this(250);
  }
  
  public j(int paramInt)
  {
    a = new k(this, paramInt);
  }
  
  public B a(A paramA, int paramInt1, int paramInt2)
  {
    paramA = l.a(paramA, paramInt1, paramInt2);
    Object localObject = a.b(paramA);
    paramA.a();
    return (B)localObject;
  }
  
  public void a(A paramA, int paramInt1, int paramInt2, B paramB)
  {
    paramA = l.a(paramA, paramInt1, paramInt2);
    a.b(paramA, paramB);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.v.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */