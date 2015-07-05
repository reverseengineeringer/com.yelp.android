package com.google.android.gms.internal;

import android.content.Context;

final class gi$1
  implements Runnable
{
  gi$1(Context paramContext) {}
  
  public void run()
  {
    synchronized ()
    {
      gi.P(gi.u(nf));
      gi.dy().notifyAll();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gi.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */