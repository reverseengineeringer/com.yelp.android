package com.google.android.gms.maps;

import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.yelp.android.bj.ab.a;
import com.yelp.android.bj.ac.a;
import com.yelp.android.bj.b;
import com.yelp.android.bj.r.a;
import com.yelp.android.bj.t.a;
import com.yelp.android.bj.u.a;
import com.yelp.android.bj.x.a;
import com.yelp.android.bk.f;

public final class c
{
  private final b a;
  private i b;
  
  protected c(b paramb)
  {
    a = ((b)zzx.zzz(paramb));
  }
  
  public final CameraPosition a()
  {
    try
    {
      CameraPosition localCameraPosition = a.a();
      return localCameraPosition;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final com.google.android.gms.maps.model.c a(MarkerOptions paramMarkerOptions)
  {
    try
    {
      paramMarkerOptions = a.a(paramMarkerOptions);
      if (paramMarkerOptions != null)
      {
        paramMarkerOptions = new com.google.android.gms.maps.model.c(paramMarkerOptions);
        return paramMarkerOptions;
      }
      return null;
    }
    catch (RemoteException paramMarkerOptions)
    {
      throw new RuntimeRemoteException(paramMarkerOptions);
    }
  }
  
  public final void a(int paramInt)
  {
    try
    {
      a.a(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void a(a parama)
  {
    try
    {
      a.b(parama.a());
      return;
    }
    catch (RemoteException parama)
    {
      throw new RuntimeRemoteException(parama);
    }
  }
  
  /* Error */
  public final void a(a parama, a parama1)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 52	com/google/android/gms/maps/c:a	Lcom/yelp/android/bj/b;
    //   4: astore_3
    //   5: aload_1
    //   6: invokevirtual 81	com/google/android/gms/maps/a:a	()Lcom/google/android/gms/dynamic/c;
    //   9: astore 4
    //   11: aload_2
    //   12: ifnonnull +15 -> 27
    //   15: aconst_null
    //   16: astore_1
    //   17: aload_3
    //   18: aload 4
    //   20: aload_1
    //   21: invokeinterface 88 3 0
    //   26: return
    //   27: new 34	com/google/android/gms/maps/c$g
    //   30: dup
    //   31: aload_2
    //   32: invokespecial 91	com/google/android/gms/maps/c$g:<init>	(Lcom/google/android/gms/maps/c$a;)V
    //   35: astore_1
    //   36: goto -19 -> 17
    //   39: astore_1
    //   40: new 60	com/google/android/gms/maps/model/RuntimeRemoteException
    //   43: dup
    //   44: aload_1
    //   45: invokespecial 63	com/google/android/gms/maps/model/RuntimeRemoteException:<init>	(Landroid/os/RemoteException;)V
    //   48: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	49	0	this	c
    //   0	49	1	parama	a
    //   0	49	2	parama1	a
    //   4	14	3	localb	b
    //   9	10	4	localc	com.google.android.gms.dynamic.c
    // Exception table:
    //   from	to	target	type
    //   0	11	39	android/os/RemoteException
    //   17	26	39	android/os/RemoteException
    //   27	36	39	android/os/RemoteException
  }
  
  public final void a(final b paramb)
  {
    if (paramb == null) {}
    try
    {
      a.a(null);
      return;
    }
    catch (RemoteException paramb)
    {
      throw new RuntimeRemoteException(paramb);
    }
    a.a(new t.a()
    {
      public com.google.android.gms.dynamic.c a(f paramAnonymousf)
      {
        return d.a(paramb.a(new com.google.android.gms.maps.model.c(paramAnonymousf)));
      }
      
      public com.google.android.gms.dynamic.c b(f paramAnonymousf)
      {
        return d.a(paramb.b(new com.google.android.gms.maps.model.c(paramAnonymousf)));
      }
    });
  }
  
  public final void a(final c paramc)
  {
    if (paramc == null) {}
    try
    {
      a.a(null);
      return;
    }
    catch (RemoteException paramc)
    {
      throw new RuntimeRemoteException(paramc);
    }
    a.a(new u.a()
    {
      public void a(CameraPosition paramAnonymousCameraPosition)
      {
        paramc.a(paramAnonymousCameraPosition);
      }
    });
  }
  
  public final void a(final d paramd)
  {
    if (paramd == null) {}
    try
    {
      a.a(null);
      return;
    }
    catch (RemoteException paramd)
    {
      throw new RuntimeRemoteException(paramd);
    }
    a.a(new x.a()
    {
      public void a(f paramAnonymousf)
      {
        paramd.c(new com.google.android.gms.maps.model.c(paramAnonymousf));
      }
    });
  }
  
  public final void a(final e parame)
  {
    if (parame == null) {}
    try
    {
      a.a(null);
      return;
    }
    catch (RemoteException parame)
    {
      throw new RuntimeRemoteException(parame);
    }
    a.a(new ab.a()
    {
      public void a(LatLng paramAnonymousLatLng)
      {
        parame.a(paramAnonymousLatLng);
      }
    });
  }
  
  public void a(final f paramf)
  {
    if (paramf == null) {}
    try
    {
      a.a(null);
      return;
    }
    catch (RemoteException paramf)
    {
      throw new RuntimeRemoteException(paramf);
    }
    a.a(new ac.a()
    {
      public void a()
        throws RemoteException
      {
        paramf.a();
      }
    });
  }
  
  public final boolean a(boolean paramBoolean)
  {
    try
    {
      paramBoolean = a.b(paramBoolean);
      return paramBoolean;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void b()
  {
    try
    {
      a.e();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final void b(boolean paramBoolean)
  {
    try
    {
      a.c(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final i c()
  {
    try
    {
      if (b == null) {
        b = new i(a.k());
      }
      i locali = b;
      return locali;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public final g d()
  {
    try
    {
      g localg = new g(a.l());
      return localg;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void b();
  }
  
  public static abstract interface b
  {
    public abstract View a(com.google.android.gms.maps.model.c paramc);
    
    public abstract View b(com.google.android.gms.maps.model.c paramc);
  }
  
  public static abstract interface c
  {
    public abstract void a(CameraPosition paramCameraPosition);
  }
  
  public static abstract interface d
  {
    public abstract void c(com.google.android.gms.maps.model.c paramc);
  }
  
  public static abstract interface e
  {
    public abstract void a(LatLng paramLatLng);
  }
  
  public static abstract interface f
  {
    public abstract void a();
  }
  
  private static final class g
    extends r.a
  {
    private final c.a a;
    
    g(c.a parama)
    {
      a = parama;
    }
    
    public void a()
    {
      a.a();
    }
    
    public void b()
    {
      a.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */