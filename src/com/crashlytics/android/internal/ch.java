package com.crashlytics.android.internal;

import android.content.Context;

public abstract class ch
{
  private Context a;
  private boolean b;
  
  protected final void b(Context paramContext)
  {
    for (;;)
    {
      try
      {
        boolean bool = b;
        if (bool) {
          return;
        }
        if (paramContext == null) {
          throw new IllegalArgumentException("context cannot be null.");
        }
      }
      finally {}
      a = new cp(paramContext.getApplicationContext(), y());
      b = true;
      e();
    }
  }
  
  protected abstract void e();
  
  public final Context w()
  {
    return a;
  }
  
  public final boolean x()
  {
    try
    {
      boolean bool = b;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final String y()
  {
    return getClass().getSimpleName().toLowerCase();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */