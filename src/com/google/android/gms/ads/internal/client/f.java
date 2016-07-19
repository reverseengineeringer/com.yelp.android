package com.google.android.gms.ads.internal.client;

import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.internal.bm;
import com.google.android.gms.internal.bn;
import com.google.android.gms.internal.bo;
import com.google.android.gms.internal.bp;

public class f
  extends aa.a
{
  private y a;
  
  public z a()
    throws RemoteException
  {
    return new a(null);
  }
  
  public void a(af paramaf)
    throws RemoteException
  {}
  
  public void a(y paramy)
    throws RemoteException
  {
    a = paramy;
  }
  
  public void a(NativeAdOptionsParcel paramNativeAdOptionsParcel)
    throws RemoteException
  {}
  
  public void a(bm parambm)
    throws RemoteException
  {}
  
  public void a(bn parambn)
    throws RemoteException
  {}
  
  public void a(String paramString, bp parambp, bo parambo)
    throws RemoteException
  {}
  
  private class a
    extends z.a
  {
    private a() {}
    
    public void a(AdRequestParcel paramAdRequestParcel)
      throws RemoteException
    {
      b.b("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
      a.a.post(new Runnable()
      {
        public void run()
        {
          if (f.a(f.this) != null) {}
          try
          {
            f.a(f.this).a(1);
            return;
          }
          catch (RemoteException localRemoteException)
          {
            b.d("Could not notify onAdFailedToLoad event.", localRemoteException);
          }
        }
      });
    }
    
    public boolean a()
      throws RemoteException
    {
      return false;
    }
    
    public String b()
      throws RemoteException
    {
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */