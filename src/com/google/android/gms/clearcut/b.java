package com.google.android.gms.clearcut;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.ix;
import com.google.android.gms.internal.iy;
import com.google.android.gms.internal.jt;
import com.google.android.gms.internal.jv;
import com.google.android.gms.internal.lu.d;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

public final class b
{
  public static final Api.zzc<iy> a = new Api.zzc();
  public static final Api.zza<iy, Api.ApiOptions.NoOptions> b = new Api.zza()
  {
    public iy a(Context paramAnonymousContext, Looper paramAnonymousLooper, zzf paramAnonymouszzf, Api.ApiOptions.NoOptions paramAnonymousNoOptions, GoogleApiClient.ConnectionCallbacks paramAnonymousConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramAnonymousOnConnectionFailedListener)
    {
      return new iy(paramAnonymousContext, paramAnonymousLooper, paramAnonymouszzf, paramAnonymousConnectionCallbacks, paramAnonymousOnConnectionFailedListener);
    }
  };
  public static final Api<Api.ApiOptions.NoOptions> c = new Api("ClearcutLogger.API", b, a);
  public static final c d = new ix();
  private final Context e;
  private final String f;
  private final int g;
  private String h;
  private int i = -1;
  private String j;
  private String k;
  private final boolean l;
  private int m = 0;
  private final c n;
  private final jt o;
  private final a p;
  private c q;
  
  public b(Context paramContext, int paramInt, String paramString1, String paramString2, String paramString3, boolean paramBoolean, c paramc, jt paramjt, c paramc1, a parama)
  {
    Context localContext = paramContext.getApplicationContext();
    if (localContext != null)
    {
      e = localContext;
      f = paramContext.getPackageName();
      g = a(paramContext);
      i = paramInt;
      h = paramString1;
      j = paramString2;
      k = paramString3;
      l = paramBoolean;
      n = paramc;
      o = paramjt;
      if (paramc1 == null) {
        break label141;
      }
      label93:
      q = paramc1;
      p = parama;
      m = 0;
      if (l) {
        if (j != null) {
          break label153;
        }
      }
    }
    label141:
    label153:
    for (paramBoolean = true;; paramBoolean = false)
    {
      zzx.zzb(paramBoolean, "can't be anonymous with an upload account");
      return;
      localContext = paramContext;
      break;
      paramc1 = new c();
      break label93;
    }
  }
  
  @Deprecated
  public b(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    this(paramContext, -1, paramString1, paramString2, paramString3, false, d, jv.d(), null, a.a);
  }
  
  private int a(Context paramContext)
  {
    try
    {
      int i1 = getPackageManagergetPackageInfogetPackageName0versionCode;
      return i1;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.wtf("ClearcutLogger", "This can't happen.");
    }
    return 0;
  }
  
  private static int[] b(ArrayList<Integer> paramArrayList)
  {
    if (paramArrayList == null) {
      return null;
    }
    int[] arrayOfInt = new int[paramArrayList.size()];
    paramArrayList = paramArrayList.iterator();
    int i1 = 0;
    while (paramArrayList.hasNext())
    {
      arrayOfInt[i1] = ((Integer)paramArrayList.next()).intValue();
      i1 += 1;
    }
    return arrayOfInt;
  }
  
  public a a(byte[] paramArrayOfByte)
  {
    return new a(paramArrayOfByte, null);
  }
  
  public boolean a(GoogleApiClient paramGoogleApiClient, long paramLong, TimeUnit paramTimeUnit)
  {
    return n.a(paramGoogleApiClient, paramLong, paramTimeUnit);
  }
  
  public class a
  {
    private int b = b.a(b.this);
    private String c = b.b(b.this);
    private String d = b.c(b.this);
    private String e = b.d(b.this);
    private int f = b.e(b.this);
    private final b.b g;
    private b.b h;
    private ArrayList<Integer> i = null;
    private final lu.d j = new lu.d();
    private boolean k = false;
    
    private a(byte[] paramArrayOfByte)
    {
      this(paramArrayOfByte, null);
    }
    
    private a(byte[] paramArrayOfByte, b.b paramb)
    {
      j.a = b.f(b.this).a();
      j.b = b.f(b.this).b();
      j.u = b.h(b.this).a(b.g(b.this));
      j.p = b.i(b.this).a(j.a);
      if (paramArrayOfByte != null) {
        j.j = paramArrayOfByte;
      }
      g = paramb;
    }
    
    public LogEventParcelable a()
    {
      return new LogEventParcelable(new PlayLoggerContext(b.k(b.this), b.l(b.this), b, c, d, e, b.j(b.this), f), j, g, h, b.a(i));
    }
    
    public a a(int paramInt)
    {
      j.e = paramInt;
      return this;
    }
    
    public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient)
    {
      if (k) {
        throw new IllegalStateException("do not reuse LogEventBuilder");
      }
      k = true;
      return b.m(b.this).a(paramGoogleApiClient, a());
    }
    
    public a b(int paramInt)
    {
      j.f = paramInt;
      return this;
    }
  }
  
  public static abstract interface b
  {
    public abstract byte[] a();
  }
  
  public static class c
  {
    public long a(long paramLong)
    {
      return TimeZone.getDefault().getOffset(paramLong) / 1000;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.clearcut.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */