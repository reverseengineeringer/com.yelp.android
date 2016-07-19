package com.yelp.android.aa;

final class j$b
  implements i
{
  private final String a;
  
  j$b(String paramString)
  {
    a = paramString;
  }
  
  public String a()
  {
    return a;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof b))
    {
      paramObject = (b)paramObject;
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  public String toString()
  {
    return "StringHeaderFactory{value='" + a + '\'' + '}';
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aa.j.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */