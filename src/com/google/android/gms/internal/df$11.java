package com.google.android.gms.internal;

import android.os.RemoteException;

class df$11
  implements Runnable
{
  df$11(df paramdf) {}
  
  public void run()
  {
    try
    {
      df.a(qZ).onAdLeftApplication();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not call onAdLeftApplication.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.df.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */