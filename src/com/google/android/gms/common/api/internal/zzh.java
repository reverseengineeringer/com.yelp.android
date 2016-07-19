package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.GoogleApiClient.zza;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzf.zza;
import com.google.android.gms.common.internal.zzp;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.zzc;
import com.google.android.gms.internal.lf;
import com.google.android.gms.internal.lg;
import com.google.android.gms.signin.internal.SignInResponse;
import com.google.android.gms.signin.internal.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

public class zzh
  implements zzk
{
  private final Context mContext;
  private final Lock zzXG;
  private final zzc zzags;
  private final Api.zza<? extends lf, lg> zzagt;
  private final Map<Api<?>, Integer> zzahA;
  private ArrayList<Future<?>> zzahB = new ArrayList();
  private final zzl zzahj;
  private ConnectionResult zzahm;
  private int zzahn;
  private int zzaho = 0;
  private int zzahp;
  private final Bundle zzahq = new Bundle();
  private final Set<Api.zzc> zzahr = new HashSet();
  private lf zzahs;
  private int zzaht;
  private boolean zzahu;
  private boolean zzahv;
  private zzp zzahw;
  private boolean zzahx;
  private boolean zzahy;
  private final zzf zzahz;
  
  public zzh(zzl paramzzl, zzf paramzzf, Map<Api<?>, Integer> paramMap, zzc paramzzc, Api.zza<? extends lf, lg> paramzza, Lock paramLock, Context paramContext)
  {
    zzahj = paramzzl;
    zzahz = paramzzf;
    zzahA = paramMap;
    zzags = paramzzc;
    zzagt = paramzza;
    zzXG = paramLock;
    mContext = paramContext;
  }
  
  private void zzZ(boolean paramBoolean)
  {
    if (zzahs != null)
    {
      if ((zzahs.isConnected()) && (paramBoolean)) {
        zzahs.a();
      }
      zzahs.disconnect();
      zzahw = null;
    }
  }
  
  private void zza(SignInResponse paramSignInResponse)
  {
    if (!zzbz(0)) {
      return;
    }
    ConnectionResult localConnectionResult = paramSignInResponse.a();
    if (localConnectionResult.isSuccess())
    {
      paramSignInResponse = paramSignInResponse.b();
      localConnectionResult = paramSignInResponse.zzqY();
      if (!localConnectionResult.isSuccess())
      {
        Log.wtf("GoogleApiClientConnecting", "Sign-in succeeded with resolve account failure: " + localConnectionResult, new Exception());
        zzg(localConnectionResult);
        return;
      }
      zzahv = true;
      zzahw = paramSignInResponse.zzqX();
      zzahx = paramSignInResponse.zzqZ();
      zzahy = paramSignInResponse.zzra();
      zzpv();
      return;
    }
    if (zzf(localConnectionResult))
    {
      zzpy();
      zzpv();
      return;
    }
    zzg(localConnectionResult);
  }
  
  private boolean zza(int paramInt1, int paramInt2, ConnectionResult paramConnectionResult)
  {
    if ((paramInt2 == 1) && (!zze(paramConnectionResult))) {}
    while ((zzahm != null) && (paramInt1 >= zzahn)) {
      return false;
    }
    return true;
  }
  
  private void zzb(ConnectionResult paramConnectionResult, Api<?> paramApi, int paramInt)
  {
    if (paramInt != 2)
    {
      int i = paramApi.zzoP().getPriority();
      if (zza(i, paramInt, paramConnectionResult))
      {
        zzahm = paramConnectionResult;
        zzahn = i;
      }
    }
    zzahj.zzaio.put(paramApi.zzoR(), paramConnectionResult);
  }
  
  private String zzbA(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "UNKNOWN";
    case 0: 
      return "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
    }
    return "STEP_GETTING_REMOTE_SERVICE";
  }
  
  private boolean zzbz(int paramInt)
  {
    if (zzaho != paramInt)
    {
      Log.i("GoogleApiClientConnecting", zzahj.zzagW.zzpH());
      Log.wtf("GoogleApiClientConnecting", "GoogleApiClient connecting is in step " + zzbA(zzaho) + " but received callback for step " + zzbA(paramInt), new Exception());
      zzg(new ConnectionResult(8, null));
      return false;
    }
    return true;
  }
  
  private boolean zze(ConnectionResult paramConnectionResult)
  {
    if (paramConnectionResult.hasResolution()) {}
    while (zzags.zzbu(paramConnectionResult.getErrorCode()) != null) {
      return true;
    }
    return false;
  }
  
  private boolean zzf(ConnectionResult paramConnectionResult)
  {
    return (zzaht == 2) || ((zzaht == 1) && (!paramConnectionResult.hasResolution()));
  }
  
  private void zzg(ConnectionResult paramConnectionResult)
  {
    zzpz();
    if (!paramConnectionResult.hasResolution()) {}
    for (boolean bool = true;; bool = false)
    {
      zzZ(bool);
      zzahj.zzh(paramConnectionResult);
      zzahj.zzais.zzd(paramConnectionResult);
      return;
    }
  }
  
  private Set<Scope> zzpA()
  {
    if (zzahz == null) {
      return Collections.emptySet();
    }
    HashSet localHashSet = new HashSet(zzahz.zzqs());
    Map localMap = zzahz.zzqu();
    Iterator localIterator = localMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      Api localApi = (Api)localIterator.next();
      if (!zzahj.zzaio.containsKey(localApi.zzoR())) {
        localHashSet.addAll(getzzXf);
      }
    }
    return localHashSet;
  }
  
  private boolean zzpu()
  {
    zzahp -= 1;
    if (zzahp > 0) {
      return false;
    }
    if (zzahp < 0)
    {
      Log.i("GoogleApiClientConnecting", zzahj.zzagW.zzpH());
      Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
      zzg(new ConnectionResult(8, null));
      return false;
    }
    if (zzahm != null)
    {
      zzahj.zzair = zzahn;
      zzg(zzahm);
      return false;
    }
    return true;
  }
  
  private void zzpv()
  {
    if (zzahp != 0) {}
    while ((zzahu) && (!zzahv)) {
      return;
    }
    zzpw();
  }
  
  private void zzpw()
  {
    ArrayList localArrayList = new ArrayList();
    zzaho = 1;
    zzahp = zzahj.zzahT.size();
    Iterator localIterator = zzahj.zzahT.keySet().iterator();
    while (localIterator.hasNext())
    {
      Api.zzc localzzc = (Api.zzc)localIterator.next();
      if (zzahj.zzaio.containsKey(localzzc))
      {
        if (zzpu()) {
          zzpx();
        }
      }
      else {
        localArrayList.add(zzahj.zzahT.get(localzzc));
      }
    }
    if (!localArrayList.isEmpty()) {
      zzahB.add(zzm.zzpN().submit(new zzc(localArrayList)));
    }
  }
  
  private void zzpx()
  {
    zzahj.zzpL();
    zzm.zzpN().execute(new Runnable()
    {
      public void run()
      {
        zzh.zzb(zzh.this).zzal(zzh.zza(zzh.this));
      }
    });
    if (zzahs != null)
    {
      if (zzahx) {
        zzahs.a(zzahw, zzahy);
      }
      zzZ(false);
    }
    Object localObject = zzahj.zzaio.keySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      Api.zzc localzzc = (Api.zzc)((Iterator)localObject).next();
      ((Api.zzb)zzahj.zzahT.get(localzzc)).disconnect();
    }
    if (zzahq.isEmpty()) {}
    for (localObject = null;; localObject = zzahq)
    {
      zzahj.zzais.zzi((Bundle)localObject);
      return;
    }
  }
  
  private void zzpy()
  {
    zzahu = false;
    zzahj.zzagW.zzahU = Collections.emptySet();
    Iterator localIterator = zzahr.iterator();
    while (localIterator.hasNext())
    {
      Api.zzc localzzc = (Api.zzc)localIterator.next();
      if (!zzahj.zzaio.containsKey(localzzc)) {
        zzahj.zzaio.put(localzzc, new ConnectionResult(17, null));
      }
    }
  }
  
  private void zzpz()
  {
    Iterator localIterator = zzahB.iterator();
    while (localIterator.hasNext()) {
      ((Future)localIterator.next()).cancel(true);
    }
    zzahB.clear();
  }
  
  public void begin()
  {
    zzahj.zzaio.clear();
    zzahu = false;
    zzahm = null;
    zzaho = 0;
    zzaht = 2;
    zzahv = false;
    zzahx = false;
    HashMap localHashMap = new HashMap();
    Object localObject = zzahA.keySet().iterator();
    int i = 0;
    if (((Iterator)localObject).hasNext())
    {
      Api localApi = (Api)((Iterator)localObject).next();
      Api.zzb localzzb = (Api.zzb)zzahj.zzahT.get(localApi.zzoR());
      int k = ((Integer)zzahA.get(localApi)).intValue();
      if (localApi.zzoP().getPriority() == 1) {}
      for (int j = 1;; j = 0)
      {
        if (localzzb.zzmE())
        {
          zzahu = true;
          if (k < zzaht) {
            zzaht = k;
          }
          if (k != 0) {
            zzahr.add(localApi.zzoR());
          }
        }
        localHashMap.put(localzzb, new zza(this, localApi, k));
        i = j | i;
        break;
      }
    }
    if (i != 0) {
      zzahu = false;
    }
    if (zzahu)
    {
      zzahz.zza(Integer.valueOf(zzahj.zzagW.getSessionId()));
      localObject = new zze(null);
      zzahs = ((lf)zzagt.zza(mContext, zzahj.zzagW.getLooper(), zzahz, zzahz.zzqy(), (GoogleApiClient.ConnectionCallbacks)localObject, (GoogleApiClient.OnConnectionFailedListener)localObject));
    }
    zzahp = zzahj.zzahT.size();
    zzahB.add(zzm.zzpN().submit(new zzb(localHashMap)));
  }
  
  public void connect() {}
  
  public boolean disconnect()
  {
    zzpz();
    zzZ(true);
    zzahj.zzh(null);
    return true;
  }
  
  public void onConnected(Bundle paramBundle)
  {
    if (!zzbz(1)) {}
    do
    {
      return;
      if (paramBundle != null) {
        zzahq.putAll(paramBundle);
      }
    } while (!zzpu());
    zzpx();
  }
  
  public void onConnectionSuspended(int paramInt)
  {
    zzg(new ConnectionResult(8, null));
  }
  
  public <A extends Api.zzb, R extends Result, T extends zza.zza<R, A>> T zza(T paramT)
  {
    zzahj.zzagW.zzahN.add(paramT);
    return paramT;
  }
  
  public void zza(ConnectionResult paramConnectionResult, Api<?> paramApi, int paramInt)
  {
    if (!zzbz(1)) {}
    do
    {
      return;
      zzb(paramConnectionResult, paramApi, paramInt);
    } while (!zzpu());
    zzpx();
  }
  
  public <A extends Api.zzb, T extends zza.zza<? extends Result, A>> T zzb(T paramT)
  {
    throw new IllegalStateException("GoogleApiClient is not connected yet.");
  }
  
  private static class zza
    implements GoogleApiClient.zza
  {
    private final Api<?> zzagT;
    private final int zzagU;
    private final WeakReference<zzh> zzahD;
    
    public zza(zzh paramzzh, Api<?> paramApi, int paramInt)
    {
      zzahD = new WeakReference(paramzzh);
      zzagT = paramApi;
      zzagU = paramInt;
    }
    
    public void zza(ConnectionResult paramConnectionResult)
    {
      boolean bool = false;
      zzh localzzh = (zzh)zzahD.get();
      if (localzzh == null) {
        return;
      }
      if (Looper.myLooper() == zzdzzagW.getLooper()) {
        bool = true;
      }
      zzx.zza(bool, "onReportServiceBinding must be called on the GoogleApiClient handler thread");
      zzh.zzc(localzzh).lock();
      try
      {
        bool = zzh.zza(localzzh, 0);
        if (!bool) {
          return;
        }
        if (!paramConnectionResult.isSuccess()) {
          zzh.zza(localzzh, paramConnectionResult, zzagT, zzagU);
        }
        if (zzh.zzk(localzzh)) {
          zzh.zzj(localzzh);
        }
        return;
      }
      finally
      {
        zzh.zzc(localzzh).unlock();
      }
    }
  }
  
  private class zzb
    extends zzh.zzf
  {
    private final Map<Api.zzb, GoogleApiClient.zza> zzahE;
    
    public zzb()
    {
      super(null);
      Map localMap;
      zzahE = localMap;
    }
    
    public void zzpt()
    {
      int i = zzh.zzb(zzh.this).isGooglePlayServicesAvailable(zzh.zza(zzh.this));
      final Object localObject;
      if (i != 0)
      {
        localObject = new ConnectionResult(i, null);
        zzh.zzd(zzh.this).zza(new zzl.zza(zzh.this)
        {
          public void zzpt()
          {
            zzh.zza(zzh.this, localObject);
          }
        });
      }
      for (;;)
      {
        return;
        if (zzh.zze(zzh.this)) {
          zzh.zzf(zzh.this).b();
        }
        localObject = zzahE.keySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          Api.zzb localzzb = (Api.zzb)((Iterator)localObject).next();
          localzzb.zza((GoogleApiClient.zza)zzahE.get(localzzb));
        }
      }
    }
  }
  
  private class zzc
    extends zzh.zzf
  {
    private final ArrayList<Api.zzb> zzahH;
    
    public zzc()
    {
      super(null);
      ArrayList localArrayList;
      zzahH = localArrayList;
    }
    
    public void zzpt()
    {
      zzdzzagW.zzahU = zzh.zzg(zzh.this);
      Iterator localIterator = zzahH.iterator();
      while (localIterator.hasNext()) {
        ((Api.zzb)localIterator.next()).zza(zzh.zzh(zzh.this), zzdzzagW.zzahU);
      }
    }
  }
  
  private static class zzd
    extends b
  {
    private final WeakReference<zzh> zzahD;
    
    zzd(zzh paramzzh)
    {
      zzahD = new WeakReference(paramzzh);
    }
    
    public void zzb(final SignInResponse paramSignInResponse)
    {
      final zzh localzzh = (zzh)zzahD.get();
      if (localzzh == null) {
        return;
      }
      zzh.zzd(localzzh).zza(new zzl.zza(localzzh)
      {
        public void zzpt()
        {
          zzh.zza(localzzh, paramSignInResponse);
        }
      });
    }
  }
  
  private class zze
    implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
  {
    private zze() {}
    
    public void onConnected(Bundle paramBundle)
    {
      zzh.zzf(zzh.this).a(new zzh.zzd(zzh.this));
    }
    
    /* Error */
    public void onConnectionFailed(ConnectionResult paramConnectionResult)
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 17	com/google/android/gms/common/api/internal/zzh$zze:zzahC	Lcom/google/android/gms/common/api/internal/zzh;
      //   4: invokestatic 45	com/google/android/gms/common/api/internal/zzh:zzc	(Lcom/google/android/gms/common/api/internal/zzh;)Ljava/util/concurrent/locks/Lock;
      //   7: invokeinterface 50 1 0
      //   12: aload_0
      //   13: getfield 17	com/google/android/gms/common/api/internal/zzh$zze:zzahC	Lcom/google/android/gms/common/api/internal/zzh;
      //   16: aload_1
      //   17: invokestatic 54	com/google/android/gms/common/api/internal/zzh:zzb	(Lcom/google/android/gms/common/api/internal/zzh;Lcom/google/android/gms/common/ConnectionResult;)Z
      //   20: ifeq +30 -> 50
      //   23: aload_0
      //   24: getfield 17	com/google/android/gms/common/api/internal/zzh$zze:zzahC	Lcom/google/android/gms/common/api/internal/zzh;
      //   27: invokestatic 57	com/google/android/gms/common/api/internal/zzh:zzi	(Lcom/google/android/gms/common/api/internal/zzh;)V
      //   30: aload_0
      //   31: getfield 17	com/google/android/gms/common/api/internal/zzh$zze:zzahC	Lcom/google/android/gms/common/api/internal/zzh;
      //   34: invokestatic 60	com/google/android/gms/common/api/internal/zzh:zzj	(Lcom/google/android/gms/common/api/internal/zzh;)V
      //   37: aload_0
      //   38: getfield 17	com/google/android/gms/common/api/internal/zzh$zze:zzahC	Lcom/google/android/gms/common/api/internal/zzh;
      //   41: invokestatic 45	com/google/android/gms/common/api/internal/zzh:zzc	(Lcom/google/android/gms/common/api/internal/zzh;)Ljava/util/concurrent/locks/Lock;
      //   44: invokeinterface 63 1 0
      //   49: return
      //   50: aload_0
      //   51: getfield 17	com/google/android/gms/common/api/internal/zzh$zze:zzahC	Lcom/google/android/gms/common/api/internal/zzh;
      //   54: aload_1
      //   55: invokestatic 67	com/google/android/gms/common/api/internal/zzh:zza	(Lcom/google/android/gms/common/api/internal/zzh;Lcom/google/android/gms/common/ConnectionResult;)V
      //   58: goto -21 -> 37
      //   61: astore_1
      //   62: aload_0
      //   63: getfield 17	com/google/android/gms/common/api/internal/zzh$zze:zzahC	Lcom/google/android/gms/common/api/internal/zzh;
      //   66: invokestatic 45	com/google/android/gms/common/api/internal/zzh:zzc	(Lcom/google/android/gms/common/api/internal/zzh;)Ljava/util/concurrent/locks/Lock;
      //   69: invokeinterface 63 1 0
      //   74: aload_1
      //   75: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	76	0	this	zze
      //   0	76	1	paramConnectionResult	ConnectionResult
      // Exception table:
      //   from	to	target	type
      //   12	37	61	finally
      //   50	58	61	finally
    }
    
    public void onConnectionSuspended(int paramInt) {}
  }
  
  private abstract class zzf
    implements Runnable
  {
    private zzf() {}
    
    public void run()
    {
      zzh.zzc(zzh.this).lock();
      try
      {
        boolean bool = Thread.interrupted();
        if (bool) {
          return;
        }
        zzpt();
        return;
      }
      catch (RuntimeException localRuntimeException)
      {
        zzh.zzd(zzh.this).zza(localRuntimeException);
        return;
      }
      finally
      {
        zzh.zzc(zzh.this).unlock();
      }
    }
    
    protected abstract void zzpt();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.internal.zzh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */