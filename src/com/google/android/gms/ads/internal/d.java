package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.ba;
import com.google.android.gms.internal.bb;
import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.dc;
import com.google.android.gms.internal.ds;
import com.google.android.gms.internal.ep;
import com.google.android.gms.internal.fl;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gr.a;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.hg;
import com.google.android.gms.internal.ib;
import com.google.android.gms.internal.ic;
import com.google.android.gms.internal.id;
import com.google.android.gms.internal.r;
import java.util.Map;

@fv
public abstract class d
  extends c
  implements h, ep
{
  public d(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, ds paramds, VersionInfoParcel paramVersionInfoParcel, e parame)
  {
    super(paramContext, paramAdSizeParcel, paramString, paramds, paramVersionInfoParcel, parame);
  }
  
  public void A()
  {
    y();
    h();
  }
  
  public void B()
  {
    n();
  }
  
  protected ib a(gr.a parama, f paramf)
  {
    Object localObject = f.f.getNextView();
    if ((localObject instanceof ib))
    {
      gz.a("Reusing webview...");
      localObject = (ib)localObject;
      ((ib)localObject).a(f.c, f.i, a);
    }
    for (;;)
    {
      ((ib)localObject).l().a(this, this, this, this, false, this, null, paramf, this);
      a((dc)localObject);
      ((ib)localObject).b(a.w);
      return (ib)localObject;
      if (localObject != null) {
        f.f.removeView((View)localObject);
      }
      localObject = s.f().a(f.c, f.i, false, false, f.d, f.e, a, i);
      if (f.i.h == null) {
        a(((ib)localObject).b());
      }
    }
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    p();
  }
  
  public void a(bb parambb)
  {
    zzx.zzcD("setOnCustomRenderedAdLoadedListener must be called on the main UI thread.");
    f.x = parambb;
  }
  
  protected void a(dc paramdc)
  {
    paramdc.a("/trackActiveViewUnit", new bz()
    {
      public void a(ib paramAnonymousib, Map<String, String> paramAnonymousMap)
      {
        if (f.j != null)
        {
          h.a(f.i, f.j, paramAnonymousib.b(), paramAnonymousib);
          return;
        }
        gz.d("Request to enable ActiveView before adState is available.");
      }
    });
  }
  
  protected void a(final gr.a parama, final ax paramax)
  {
    if (e != -2)
    {
      hd.a.post(new Runnable()
      {
        public void run()
        {
          b(new gr(parama, null, null, null, null, null, null));
        }
      });
      return;
    }
    if (d != null) {
      f.i = d;
    }
    if ((b.h) && (!b.C))
    {
      f.D = 0;
      f.h = s.d().a(f.c, this, parama, f.d, null, j, this, paramax);
      return;
    }
    hd.a.post(new Runnable()
    {
      public void run()
      {
        if ((paramab.s) && (f.x != null))
        {
          Object localObject = null;
          if (paramab.b != null) {
            localObject = s.e().a(paramab.b);
          }
          localObject = new ay(d.this, (String)localObject, paramab.c);
          f.D = 1;
          try
          {
            d = false;
            f.x.a((ba)localObject);
            return;
          }
          catch (RemoteException localRemoteException)
          {
            gz.d("Could not call the onCustomRenderedAdLoadedListener.", localRemoteException);
            d = true;
          }
        }
        final f localf = new f();
        ib localib = a(parama, localf);
        localf.a(new f.b(parama, localib));
        localib.setOnTouchListener(new View.OnTouchListener()
        {
          public boolean onTouch(View paramAnonymous2View, MotionEvent paramAnonymous2MotionEvent)
          {
            localf.a();
            return false;
          }
        });
        localib.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymous2View)
          {
            localf.a();
          }
        });
        f.D = 0;
        f.h = s.d().a(f.c, d.this, parama, f.d, localib, j, d.this, paramax);
      }
    });
  }
  
  protected boolean a(gr paramgr1, gr paramgr2)
  {
    if ((f.e()) && (f.f != null)) {
      f.f.a().a(A);
    }
    return super.a(paramgr1, paramgr2);
  }
  
  public void b(View paramView)
  {
    f.C = paramView;
    b(new gr(f.k, null, null, null, null, null, null));
  }
  
  public void z()
  {
    e();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */