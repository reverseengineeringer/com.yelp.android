package com.crashlytics.android.internal;

final class q
  implements Runnable
{
  q(n paramn, ak paramak, String paramString) {}
  
  public final void run()
  {
    try
    {
      c.a.a(a, b);
      return;
    }
    catch (Exception localException)
    {
      bd.d("Crashlytics failed to set analytics settings data.");
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */