package com.crashlytics.android.internal;

final class x
  implements Runnable
{
  private final j a;
  private final t b;
  
  public x(j paramj, t paramt)
  {
    a = paramj;
    b = paramt;
  }
  
  public final void run()
  {
    try
    {
      bd.c("Performing time based analytics file roll over.");
      if (!a.a()) {
        b.c();
      }
      return;
    }
    catch (Exception localException)
    {
      bd.d("Crashlytics failed to roll over session analytics file");
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */