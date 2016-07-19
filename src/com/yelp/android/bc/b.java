package com.yelp.android.bc;

import android.os.Bundle;

public abstract interface b
{
  public abstract void a();
  
  public abstract void b();
  
  public abstract void c();
  
  public static class a
  {
    private int a;
    
    public Bundle a()
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("capabilities", a);
      return localBundle;
    }
    
    public a a(int paramInt)
    {
      a = paramInt;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bc.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */