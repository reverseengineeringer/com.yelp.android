package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.dj;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.g;
import com.google.android.gms.internal.gr.a;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.hf;
import com.google.android.gms.internal.hu;
import com.google.android.gms.internal.hv;
import com.google.android.gms.internal.j;
import com.google.android.gms.internal.jt;
import org.json.JSONException;
import org.json.JSONObject;

@fv
public class zzb
  extends gy
  implements b.a
{
  hf a;
  AdResponseParcel b;
  dj c;
  private final a.a d;
  private final AdRequestInfoParcel.a e;
  private final Object f = new Object();
  private final Context g;
  private final j h;
  private AdRequestInfoParcel i;
  private Runnable j;
  
  public zzb(Context paramContext, AdRequestInfoParcel.a parama, j paramj, a.a parama1)
  {
    d = parama1;
    g = paramContext;
    e = parama;
    h = paramj;
  }
  
  private void a(int paramInt, String paramString)
  {
    if ((paramInt == 3) || (paramInt == -1))
    {
      gz.c(paramString);
      if (b != null) {
        break label93;
      }
      b = new AdResponseParcel(paramInt);
      label33:
      if (i == null) {
        break label115;
      }
    }
    label93:
    label115:
    for (paramString = i;; paramString = new AdRequestInfoParcel(e, null, -1L))
    {
      paramString = new gr.a(paramString, b, c, null, paramInt, -1L, b.n, null);
      d.a(paramString);
      return;
      gz.d(paramString);
      break;
      b = new AdResponseParcel(paramInt, b.k);
      break label33;
    }
  }
  
  protected AdSizeParcel a(AdRequestInfoParcel paramAdRequestInfoParcel)
    throws zzb.zza
  {
    if (b.m == null) {
      throw new zza("The ad response must specify one of the supported ad sizes.", 0);
    }
    Object localObject = b.m.split("x");
    if (localObject.length != 2) {
      throw new zza("Invalid ad size format from the ad response: " + b.m, 0);
    }
    for (;;)
    {
      int k;
      AdSizeParcel localAdSizeParcel;
      try
      {
        int i1 = Integer.parseInt(localObject[0]);
        int i2 = Integer.parseInt(localObject[1]);
        localObject = d.h;
        int i3 = localObject.length;
        k = 0;
        if (k >= i3) {
          break;
        }
        localAdSizeParcel = localObject[k];
        float f1 = g.getResources().getDisplayMetrics().density;
        if (f == -1)
        {
          m = (int)(g / f1);
          if (c != -2) {
            break label253;
          }
          n = (int)(d / f1);
          if ((i1 != m) || (i2 != n)) {
            break label263;
          }
          return new AdSizeParcel(localAdSizeParcel, d.h);
        }
      }
      catch (NumberFormatException paramAdRequestInfoParcel)
      {
        throw new zza("Invalid ad size number from the ad response: " + b.m, 0);
      }
      int m = f;
      continue;
      label253:
      int n = c;
      continue;
      label263:
      k += 1;
    }
    throw new zza("The ad size from the ad response was not one of the requested sizes: " + b.m, 0);
  }
  
  hf a(VersionInfoParcel paramVersionInfoParcel, hu<AdRequestInfoParcel> paramhu)
  {
    return b.a(g, paramVersionInfoParcel, paramhu, this);
  }
  
  public void a()
  {
    gz.a("AdLoaderBackgroundTask started.");
    j = new Runnable()
    {
      public void run()
      {
        synchronized (zzb.a(zzb.this))
        {
          if (a == null) {
            return;
          }
          b();
          zzb.a(zzb.this, 2, "Timed out waiting for ad response.");
          return;
        }
      }
    };
    hd.a.postDelayed(j, ((Long)ao.ax.c()).longValue());
    final hv localhv = new hv();
    long l = s.i().b();
    hc.a(new Runnable()
    {
      public void run()
      {
        synchronized (zzb.a(zzb.this))
        {
          a = a(bj, localhv);
          if (a == null)
          {
            zzb.a(zzb.this, 0, "Could not start the ad request service.");
            hd.a.removeCallbacks(zzb.c(zzb.this));
          }
          return;
        }
      }
    });
    String str = h.a().a(g);
    i = new AdRequestInfoParcel(e, str, l);
    localhv.a(i);
  }
  
  public void a(AdResponseParcel arg1)
  {
    gz.a("Received ad response.");
    b = ???;
    long l = s.i().b();
    synchronized (f)
    {
      a = null;
      try
      {
        if ((b.e != -2) && (b.e != -3)) {
          throw new zza("There was a problem getting an ad response. ErrorCode: " + b.e, b.e);
        }
      }
      catch (zza ???)
      {
        a(???.getErrorCode(), ???.getMessage());
        hd.a.removeCallbacks(j);
        return;
      }
    }
    c();
    if (i.d.h != null) {}
    for (??? = a(i);; ??? = null)
    {
      s.h().a(b.v);
      if (!TextUtils.isEmpty(b.r)) {}
      for (;;)
      {
        try
        {
          JSONObject localJSONObject = new JSONObject(b.r);
          ??? = new gr.a(i, b, c, ???, -2, l, b.n, localJSONObject);
          d.a(???);
          hd.a.removeCallbacks(j);
          return;
        }
        catch (Exception localException)
        {
          gz.b("Error parsing the JSON for Active View.", localException);
        }
        Object localObject2 = null;
      }
    }
  }
  
  public void b()
  {
    synchronized (f)
    {
      if (a != null) {
        a.d();
      }
      return;
    }
  }
  
  protected void c()
    throws zzb.zza
  {
    if (b.e == -3) {}
    do
    {
      return;
      if (TextUtils.isEmpty(b.c)) {
        throw new zza("No fill from ad server.", 3);
      }
      s.h().a(g, b.u);
    } while (!b.h);
    try
    {
      c = new dj(b.c);
      return;
    }
    catch (JSONException localJSONException)
    {
      throw new zza("Could not parse mediation config: " + b.c, 0);
    }
  }
  
  @fv
  static final class zza
    extends Exception
  {
    private final int zzGu;
    
    public zza(String paramString, int paramInt)
    {
      super();
      zzGu = paramInt;
    }
    
    public int getErrorCode()
    {
      return zzGu;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */