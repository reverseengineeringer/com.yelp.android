package com.google.android.gms.common.api.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutorService;

public class zzx<R extends Result>
  extends TransformedResult<R>
  implements ResultCallback<R>
{
  private final Object zzagI = new Object();
  private final WeakReference<GoogleApiClient> zzagK;
  private ResultTransform<? super R, ? extends Result> zzaiN = null;
  private zzx<? extends Result> zzaiO = null;
  private ResultCallbacks<? super R> zzaiP = null;
  private PendingResult<R> zzaiQ = null;
  private Status zzaiR = null;
  private final zzx<R>.zza zzaiS;
  
  public zzx(WeakReference<GoogleApiClient> paramWeakReference)
  {
    com.google.android.gms.common.internal.zzx.zzb(paramWeakReference, "GoogleApiClient reference must not be null");
    zzagK = paramWeakReference;
    paramWeakReference = (GoogleApiClient)zzagK.get();
    if (paramWeakReference != null) {}
    for (paramWeakReference = paramWeakReference.getLooper();; paramWeakReference = Looper.getMainLooper())
    {
      zzaiS = new zza(paramWeakReference);
      return;
    }
  }
  
  private void zzc(Result paramResult)
  {
    if ((paramResult instanceof Releasable)) {}
    try
    {
      ((Releasable)paramResult).release();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.w("TransformedResultImpl", "Unable to release " + paramResult, localRuntimeException);
    }
  }
  
  private void zzpT()
  {
    if ((zzaiN == null) && (zzaiP == null)) {}
    do
    {
      return;
      GoogleApiClient localGoogleApiClient = (GoogleApiClient)zzagK.get();
      if ((zzaiN != null) && (localGoogleApiClient != null)) {
        localGoogleApiClient.zza(this);
      }
      if (zzaiR != null)
      {
        zzz(zzaiR);
        return;
      }
    } while (zzaiQ == null);
    zzaiQ.setResultCallback(this);
  }
  
  private boolean zzpV()
  {
    GoogleApiClient localGoogleApiClient = (GoogleApiClient)zzagK.get();
    return (zzaiP != null) && (localGoogleApiClient != null);
  }
  
  private void zzy(Status paramStatus)
  {
    synchronized (zzagI)
    {
      zzaiR = paramStatus;
      zzz(zzaiR);
      return;
    }
  }
  
  private void zzz(Status paramStatus)
  {
    synchronized (zzagI)
    {
      if (zzaiN != null)
      {
        paramStatus = zzaiN.onFailure(paramStatus);
        com.google.android.gms.common.internal.zzx.zzb(paramStatus, "onFailure must not return null");
        zzaiO.zzy(paramStatus);
      }
      while (!zzpV()) {
        return;
      }
      zzaiP.onFailure(paramStatus);
    }
  }
  
  public void andFinally(ResultCallbacks<? super R> paramResultCallbacks)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (zzagI)
      {
        if (zzaiP == null)
        {
          bool1 = true;
          com.google.android.gms.common.internal.zzx.zza(bool1, "Cannot call andFinally() twice.");
          if (zzaiN != null) {
            break label65;
          }
          bool1 = bool2;
          com.google.android.gms.common.internal.zzx.zza(bool1, "Cannot call then() and andFinally() on the same TransformedResult.");
          zzaiP = paramResultCallbacks;
          zzpT();
          return;
        }
      }
      boolean bool1 = false;
      continue;
      label65:
      bool1 = false;
    }
  }
  
  public void onResult(final R paramR)
  {
    for (;;)
    {
      synchronized (zzagI)
      {
        if (paramR.getStatus().isSuccess())
        {
          if (zzaiN != null)
          {
            zzs.zzpN().submit(new Runnable()
            {
              public void run()
              {
                try
                {
                  Object localObject1 = zzx.zzc(zzx.this).onSuccess(paramR);
                  zzx.zzd(zzx.this).sendMessage(zzx.zzd(zzx.this).obtainMessage(0, localObject1));
                  zzx.zza(zzx.this, paramR);
                  localObject1 = (GoogleApiClient)zzx.zze(zzx.this).get();
                  if (localObject1 != null) {
                    ((GoogleApiClient)localObject1).zzb(zzx.this);
                  }
                  return;
                }
                catch (RuntimeException localRuntimeException)
                {
                  zzx.zzd(zzx.this).sendMessage(zzx.zzd(zzx.this).obtainMessage(1, localRuntimeException));
                  GoogleApiClient localGoogleApiClient1;
                  return;
                }
                finally
                {
                  zzx.zza(zzx.this, paramR);
                  GoogleApiClient localGoogleApiClient2 = (GoogleApiClient)zzx.zze(zzx.this).get();
                  if (localGoogleApiClient2 != null) {
                    localGoogleApiClient2.zzb(zzx.this);
                  }
                }
              }
            });
            return;
          }
          if (!zzpV()) {
            continue;
          }
          zzaiP.onSuccess(paramR);
        }
      }
      zzy(paramR.getStatus());
      zzc(paramR);
    }
  }
  
  public <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> paramResultTransform)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (zzagI)
      {
        if (zzaiN == null)
        {
          bool1 = true;
          com.google.android.gms.common.internal.zzx.zza(bool1, "Cannot call then() twice.");
          if (zzaiP != null) {
            break label83;
          }
          bool1 = bool2;
          com.google.android.gms.common.internal.zzx.zza(bool1, "Cannot call then() and andFinally() on the same TransformedResult.");
          zzaiN = paramResultTransform;
          paramResultTransform = new zzx(zzagK);
          zzaiO = paramResultTransform;
          zzpT();
          return paramResultTransform;
        }
      }
      boolean bool1 = false;
      continue;
      label83:
      bool1 = false;
    }
  }
  
  public void zza(PendingResult<?> paramPendingResult)
  {
    synchronized (zzagI)
    {
      zzaiQ = paramPendingResult;
      zzpT();
      return;
    }
  }
  
  void zzpU()
  {
    synchronized (zzagI)
    {
      zzaiP = null;
      return;
    }
  }
  
  private final class zza
    extends Handler
  {
    public zza(Looper paramLooper)
    {
      super();
    }
    
    public void handleMessage(Message paramMessage)
    {
      switch (what)
      {
      default: 
        Log.e("TransformedResultImpl", "TransformationResultHandler received unknown message type: " + what);
        return;
      case 0: 
        PendingResult localPendingResult1 = (PendingResult)obj;
        paramMessage = zzx.zzf(zzx.this);
        if (localPendingResult1 == null) {}
        for (;;)
        {
          try
          {
            zzx.zza(zzx.zzg(zzx.this), new Status(13, "Transform returned null"));
            return;
          }
          finally {}
          if ((localPendingResult2 instanceof zzt)) {
            zzx.zza(zzx.zzg(zzx.this), ((zzt)localPendingResult2).getStatus());
          } else {
            zzx.zzg(zzx.this).zza(localPendingResult2);
          }
        }
      }
      paramMessage = (RuntimeException)obj;
      Log.e("TransformedResultImpl", "Runtime exception on the transformation worker thread: " + paramMessage.getMessage());
      throw paramMessage;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.internal.zzx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */