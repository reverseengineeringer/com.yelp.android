package com.google.android.gms.ads.internal;

import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.ay;
import com.google.android.gms.internal.ba;
import com.google.android.gms.internal.bb;
import com.google.android.gms.internal.fl;
import com.google.android.gms.internal.gr.a;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.ib;

class d$3
  implements Runnable
{
  d$3(d paramd, gr.a parama, ax paramax) {}
  
  public void run()
  {
    if ((a.b.s) && (c.f.x != null))
    {
      Object localObject = null;
      if (a.b.b != null) {
        localObject = s.e().a(a.b.b);
      }
      localObject = new ay(c, (String)localObject, a.b.c);
      c.f.D = 1;
      try
      {
        c.d = false;
        c.f.x.a((ba)localObject);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        gz.d("Could not call the onCustomRenderedAdLoadedListener.", localRemoteException);
        c.d = true;
      }
    }
    final f localf = new f();
    ib localib = c.a(a, localf);
    localf.a(new f.b(a, localib));
    localib.setOnTouchListener(new View.OnTouchListener()
    {
      public boolean onTouch(View paramAnonymousView, MotionEvent paramAnonymousMotionEvent)
      {
        localf.a();
        return false;
      }
    });
    localib.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        localf.a();
      }
    });
    c.f.D = 0;
    c.f.h = s.d().a(c.f.c, c, a, c.f.d, localib, c.j, c, b);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.d.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */