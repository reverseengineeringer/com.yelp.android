package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.lf;
import com.google.android.gms.internal.lg;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

public class zzl
  implements zzp
{
  private final Context mContext;
  private final Lock zzXG;
  final zzj zzagW;
  private final com.google.android.gms.common.zzc zzags;
  final Api.zza<? extends lf, lg> zzagt;
  final Map<Api<?>, Integer> zzahA;
  final Map<Api.zzc<?>, Api.zzb> zzahT;
  final zzf zzahz;
  private final Condition zzaim;
  private final zzb zzain;
  final Map<Api.zzc<?>, ConnectionResult> zzaio = new HashMap();
  private volatile zzk zzaip;
  private ConnectionResult zzaiq = null;
  int zzair;
  final zzp.zza zzais;
  
  public zzl(Context paramContext, zzj paramzzj, Lock paramLock, Looper paramLooper, com.google.android.gms.common.zzc paramzzc, Map<Api.zzc<?>, Api.zzb> paramMap, zzf paramzzf, Map<Api<?>, Integer> paramMap1, Api.zza<? extends lf, lg> paramzza, ArrayList<zzc> paramArrayList, zzp.zza paramzza1)
  {
    mContext = paramContext;
    zzXG = paramLock;
    zzags = paramzzc;
    zzahT = paramMap;
    zzahz = paramzzf;
    zzahA = paramMap1;
    zzagt = paramzza;
    zzagW = paramzzj;
    zzais = paramzza1;
    paramContext = paramArrayList.iterator();
    while (paramContext.hasNext()) {
      ((zzc)paramContext.next()).zza(this);
    }
    zzain = new zzb(paramLooper);
    zzaim = paramLock.newCondition();
    zzaip = new zzi(this);
  }
  
  public ConnectionResult blockingConnect()
  {
    connect();
    while (isConnecting()) {
      try
      {
        zzaim.await();
      }
      catch (InterruptedException localInterruptedException)
      {
        Thread.currentThread().interrupt();
        return new ConnectionResult(15, null);
      }
    }
    if (isConnected()) {
      return ConnectionResult.zzafB;
    }
    if (zzaiq != null) {
      return zzaiq;
    }
    return new ConnectionResult(13, null);
  }
  
  public ConnectionResult blockingConnect(long paramLong, TimeUnit paramTimeUnit)
  {
    connect();
    for (paramLong = paramTimeUnit.toNanos(paramLong); isConnecting(); paramLong = zzaim.awaitNanos(paramLong))
    {
      if (paramLong <= 0L) {}
      try
      {
        disconnect();
        return new ConnectionResult(14, null);
      }
      catch (InterruptedException paramTimeUnit)
      {
        Thread.currentThread().interrupt();
        return new ConnectionResult(15, null);
      }
    }
    if (isConnected()) {
      return ConnectionResult.zzafB;
    }
    if (zzaiq != null) {
      return zzaiq;
    }
    return new ConnectionResult(13, null);
  }
  
  public void connect()
  {
    zzaip.connect();
  }
  
  public boolean disconnect()
  {
    boolean bool = zzaip.disconnect();
    if (bool) {
      zzaio.clear();
    }
    return bool;
  }
  
  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    String str = paramString + "  ";
    Iterator localIterator = zzahA.keySet().iterator();
    while (localIterator.hasNext())
    {
      Api localApi = (Api)localIterator.next();
      paramPrintWriter.append(paramString).append(localApi.getName()).println(":");
      ((Api.zzb)zzahT.get(localApi.zzoR())).dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }
  
  public ConnectionResult getConnectionResult(Api<?> paramApi)
  {
    paramApi = paramApi.zzoR();
    if (zzahT.containsKey(paramApi))
    {
      if (((Api.zzb)zzahT.get(paramApi)).isConnected()) {
        return ConnectionResult.zzafB;
      }
      if (zzaio.containsKey(paramApi)) {
        return (ConnectionResult)zzaio.get(paramApi);
      }
    }
    return null;
  }
  
  public boolean isConnected()
  {
    return zzaip instanceof zzg;
  }
  
  public boolean isConnecting()
  {
    return zzaip instanceof zzh;
  }
  
  public void onConnected(Bundle paramBundle)
  {
    zzXG.lock();
    try
    {
      zzaip.onConnected(paramBundle);
      return;
    }
    finally
    {
      zzXG.unlock();
    }
  }
  
  public void onConnectionSuspended(int paramInt)
  {
    zzXG.lock();
    try
    {
      zzaip.onConnectionSuspended(paramInt);
      return;
    }
    finally
    {
      zzXG.unlock();
    }
  }
  
  public <A extends Api.zzb, R extends Result, T extends zza.zza<R, A>> T zza(T paramT)
  {
    return zzaip.zza(paramT);
  }
  
  public void zza(ConnectionResult paramConnectionResult, Api<?> paramApi, int paramInt)
  {
    zzXG.lock();
    try
    {
      zzaip.zza(paramConnectionResult, paramApi, paramInt);
      return;
    }
    finally
    {
      zzXG.unlock();
    }
  }
  
  void zza(zza paramzza)
  {
    paramzza = zzain.obtainMessage(1, paramzza);
    zzain.sendMessage(paramzza);
  }
  
  void zza(RuntimeException paramRuntimeException)
  {
    paramRuntimeException = zzain.obtainMessage(2, paramRuntimeException);
    zzain.sendMessage(paramRuntimeException);
  }
  
  public boolean zza(zzu paramzzu)
  {
    return false;
  }
  
  public <A extends Api.zzb, T extends zza.zza<? extends Result, A>> T zzb(T paramT)
  {
    return zzaip.zzb(paramT);
  }
  
  void zzh(ConnectionResult paramConnectionResult)
  {
    zzXG.lock();
    try
    {
      zzaiq = paramConnectionResult;
      zzaip = new zzi(this);
      zzaip.begin();
      zzaim.signalAll();
      return;
    }
    finally
    {
      zzXG.unlock();
    }
  }
  
  public void zzoW() {}
  
  void zzpK()
  {
    zzXG.lock();
    try
    {
      zzaip = new zzh(this, zzahz, zzahA, zzags, zzagt, zzXG, mContext);
      zzaip.begin();
      zzaim.signalAll();
      return;
    }
    finally
    {
      zzXG.unlock();
    }
  }
  
  void zzpL()
  {
    zzXG.lock();
    try
    {
      zzagW.zzpF();
      zzaip = new zzg(this);
      zzaip.begin();
      zzaim.signalAll();
      return;
    }
    finally
    {
      zzXG.unlock();
    }
  }
  
  void zzpM()
  {
    Iterator localIterator = zzahT.values().iterator();
    while (localIterator.hasNext()) {
      ((Api.zzb)localIterator.next()).disconnect();
    }
  }
  
  public void zzpj()
  {
    if (isConnected()) {
      ((zzg)zzaip).zzps();
    }
  }
  
  static abstract class zza
  {
    private final zzk zzait;
    
    protected zza(zzk paramzzk)
    {
      zzait = paramzzk;
    }
    
    public final void zzd(zzl paramzzl)
    {
      zzl.zzb(paramzzl).lock();
      try
      {
        zzk localzzk1 = zzl.zzc(paramzzl);
        zzk localzzk2 = zzait;
        if (localzzk1 != localzzk2) {
          return;
        }
        zzpt();
        return;
      }
      finally
      {
        zzl.zzb(paramzzl).unlock();
      }
    }
    
    protected abstract void zzpt();
  }
  
  final class zzb
    extends Handler
  {
    zzb(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      switch (what)
      {
      default: 
        Log.w("GACStateManager", "Unknown message id: " + what);
        return;
      case 1: 
        ((zzl.zza)obj).zzd(zzl.this);
        return;
      }
      throw ((RuntimeException)obj);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.internal.zzl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */