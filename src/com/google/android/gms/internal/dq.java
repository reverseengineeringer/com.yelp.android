package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@fv
public class dq
  implements dh
{
  private final AdRequestInfoParcel a;
  private final ds b;
  private final Context c;
  private final Object d = new Object();
  private final dj e;
  private final boolean f;
  private final long g;
  private final long h;
  private final ax i;
  private final boolean j;
  private boolean k = false;
  private dm l;
  
  public dq(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, ds paramds, dj paramdj, boolean paramBoolean1, boolean paramBoolean2, long paramLong1, long paramLong2, ax paramax)
  {
    c = paramContext;
    a = paramAdRequestInfoParcel;
    b = paramds;
    e = paramdj;
    f = paramBoolean1;
    j = paramBoolean2;
    g = paramLong1;
    h = paramLong2;
    i = paramax;
  }
  
  public dn a(List<di> arg1)
  {
    gz.a("Starting mediation.");
    Object localObject = new ArrayList();
    au localau1 = i.a();
    Iterator localIterator1 = ???.iterator();
    while (localIterator1.hasNext())
    {
      di localdi = (di)localIterator1.next();
      gz.c("Trying mediation network: " + b);
      Iterator localIterator2 = c.iterator();
      while (localIterator2.hasNext())
      {
        String str = (String)localIterator2.next();
        au localau2 = i.a();
        synchronized (d)
        {
          if (k)
          {
            localObject = new dn(-1);
            return (dn)localObject;
          }
          l = new dm(c, str, b, e, localdi, a.c, a.d, a.k, f, j, a.z, a.n);
          ??? = l.a(g, h);
          if (a == 0)
          {
            gz.a("Adapter succeeded.");
            i.a("mediation_network_succeed", str);
            if (!((List)localObject).isEmpty()) {
              i.a("mediation_networks_fail", TextUtils.join(",", (Iterable)localObject));
            }
            i.a(localau2, new String[] { "mls" });
            i.a(localau1, new String[] { "ttm" });
            return (dn)???;
          }
        }
        localIterable.add(str);
        i.a(localau2, new String[] { "mlf" });
        if (c != null) {
          hd.a.post(new Runnable()
          {
            public void run()
            {
              try
              {
                paramListc.c();
                return;
              }
              catch (RemoteException localRemoteException)
              {
                gz.d("Could not destroy mediation adapter.", localRemoteException);
              }
            }
          });
        }
      }
    }
    if (!localIterable.isEmpty()) {
      i.a("mediation_networks_fail", TextUtils.join(",", localIterable));
    }
    return new dn(1);
  }
  
  public void a()
  {
    synchronized (d)
    {
      k = true;
      if (l != null) {
        l.a();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */