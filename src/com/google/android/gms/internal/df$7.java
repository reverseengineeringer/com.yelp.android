package com.google.android.gms.internal;

import android.os.RemoteException;

class df$7
  implements Runnable
{
  df$7(df paramdf) {}
  
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
 * Qualified Name:     com.google.android.gms.internal.df.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */