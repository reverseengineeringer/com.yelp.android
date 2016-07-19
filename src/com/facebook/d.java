package com.facebook;

import android.content.Intent;
import com.facebook.internal.CallbackManagerImpl;

public abstract interface d
{
  public abstract boolean a(int paramInt1, int paramInt2, Intent paramIntent);
  
  public static class a
  {
    public static d a()
    {
      return new CallbackManagerImpl();
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */