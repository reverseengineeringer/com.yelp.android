package com.yelp.android.services.push;

import android.net.Uri;
import java.util.List;

public class h
  extends p
{
  private final String a;
  private final String b;
  
  public h(p paramp)
  {
    super(paramp);
    paramp = f().getPathSegments();
    b = ((String)paramp.get(1));
    a = ((String)paramp.get(2));
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */