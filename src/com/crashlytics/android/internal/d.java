package com.crashlytics.android.internal;

final class d
  extends bc
{
  d(c paramc) {}
  
  public final void a()
  {
    try
    {
      c.a(a);
      return;
    }
    catch (Exception localException)
    {
      cl.a().b().a("Crashlytics", "Problem encountered during Crashlytics initialization.", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */