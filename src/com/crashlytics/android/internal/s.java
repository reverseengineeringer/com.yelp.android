package com.crashlytics.android.internal;

final class s
  implements Runnable
{
  s(n paramn) {}
  
  public final void run()
  {
    try
    {
      t localt = a.a;
      a.a = new h();
      localt.b();
      return;
    }
    catch (Exception localException)
    {
      bd.d("Crashlytics failed to disable analytics.");
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */