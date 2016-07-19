package com.google.android.gms.ads.internal.formats;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.View.OnClickListener;
import com.google.android.gms.ads.internal.q;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.dx;
import com.google.android.gms.internal.dy;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.ib;
import com.google.android.gms.internal.j;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

@fv
public class g
  extends i
{
  private dx a;
  private dy b;
  private final q c;
  private h d;
  private boolean e = false;
  private Object f = new Object();
  
  private g(Context paramContext, q paramq, j paramj)
  {
    super(paramContext, paramq, null, paramj, null, null, null);
    c = paramq;
  }
  
  public g(Context paramContext, q paramq, j paramj, dx paramdx)
  {
    this(paramContext, paramq, paramj);
    a = paramdx;
  }
  
  public g(Context paramContext, q paramq, j paramj, dy paramdy)
  {
    this(paramContext, paramq, paramj);
    b = paramdy;
  }
  
  public b a(View.OnClickListener paramOnClickListener)
  {
    return null;
  }
  
  public void a()
  {
    zzx.zzcD("recordImpression must be called on the main UI thread.");
    for (;;)
    {
      synchronized (f)
      {
        a(true);
        if (d != null)
        {
          d.a();
          c.y();
          return;
        }
        try
        {
          if ((a != null) && (!a.j())) {
            a.i();
          }
        }
        catch (RemoteException localRemoteException)
        {
          gz.d("Failed to call recordImpression", localRemoteException);
        }
      }
      if ((b != null) && (!b.h())) {
        b.g();
      }
    }
  }
  
  public void a(View paramView)
  {
    synchronized (f)
    {
      e = true;
      try
      {
        if (a != null) {
          a.b(d.a(paramView));
        }
        for (;;)
        {
          e = false;
          return;
          if (b != null) {
            b.b(d.a(paramView));
          }
        }
      }
      catch (RemoteException paramView)
      {
        for (;;)
        {
          gz.d("Failed to call prepareAd", paramView);
        }
      }
    }
  }
  
  public void a(View paramView, Map<String, WeakReference<View>> paramMap, JSONObject paramJSONObject1, JSONObject paramJSONObject2, JSONObject paramJSONObject3)
  {
    zzx.zzcD("performClick must be called on the main UI thread.");
    synchronized (f)
    {
      if (d != null)
      {
        d.a(paramView, paramMap, paramJSONObject1, paramJSONObject2, paramJSONObject3);
        c.e();
      }
      for (;;)
      {
        return;
        try
        {
          if ((a != null) && (!a.k()))
          {
            a.a(d.a(paramView));
            c.e();
          }
          if ((b == null) || (b.i())) {
            continue;
          }
          b.a(d.a(paramView));
          c.e();
        }
        catch (RemoteException paramView)
        {
          gz.d("Failed to call performClick", paramView);
        }
      }
    }
  }
  
  public void a(h paramh)
  {
    synchronized (f)
    {
      d = paramh;
      return;
    }
  }
  
  public boolean b()
  {
    synchronized (f)
    {
      boolean bool = e;
      return bool;
    }
  }
  
  public h c()
  {
    synchronized (f)
    {
      h localh = d;
      return localh;
    }
  }
  
  public ib d()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */