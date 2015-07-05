package com.google.android.gms.internal;

import android.os.RemoteException;

class df$1
  implements Runnable
{
  df$1(df paramdf) {}
  
  public void run()
  {
    try
    {
      df.a(qZ).onAdClicked();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not call onAdClicked.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.df.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */