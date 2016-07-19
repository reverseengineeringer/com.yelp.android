package com.google.android.gms.internal;

import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.ae;
import com.google.android.gms.ads.internal.client.ae.a;
import com.google.android.gms.ads.internal.client.x;
import com.google.android.gms.ads.internal.client.x.a;
import com.google.android.gms.ads.internal.client.y;
import com.google.android.gms.ads.internal.client.y.a;
import com.google.android.gms.ads.internal.l;
import com.google.android.gms.ads.internal.s;
import com.yelp.android.bb.a;
import com.yelp.android.bb.c;
import com.yelp.android.bb.c.a;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@fv
class cq
{
  private final List<a> a = new LinkedList();
  
  void a(l paraml)
  {
    paraml.a(new y.a()
    {
      public void a()
        throws RemoteException
      {
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
            throws RemoteException
          {
            if (a != null) {
              a.a();
            }
            s.p().a();
          }
        });
      }
      
      public void a(final int paramAnonymousInt)
        throws RemoteException
      {
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
            throws RemoteException
          {
            if (a != null) {
              a.a(paramAnonymousInt);
            }
          }
        });
        gz.e("Pooled interstitial failed to load.");
      }
      
      public void b()
        throws RemoteException
      {
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
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
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
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
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
            throws RemoteException
          {
            if (a != null) {
              a.d();
            }
          }
        });
      }
    });
    paraml.a(new ae.a()
    {
      public void a(final String paramAnonymousString1, final String paramAnonymousString2)
        throws RemoteException
      {
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
            throws RemoteException
          {
            if (b != null) {
              b.a(paramAnonymousString1, paramAnonymousString2);
            }
          }
        });
      }
    });
    paraml.a(new ez.a()
    {
      public void a(final ey paramAnonymousey)
        throws RemoteException
      {
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
            throws RemoteException
          {
            if (c != null) {
              c.a(paramAnonymousey);
            }
          }
        });
      }
    });
    paraml.a(new bb.a()
    {
      public void a(final ba paramAnonymousba)
        throws RemoteException
      {
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
            throws RemoteException
          {
            if (d != null) {
              d.a(paramAnonymousba);
            }
          }
        });
      }
    });
    paraml.a(new x.a()
    {
      public void a()
        throws RemoteException
      {
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
            throws RemoteException
          {
            if (e != null) {
              e.a();
            }
          }
        });
      }
    });
    paraml.a(new c.a()
    {
      public void a()
        throws RemoteException
      {
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
            throws RemoteException
          {
            if (f != null) {
              f.a();
            }
          }
        });
      }
      
      public void a(final int paramAnonymousInt)
        throws RemoteException
      {
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
            throws RemoteException
          {
            if (f != null) {
              f.a(paramAnonymousInt);
            }
          }
        });
      }
      
      public void a(final a paramAnonymousa)
        throws RemoteException
      {
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
            throws RemoteException
          {
            if (f != null) {
              f.a(paramAnonymousa);
            }
          }
        });
      }
      
      public void b()
        throws RemoteException
      {
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
            throws RemoteException
          {
            if (f != null) {
              f.b();
            }
          }
        });
      }
      
      public void c()
        throws RemoteException
      {
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
            throws RemoteException
          {
            if (f != null) {
              f.c();
            }
          }
        });
      }
      
      public void d()
        throws RemoteException
      {
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
            throws RemoteException
          {
            if (f != null) {
              f.d();
            }
          }
        });
      }
      
      public void e()
        throws RemoteException
      {
        cq.a(cq.this).add(new cq.a()
        {
          public void a(cr paramAnonymous2cr)
            throws RemoteException
          {
            if (f != null) {
              f.e();
            }
          }
        });
      }
    });
  }
  
  void a(final cr paramcr)
  {
    Handler localHandler = hd.a;
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      localHandler.post(new Runnable()
      {
        public void run()
        {
          try
          {
            a.a(paramcr);
            return;
          }
          catch (RemoteException localRemoteException)
          {
            gz.d("Could not propagate interstitial ad event.", localRemoteException);
          }
        }
      });
    }
  }
  
  static abstract interface a
  {
    public abstract void a(cr paramcr)
      throws RemoteException;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */