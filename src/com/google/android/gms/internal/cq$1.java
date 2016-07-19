package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.y;
import com.google.android.gms.ads.internal.client.y.a;
import com.google.android.gms.ads.internal.s;
import java.util.List;

class cq$1
  extends y.a
{
  cq$1(cq paramcq) {}
  
  public void a()
    throws RemoteException
  {
    cq.a(a).add(new cq.a()
    {
      public void a(cr paramAnonymouscr)
        throws RemoteException
      {
        if (a != null) {
          a.a();
        }
        s.p().a();
      }
    });
  }
  
  public void a(final int paramInt)
    throws RemoteException
  {
    cq.a(a).add(new cq.a()
    {
      public void a(cr paramAnonymouscr)
        throws RemoteException
      {
        if (a != null) {
          a.a(paramInt);
        }
      }
    });
    gz.e("Pooled interstitial failed to load.");
  }
  
  public void b()
    throws RemoteException
  {
    cq.a(a).add(new cq.a()
    {
      public void a(cr paramAnonymouscr)
        throws RemoteException
      {
        if (a != null) {
          a.b();
        }
      }
    });
  }
  
  public void c()
    throws RemoteException
  {
    cq.a(a).add(new cq.a()
    {
      public void a(cr paramAnonymouscr)
        throws RemoteException
      {
        if (a != null) {
          a.c();
        }
      }
    });
    gz.e("Pooled interstitial loaded.");
  }
  
  public void d()
    throws RemoteException
  {
    cq.a(a).add(new cq.a()
    {
      public void a(cr paramAnonymouscr)
        throws RemoteException
      {
        if (a != null) {
          a.d();
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cq.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */