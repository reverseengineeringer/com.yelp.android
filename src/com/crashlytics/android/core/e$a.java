package com.crashlytics.android.core;

public class e$a
{
  private float a = -1.0F;
  private g b;
  private s c;
  private boolean d = false;
  
  public a a(boolean paramBoolean)
  {
    d = paramBoolean;
    return this;
  }
  
  public e a()
  {
    if (a < 0.0F) {
      a = 1.0F;
    }
    return new e(a, b, c, d);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.e.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */