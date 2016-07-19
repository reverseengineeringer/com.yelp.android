package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResult.zza;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.common.internal.zzq;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public abstract class zzb<R extends Result>
  extends PendingResult<R>
{
  private boolean zzL;
  private final Object zzagI = new Object();
  protected final zza<R> zzagJ;
  private final WeakReference<GoogleApiClient> zzagK;
  private final ArrayList<PendingResult.zza> zzagL = new ArrayList();
  private ResultCallback<? super R> zzagM;
  private volatile boolean zzagN;
  private boolean zzagO;
  private boolean zzagP;
  private zzq zzagQ;
  private Integer zzagR;
  private volatile zzx<R> zzagS;
  private volatile R zzagy;
  private final CountDownLatch zzpJ = new CountDownLatch(1);
  
  @Deprecated
  protected zzb(Looper paramLooper)
  {
    zzagJ = new zza(paramLooper);
    zzagK = new WeakReference(null);
  }
  
  protected zzb(GoogleApiClient paramGoogleApiClient)
  {
    if (paramGoogleApiClient != null) {}
    for (Looper localLooper = paramGoogleApiClient.getLooper();; localLooper = Looper.getMainLooper())
    {
      zzagJ = new zza(localLooper);
      zzagK = new WeakReference(paramGoogleApiClient);
      return;
    }
  }
  
  private R get()
  {
    boolean bool = true;
    synchronized (zzagI)
    {
      if (!zzagN)
      {
        com.google.android.gms.common.internal.zzx.zza(bool, "Result has already been consumed.");
        com.google.android.gms.common.internal.zzx.zza(isReady(), "Result is not ready.");
        Result localResult = zzagy;
        zzagy = null;
        zzagM = null;
        zzagN = true;
        zzpf();
        return localResult;
      }
      bool = false;
    }
  }
  
  private void zzb(R paramR)
  {
    zzagy = paramR;
    zzagQ = null;
    zzpJ.countDown();
    paramR = zzagy.getStatus();
    if (zzagM != null)
    {
      zzagJ.zzph();
      if (!zzL) {
        zzagJ.zza(zzagM, get());
      }
    }
    Iterator localIterator = zzagL.iterator();
    while (localIterator.hasNext()) {
      ((PendingResult.zza)localIterator.next()).zzu(paramR);
    }
    zzagL.clear();
  }
  
  public static void zzc(Result paramResult)
  {
    if ((paramResult instanceof Releasable)) {}
    try
    {
      ((Releasable)paramResult).release();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.w("BasePendingResult", "Unable to release " + paramResult, localRuntimeException);
    }
  }
  
  public final R await()
  {
    boolean bool2 = true;
    boolean bool1;
    if (Looper.myLooper() != Looper.getMainLooper()) {
      bool1 = true;
    }
    for (;;)
    {
      com.google.android.gms.common.internal.zzx.zza(bool1, "await must not be called on the UI thread");
      if (!zzagN)
      {
        bool1 = true;
        label28:
        com.google.android.gms.common.internal.zzx.zza(bool1, "Result has already been consumed");
        if (zzagS != null) {
          break label80;
        }
        bool1 = bool2;
        com.google.android.gms.common.internal.zzx.zza(bool1, "Cannot await if then() has been called.");
      }
      try
      {
        zzpJ.await();
        com.google.android.gms.common.internal.zzx.zza(isReady(), "Result is not ready.");
        return get();
        bool1 = false;
        continue;
        bool1 = false;
        break label28;
        label80:
        bool1 = false;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          zzx(Status.zzagD);
        }
      }
    }
  }
  
  public final R await(long paramLong, TimeUnit paramTimeUnit)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramLong <= 0L) || (Looper.myLooper() != Looper.getMainLooper())) {
      bool1 = true;
    }
    for (;;)
    {
      com.google.android.gms.common.internal.zzx.zza(bool1, "await must not be called on the UI thread when time is greater than zero.");
      if (!zzagN)
      {
        bool1 = true;
        label38:
        com.google.android.gms.common.internal.zzx.zza(bool1, "Result has already been consumed.");
        if (zzagS != null) {
          break label108;
        }
        bool1 = bool2;
        com.google.android.gms.common.internal.zzx.zza(bool1, "Cannot await if then() has been called.");
      }
      try
      {
        if (!zzpJ.await(paramLong, paramTimeUnit)) {
          zzx(Status.zzagF);
        }
        com.google.android.gms.common.internal.zzx.zza(isReady(), "Result is not ready.");
        return get();
        bool1 = false;
        continue;
        bool1 = false;
        break label38;
        label108:
        bool1 = false;
      }
      catch (InterruptedException paramTimeUnit)
      {
        for (;;)
        {
          zzx(Status.zzagD);
        }
      }
    }
  }
  
  public void cancel()
  {
    synchronized (zzagI)
    {
      if ((zzL) || (zzagN)) {
        return;
      }
      zzq localzzq = zzagQ;
      if (localzzq == null) {}
    }
    try
    {
      zzagQ.cancel();
      zzc(zzagy);
      zzagM = null;
      zzL = true;
      zzb(zzc(Status.zzagG));
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
    catch (RemoteException localRemoteException)
    {
      for (;;) {}
    }
  }
  
  public boolean isCanceled()
  {
    synchronized (zzagI)
    {
      boolean bool = zzL;
      return bool;
    }
  }
  
  public final boolean isReady()
  {
    return zzpJ.getCount() == 0L;
  }
  
  public final void setResultCallback(ResultCallback<? super R> paramResultCallback)
  {
    boolean bool2 = true;
    boolean bool1;
    if (!zzagN)
    {
      bool1 = true;
      com.google.android.gms.common.internal.zzx.zza(bool1, "Result has already been consumed.");
    }
    for (;;)
    {
      synchronized (zzagI)
      {
        if (zzagS != null) {
          break label129;
        }
        bool1 = bool2;
        com.google.android.gms.common.internal.zzx.zza(bool1, "Cannot set callbacks if then() has been called.");
        if (isCanceled()) {
          return;
        }
        if ((zzagP) && (((GoogleApiClient)zzagK.get() == null) || (!(paramResultCallback instanceof zzx))))
        {
          cancel();
          return;
        }
      }
      if (isReady()) {
        zzagJ.zza(paramResultCallback, get());
      }
      for (;;)
      {
        return;
        zzagM = paramResultCallback;
      }
      bool1 = false;
      break;
      label129:
      bool1 = false;
    }
  }
  
  public final void setResultCallback(ResultCallback<? super R> paramResultCallback, long paramLong, TimeUnit paramTimeUnit)
  {
    boolean bool2 = true;
    boolean bool1;
    if (!zzagN)
    {
      bool1 = true;
      com.google.android.gms.common.internal.zzx.zza(bool1, "Result has already been consumed.");
    }
    for (;;)
    {
      synchronized (zzagI)
      {
        if (zzagS != null) {
          break label150;
        }
        bool1 = bool2;
        com.google.android.gms.common.internal.zzx.zza(bool1, "Cannot set callbacks if then() has been called.");
        if (isCanceled()) {
          return;
        }
        if ((zzagP) && (((GoogleApiClient)zzagK.get() == null) || (!(paramResultCallback instanceof zzx))))
        {
          cancel();
          return;
        }
      }
      if (isReady()) {
        zzagJ.zza(paramResultCallback, get());
      }
      for (;;)
      {
        return;
        zzagM = paramResultCallback;
        zzagJ.zza(this, paramTimeUnit.toMillis(paramLong));
      }
      bool1 = false;
      break;
      label150:
      bool1 = false;
    }
  }
  
  public <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> paramResultTransform)
  {
    boolean bool2 = true;
    boolean bool1;
    if (!zzagN)
    {
      bool1 = true;
      com.google.android.gms.common.internal.zzx.zza(bool1, "Result has already been consumed.");
    }
    for (;;)
    {
      synchronized (zzagI)
      {
        if (zzagS != null) {
          break label131;
        }
        bool1 = true;
        com.google.android.gms.common.internal.zzx.zza(bool1, "Cannot call then() twice.");
        if (zzagM != null) {
          break label136;
        }
        bool1 = bool2;
        com.google.android.gms.common.internal.zzx.zza(bool1, "Cannot call then() if callbacks are set.");
        zzagS = new zzx(zzagK);
        paramResultTransform = zzagS.then(paramResultTransform);
        if (isReady())
        {
          zzagJ.zza(zzagS, get());
          return paramResultTransform;
        }
        zzagM = zzagS;
      }
      bool1 = false;
      break;
      label131:
      bool1 = false;
      continue;
      label136:
      bool1 = false;
    }
  }
  
  public final void zza(PendingResult.zza paramzza)
  {
    boolean bool2 = true;
    if (!zzagN)
    {
      bool1 = true;
      com.google.android.gms.common.internal.zzx.zza(bool1, "Result has already been consumed.");
      if (paramzza == null) {
        break label88;
      }
    }
    label88:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      com.google.android.gms.common.internal.zzx.zzb(bool1, "Callback cannot be null.");
      synchronized (zzagI)
      {
        if (isReady())
        {
          paramzza.zzu(zzagy.getStatus());
          return;
        }
        zzagL.add(paramzza);
      }
      bool1 = false;
      break;
    }
  }
  
  public final void zza(R paramR)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (zzagI)
      {
        if ((zzagO) || (zzL))
        {
          zzc(paramR);
          return;
        }
        if (!isReady())
        {
          bool1 = true;
          com.google.android.gms.common.internal.zzx.zza(bool1, "Results have already been set");
          if (zzagN) {
            break label84;
          }
          bool1 = bool2;
          com.google.android.gms.common.internal.zzx.zza(bool1, "Result has already been consumed");
          zzb(paramR);
          return;
        }
      }
      boolean bool1 = false;
      continue;
      label84:
      bool1 = false;
    }
  }
  
  protected final void zza(zzq paramzzq)
  {
    synchronized (zzagI)
    {
      zzagQ = paramzzq;
      return;
    }
  }
  
  protected abstract R zzc(Status paramStatus);
  
  public Integer zzpa()
  {
    return zzagR;
  }
  
  protected void zzpf() {}
  
  public void zzpg()
  {
    for (;;)
    {
      synchronized (zzagI)
      {
        if ((GoogleApiClient)zzagK.get() == null)
        {
          cancel();
          return;
        }
        if ((zzagM == null) || ((zzagM instanceof zzx)))
        {
          zzagP = true;
          return;
        }
      }
      cancel();
    }
  }
  
  public final void zzx(Status paramStatus)
  {
    synchronized (zzagI)
    {
      if (!isReady())
      {
        zza(zzc(paramStatus));
        zzagO = true;
      }
      return;
    }
  }
  
  public static class zza<R extends Result>
    extends Handler
  {
    public zza()
    {
      this(Looper.getMainLooper());
    }
    
    public zza(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      switch (what)
      {
      default: 
        Log.wtf("BasePendingResult", "Don't know how to handle message: " + what, new Exception());
        return;
      case 1: 
        paramMessage = (Pair)obj;
        zzb((ResultCallback)first, (Result)second);
        return;
      }
      ((zzb)obj).zzx(Status.zzagF);
    }
    
    public void zza(ResultCallback<? super R> paramResultCallback, R paramR)
    {
      sendMessage(obtainMessage(1, new Pair(paramResultCallback, paramR)));
    }
    
    public void zza(zzb<R> paramzzb, long paramLong)
    {
      sendMessageDelayed(obtainMessage(2, paramzzb), paramLong);
    }
    
    protected void zzb(ResultCallback<? super R> paramResultCallback, R paramR)
    {
      try
      {
        paramResultCallback.onResult(paramR);
        return;
      }
      catch (RuntimeException paramResultCallback)
      {
        zzb.zzc(paramR);
        throw paramResultCallback;
      }
    }
    
    public void zzph()
    {
      removeMessages(2);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.internal.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */