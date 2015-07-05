package com.adjust.sdk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

final class o
  extends Handler
{
  private final WeakReference<n> a;
  
  protected o(Looper paramLooper, n paramn)
  {
    super(paramLooper);
    a = new WeakReference(paramn);
  }
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    n localn = (n)a.get();
    if (localn == null) {
      return;
    }
    switch (arg1)
    {
    default: 
      return;
    case 72400: 
      n.a(localn, (ActivityPackage)obj);
      return;
    }
    n.a(localn);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */