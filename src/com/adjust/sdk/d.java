package com.adjust.sdk;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

final class d
  extends Handler
{
  private final WeakReference<a> a;
  
  protected d(Looper paramLooper, a parama)
  {
    super(paramLooper);
    a = new WeakReference(parama);
  }
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    a locala = (a)a.get();
    if (locala == null) {
      return;
    }
    switch (arg1)
    {
    default: 
      return;
    case 72630: 
      a.a(locala, true);
      return;
    case 72633: 
      a.a(locala, false);
      return;
    case 72640: 
      a.a(locala);
      return;
    case 72650: 
      a.b(locala);
      return;
    case 72660: 
      a.a(locala, (k)obj);
      return;
    case 72670: 
      a.b(locala, (k)obj);
      return;
    }
    a.a(locala, (Uri)obj);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */