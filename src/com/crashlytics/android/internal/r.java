package com.crashlytics.android.internal;

final class r
  implements Runnable
{
  r(n paramn) {}
  
  public final void run()
  {
    try
    {
      a.a.a();
      return;
    }
    catch (Exception localException)
    {
      bd.d("Crashlytics failed to send analytics files.");
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */