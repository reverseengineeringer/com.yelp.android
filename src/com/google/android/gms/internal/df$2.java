package com.google.android.gms.internal;

import android.os.RemoteException;

class df$2
  implements Runnable
{
  df$2(df paramdf) {}
  
  public void run()
  {
    try
    {
      df.a(qZ).onAdOpened();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gr.d("Could not call onAdOpened.", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.df.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */