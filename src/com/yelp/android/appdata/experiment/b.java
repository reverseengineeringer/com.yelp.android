package com.yelp.android.appdata.experiment;

public class b<E extends Enum<E>>
  extends a<E>
{
  private final E c;
  
  public b(String paramString, Class<E> paramClass, E paramE)
  {
    super(paramString, paramClass);
    c = paramE;
  }
  
  public E a()
  {
    return a(g.a().a(a));
  }
  
  protected E a(String paramString)
  {
    if (paramString == null) {
      return c;
    }
    try
    {
      paramString = Enum.valueOf(b, paramString);
      return paramString;
    }
    catch (IllegalArgumentException paramString) {}
    return c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.experiment.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */