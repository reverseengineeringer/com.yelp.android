package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Message;

class ak$b
  extends Handler
{
  private final b.a b;
  
  protected void a(String paramString)
  {
    b.a(a, paramString);
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      m.a("Don't know how to handle this message.");
      return;
    }
    a((String)obj);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ak.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */