package com.yelp.android.f;

import android.os.Build.VERSION;
import android.os.Bundle;
import java.util.List;

public class w
{
  private static final x a = new ac();
  private final Object b;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new aa();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new y();
      return;
    }
  }
  
  public w()
  {
    b = a.a(this);
  }
  
  public w(Object paramObject)
  {
    b = paramObject;
  }
  
  public g a(int paramInt)
  {
    return null;
  }
  
  public Object a()
  {
    return b;
  }
  
  public List<g> a(String paramString, int paramInt)
  {
    return null;
  }
  
  public boolean a(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    return false;
  }
  
  public g b(int paramInt)
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.f.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */