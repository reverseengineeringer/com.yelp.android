package com.google.android.gms.internal;

import android.os.RemoteException;

class df$6
  implements Runnable
{
  df$6(df paramdf) {}
  
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
 * Qualified Name:     com.google.android.gms.internal.df.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */