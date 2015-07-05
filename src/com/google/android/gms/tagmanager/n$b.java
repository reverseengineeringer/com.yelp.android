package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class n$b
  extends Handler
{
  private final ContainerHolder.ContainerAvailableListener aqz;
  
  public n$b(n paramn, ContainerHolder.ContainerAvailableListener paramContainerAvailableListener, Looper paramLooper)
  {
    super(paramLooper);
    aqz = paramContainerAvailableListener;
  }
  
  public void cu(String paramString)
  {
    sendMessage(obtainMessage(1, paramString));
  }
  
  protected void cv(String paramString)
  {
    aqz.onContainerAvailable(aqA, paramString);
  }
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      bh.T("Don't know how to handle this message.");
      return;
    }
    cv((String)obj);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.n.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */