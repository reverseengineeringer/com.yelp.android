package com.crashlytics.android.internal;

final class p
  implements Runnable
{
  p(n paramn, u paramu, boolean paramBoolean) {}
  
  public final void run()
  {
    try
    {
      c.a.a(a);
      if (b) {
        c.a.d();
      }
      return;
    }
    catch (Exception localException)
    {
      bd.d("Crashlytics failed to record session event.");
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */