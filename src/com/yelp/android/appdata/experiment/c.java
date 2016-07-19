package com.yelp.android.appdata.experiment;

import com.yelp.android.util.YelpLog;

public class c<E extends Enum<E>>
  extends a<E>
{
  private final E c;
  
  public c(String paramString, Class<E> paramClass, E paramE)
  {
    super(paramString, paramClass);
    c = paramE;
  }
  
  protected E a(String paramString)
  {
    if (paramString == null) {
      return c;
    }
    try
    {
      Enum localEnum = Enum.valueOf(b, paramString);
      return localEnum;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      YelpLog.remoteError("BaseWebExperiment", new IllegalArgumentException("Failed to find cohort: " + paramString + " for experiment: " + a, localIllegalArgumentException));
    }
    return c;
  }
  
  public E b()
  {
    return a(j.a().a(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.experiment.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */