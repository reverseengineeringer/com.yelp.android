package com.yelp.android.ao;

public class g
{
  private Class<?> a;
  private Class<?> b;
  
  public g() {}
  
  public g(Class<?> paramClass1, Class<?> paramClass2)
  {
    a(paramClass1, paramClass2);
  }
  
  public void a(Class<?> paramClass1, Class<?> paramClass2)
  {
    a = paramClass1;
    b = paramClass2;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (g)paramObject;
      if (!a.equals(a)) {
        return false;
      }
    } while (b.equals(b));
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode() * 31 + b.hashCode();
  }
  
  public String toString()
  {
    return "MultiClassKey{first=" + a + ", second=" + b + '}';
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ao.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */