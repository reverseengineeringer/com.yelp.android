package com.yelp.android.be;

import com.yelp.android.analytics.iris.TimingIri;
import com.yelp.android.av.a;

public class c
{
  private final a a;
  
  public c(a parama)
  {
    a = parama;
  }
  
  public b a()
  {
    return new b(a, TimingIri.ApplicationStartup);
  }
  
  public b b()
  {
    return new b(a, TimingIri.BusinessDetailLoad);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.be.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */