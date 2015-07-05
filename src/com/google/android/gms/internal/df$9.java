package com.google.android.gms.internal;

import android.os.RemoteException;

class df$9
  implements Runnable
{
  df$9(df paramdf) {}
  
  public void run()
  {
    try
    {
      df.a(qZ).onAdClosed();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not call onAdClosed.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.df.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */