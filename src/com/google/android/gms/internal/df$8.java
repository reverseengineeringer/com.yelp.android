package com.google.android.gms.internal;

import android.os.RemoteException;

class df$8
  implements Runnable
{
  df$8(df paramdf) {}
  
  public void run()
  {
    try
    {
      df.a(qZ).onAdLoaded();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not call onAdLoaded.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.df.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */