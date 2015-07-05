package com.google.android.gms.internal;

import java.lang.ref.WeakReference;

class ab$1
  implements Runnable
{
  private final WeakReference<u> mA = new WeakReference(mB);
  
  ab$1(ab paramab, u paramu) {}
  
  public void run()
  {
    ab.a(mC, false);
    u localu = (u)mA.get();
    if (localu != null) {
      localu.b(ab.a(mC));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ab.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */