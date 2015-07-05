package com.adjust.sdk;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

final class m
  extends Handler
{
  private final WeakReference<l> a;
  
  protected m(Looper paramLooper, l paraml)
  {
    super(paramLooper);
    a = new WeakReference(paraml);
  }
  
  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    l locall = (l)a.get();
    if (locall == null) {
      return;
    }
    switch (arg1)
    {
    default: 
      return;
    case 1: 
      l.a(locall);
      return;
    case 2: 
      l.a(locall, (ActivityPackage)obj);
      return;
    case 4: 
      l.b(locall);
      return;
    }
    l.c(locall);
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */