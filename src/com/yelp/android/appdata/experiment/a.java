package com.yelp.android.appdata.experiment;

public abstract class a<E extends Enum<E>>
{
  protected final String a;
  protected final Class<E> b;
  
  public a(String paramString, Class<E> paramClass)
  {
    a = paramString;
    b = paramClass;
  }
  
  public boolean a(E paramE)
  {
    return b() == paramE;
  }
  
  public abstract E b();
  
  public String c()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.experiment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */