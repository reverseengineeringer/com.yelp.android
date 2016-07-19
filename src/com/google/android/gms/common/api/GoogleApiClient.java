package com.google.android.gms.common.api;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.l;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.internal.zza.zza;
import com.google.android.gms.common.api.internal.zzj;
import com.google.android.gms.common.api.internal.zzq;
import com.google.android.gms.common.api.internal.zzu;
import com.google.android.gms.common.api.internal.zzw;
import com.google.android.gms.common.internal.zzad;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzf.zza;
import com.google.android.gms.internal.ld;
import com.google.android.gms.internal.lf;
import com.google.android.gms.internal.lg;
import com.yelp.android.g.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;

public abstract class GoogleApiClient
{
  public static final int SIGN_IN_MODE_OPTIONAL = 2;
  public static final int SIGN_IN_MODE_REQUIRED = 1;
  private static final Set<GoogleApiClient> zzagg = Collections.newSetFromMap(new WeakHashMap());
  
  public static void dumpAll(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    synchronized (zzagg)
    {
      String str = paramString + "  ";
      Iterator localIterator = zzagg.iterator();
      int i = 0;
      while (localIterator.hasNext())
      {
        GoogleApiClient localGoogleApiClient = (GoogleApiClient)localIterator.next();
        paramPrintWriter.append(paramString).append("GoogleApiClient#").println(i);
        localGoogleApiClient.dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        i += 1;
      }
      return;
    }
  }
  
  public static Set<GoogleApiClient> zzoV()
  {
    return zzagg;
  }
  
  public abstract ConnectionResult blockingConnect();
  
  public abstract ConnectionResult blockingConnect(long paramLong, TimeUnit paramTimeUnit);
  
  public abstract PendingResult<Status> clearDefaultAccountAndReconnect();
  
  public abstract void connect();
  
  public void connect(int paramInt)
  {
    throw new UnsupportedOperationException();
  }
  
  public abstract void disconnect();
  
  public abstract void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString);
  
  public abstract ConnectionResult getConnectionResult(Api<?> paramApi);
  
  public Context getContext()
  {
    throw new UnsupportedOperationException();
  }
  
  public Looper getLooper()
  {
    throw new UnsupportedOperationException();
  }
  
  public abstract boolean hasConnectedApi(Api<?> paramApi);
  
  public abstract boolean isConnected();
  
  public abstract boolean isConnecting();
  
  public abstract boolean isConnectionCallbacksRegistered(ConnectionCallbacks paramConnectionCallbacks);
  
  public abstract boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener paramOnConnectionFailedListener);
  
  public abstract void reconnect();
  
  public abstract void registerConnectionCallbacks(ConnectionCallbacks paramConnectionCallbacks);
  
  public abstract void registerConnectionFailedListener(OnConnectionFailedListener paramOnConnectionFailedListener);
  
  public abstract void stopAutoManage(FragmentActivity paramFragmentActivity);
  
  public abstract void unregisterConnectionCallbacks(ConnectionCallbacks paramConnectionCallbacks);
  
  public abstract void unregisterConnectionFailedListener(OnConnectionFailedListener paramOnConnectionFailedListener);
  
  public <C extends Api.zzb> C zza(Api.zzc<C> paramzzc)
  {
    throw new UnsupportedOperationException();
  }
  
  public <A extends Api.zzb, R extends Result, T extends zza.zza<R, A>> T zza(T paramT)
  {
    throw new UnsupportedOperationException();
  }
  
  public void zza(com.google.android.gms.common.api.internal.zzx paramzzx)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean zza(Api<?> paramApi)
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean zza(zzu paramzzu)
  {
    throw new UnsupportedOperationException();
  }
  
  public <A extends Api.zzb, T extends zza.zza<? extends Result, A>> T zzb(T paramT)
  {
    throw new UnsupportedOperationException();
  }
  
  public void zzb(com.google.android.gms.common.api.internal.zzx paramzzx)
  {
    throw new UnsupportedOperationException();
  }
  
  public void zzoW()
  {
    throw new UnsupportedOperationException();
  }
  
  public <L> zzq<L> zzr(L paramL)
  {
    throw new UnsupportedOperationException();
  }
  
  public static final class Builder
  {
    private final Context mContext;
    private Account zzTI;
    private String zzUW;
    private final Set<Scope> zzagh = new HashSet();
    private final Set<Scope> zzagi = new HashSet();
    private int zzagj;
    private View zzagk;
    private String zzagl;
    private final Map<Api<?>, zzf.zza> zzagm = new a();
    private final Map<Api<?>, Api.ApiOptions> zzagn = new a();
    private FragmentActivity zzago;
    private int zzagp = -1;
    private GoogleApiClient.OnConnectionFailedListener zzagq;
    private Looper zzagr;
    private com.google.android.gms.common.zzc zzags = com.google.android.gms.common.zzc.zzoK();
    private Api.zza<? extends lf, lg> zzagt = ld.c;
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> zzagu = new ArrayList();
    private final ArrayList<GoogleApiClient.OnConnectionFailedListener> zzagv = new ArrayList();
    
    public Builder(Context paramContext)
    {
      mContext = paramContext;
      zzagr = paramContext.getMainLooper();
      zzUW = paramContext.getPackageName();
      zzagl = paramContext.getClass().getName();
    }
    
    public Builder(Context paramContext, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
    {
      this(paramContext);
      com.google.android.gms.common.internal.zzx.zzb(paramConnectionCallbacks, "Must provide a connected listener");
      zzagu.add(paramConnectionCallbacks);
      com.google.android.gms.common.internal.zzx.zzb(paramOnConnectionFailedListener, "Must provide a connection failed listener");
      zzagv.add(paramOnConnectionFailedListener);
    }
    
    private static <C extends Api.zzb, O> C zza(Api.zza<C, O> paramzza, Object paramObject, Context paramContext, Looper paramLooper, zzf paramzzf, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
    {
      return paramzza.zza(paramContext, paramLooper, paramzzf, paramObject, paramConnectionCallbacks, paramOnConnectionFailedListener);
    }
    
    private static <C extends Api.zzd, O> zzad zza(Api.zze<C, O> paramzze, Object paramObject, Context paramContext, Looper paramLooper, zzf paramzzf, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
    {
      return new zzad(paramContext, paramLooper, paramzze.zzoU(), paramConnectionCallbacks, paramOnConnectionFailedListener, paramzzf, paramzze.zzq(paramObject));
    }
    
    private <O extends Api.ApiOptions> void zza(Api<O> paramApi, O paramO, int paramInt, Scope... paramVarArgs)
    {
      boolean bool = true;
      int i = 0;
      if (paramInt == 1) {}
      for (;;)
      {
        paramO = new HashSet(paramApi.zzoP().zzo(paramO));
        int j = paramVarArgs.length;
        paramInt = i;
        while (paramInt < j)
        {
          paramO.add(paramVarArgs[paramInt]);
          paramInt += 1;
        }
        if (paramInt != 2) {
          break;
        }
        bool = false;
      }
      throw new IllegalArgumentException("Invalid resolution mode: '" + paramInt + "', use a constant from GoogleApiClient.ResolutionMode");
      zzagm.put(paramApi, new zzf.zza(paramO, bool));
    }
    
    private void zza(zzw paramzzw, GoogleApiClient paramGoogleApiClient)
    {
      paramzzw.zza(zzagp, paramGoogleApiClient, zzagq);
    }
    
    private void zze(final GoogleApiClient paramGoogleApiClient)
    {
      zzw localzzw = zzw.zza(zzago);
      if (localzzw == null)
      {
        new Handler(mContext.getMainLooper()).post(new Runnable()
        {
          public void run()
          {
            if ((GoogleApiClient.Builder.zza(GoogleApiClient.Builder.this).isFinishing()) || (GoogleApiClient.Builder.zza(GoogleApiClient.Builder.this).getSupportFragmentManager().g())) {
              return;
            }
            GoogleApiClient.Builder.zza(GoogleApiClient.Builder.this, zzw.zzb(GoogleApiClient.Builder.zza(GoogleApiClient.Builder.this)), paramGoogleApiClient);
          }
        });
        return;
      }
      zza(localzzw, paramGoogleApiClient);
    }
    
    private GoogleApiClient zzoZ()
    {
      zzf localzzf = zzoY();
      Object localObject2 = null;
      Map localMap = localzzf.zzqu();
      a locala1 = new a();
      a locala2 = new a();
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = zzagn.keySet().iterator();
      Object localObject1 = null;
      Api localApi;
      Object localObject3;
      int i;
      label130:
      com.google.android.gms.common.api.internal.zzc localzzc;
      Object localObject4;
      if (localIterator.hasNext())
      {
        localApi = (Api)localIterator.next();
        localObject3 = zzagn.get(localApi);
        i = 0;
        if (localMap.get(localApi) != null)
        {
          if (getzzalf) {
            i = 1;
          }
        }
        else
        {
          locala1.put(localApi, Integer.valueOf(i));
          localzzc = new com.google.android.gms.common.api.internal.zzc(localApi, i);
          localArrayList.add(localzzc);
          if (!localApi.zzoS()) {
            break label295;
          }
          localObject4 = localApi.zzoQ();
          if (((Api.zze)localObject4).getPriority() != 1) {
            break label530;
          }
          localObject1 = localApi;
        }
      }
      label216:
      label295:
      label344:
      label522:
      label527:
      label530:
      for (;;)
      {
        localObject3 = zza((Api.zze)localObject4, localObject3, mContext, zzagr, localzzf, localzzc, localzzc);
        locala2.put(localApi.zzoR(), localObject3);
        if (((Api.zzb)localObject3).zznb())
        {
          localObject3 = localApi;
          if (localObject2 == null) {
            break label344;
          }
          throw new IllegalStateException(localApi.getName() + " cannot be used with " + ((Api)localObject2).getName());
          i = 2;
          break label130;
          localObject4 = localApi.zzoP();
          if (((Api.zza)localObject4).getPriority() != 1) {
            break label527;
          }
          localObject1 = localApi;
        }
        for (;;)
        {
          localObject3 = zza((Api.zza)localObject4, localObject3, mContext, zzagr, localzzf, localzzc, localzzc);
          break label216;
          localObject3 = localObject2;
          localObject2 = localObject3;
          break;
          if (localObject2 != null)
          {
            if (localObject1 != null) {
              throw new IllegalStateException(((Api)localObject2).getName() + " cannot be used with " + ((Api)localObject1).getName());
            }
            if (zzTI != null) {
              break label522;
            }
          }
          for (boolean bool = true;; bool = false)
          {
            com.google.android.gms.common.internal.zzx.zza(bool, "Must not set an account in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead", new Object[] { ((Api)localObject2).getName() });
            com.google.android.gms.common.internal.zzx.zza(zzagh.equals(zzagi), "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead.", new Object[] { ((Api)localObject2).getName() });
            i = zzj.zza(locala2.values(), true);
            return new zzj(mContext, new ReentrantLock(), zzagr, localzzf, zzags, zzagt, locala1, zzagu, zzagv, locala2, zzagp, i, localArrayList);
          }
        }
      }
    }
    
    public Builder addApi(Api<? extends Api.ApiOptions.NotRequiredOptions> paramApi)
    {
      com.google.android.gms.common.internal.zzx.zzb(paramApi, "Api must not be null");
      zzagn.put(paramApi, null);
      paramApi = paramApi.zzoP().zzo(null);
      zzagi.addAll(paramApi);
      zzagh.addAll(paramApi);
      return this;
    }
    
    public <O extends Api.ApiOptions.HasOptions> Builder addApi(Api<O> paramApi, O paramO)
    {
      com.google.android.gms.common.internal.zzx.zzb(paramApi, "Api must not be null");
      com.google.android.gms.common.internal.zzx.zzb(paramO, "Null options are not permitted for this Api");
      zzagn.put(paramApi, paramO);
      paramApi = paramApi.zzoP().zzo(paramO);
      zzagi.addAll(paramApi);
      zzagh.addAll(paramApi);
      return this;
    }
    
    public <O extends Api.ApiOptions.HasOptions> Builder addApiIfAvailable(Api<O> paramApi, O paramO, Scope... paramVarArgs)
    {
      com.google.android.gms.common.internal.zzx.zzb(paramApi, "Api must not be null");
      com.google.android.gms.common.internal.zzx.zzb(paramO, "Null options are not permitted for this Api");
      zzagn.put(paramApi, paramO);
      zza(paramApi, paramO, 1, paramVarArgs);
      return this;
    }
    
    public Builder addApiIfAvailable(Api<? extends Api.ApiOptions.NotRequiredOptions> paramApi, Scope... paramVarArgs)
    {
      com.google.android.gms.common.internal.zzx.zzb(paramApi, "Api must not be null");
      zzagn.put(paramApi, null);
      zza(paramApi, null, 1, paramVarArgs);
      return this;
    }
    
    public Builder addConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
    {
      com.google.android.gms.common.internal.zzx.zzb(paramConnectionCallbacks, "Listener must not be null");
      zzagu.add(paramConnectionCallbacks);
      return this;
    }
    
    public Builder addOnConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
    {
      com.google.android.gms.common.internal.zzx.zzb(paramOnConnectionFailedListener, "Listener must not be null");
      zzagv.add(paramOnConnectionFailedListener);
      return this;
    }
    
    public Builder addScope(Scope paramScope)
    {
      com.google.android.gms.common.internal.zzx.zzb(paramScope, "Scope must not be null");
      zzagh.add(paramScope);
      return this;
    }
    
    public GoogleApiClient build()
    {
      boolean bool;
      if (!zzagn.isEmpty()) {
        bool = true;
      }
      for (;;)
      {
        com.google.android.gms.common.internal.zzx.zzb(bool, "must call addApi() to add at least one API");
        GoogleApiClient localGoogleApiClient = zzoZ();
        synchronized (GoogleApiClient.zzoX())
        {
          GoogleApiClient.zzoX().add(localGoogleApiClient);
          if (zzagp >= 0) {
            zze(localGoogleApiClient);
          }
          return localGoogleApiClient;
          bool = false;
        }
      }
    }
    
    public Builder enableAutoManage(FragmentActivity paramFragmentActivity, int paramInt, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
    {
      if (paramInt >= 0) {}
      for (boolean bool = true;; bool = false)
      {
        com.google.android.gms.common.internal.zzx.zzb(bool, "clientId must be non-negative");
        zzagp = paramInt;
        zzago = ((FragmentActivity)com.google.android.gms.common.internal.zzx.zzb(paramFragmentActivity, "Null activity is not permitted."));
        zzagq = paramOnConnectionFailedListener;
        return this;
      }
    }
    
    public Builder enableAutoManage(FragmentActivity paramFragmentActivity, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
    {
      return enableAutoManage(paramFragmentActivity, 0, paramOnConnectionFailedListener);
    }
    
    public Builder setAccountName(String paramString)
    {
      if (paramString == null) {}
      for (paramString = null;; paramString = new Account(paramString, "com.google"))
      {
        zzTI = paramString;
        return this;
      }
    }
    
    public Builder setGravityForPopups(int paramInt)
    {
      zzagj = paramInt;
      return this;
    }
    
    public Builder setHandler(Handler paramHandler)
    {
      com.google.android.gms.common.internal.zzx.zzb(paramHandler, "Handler must not be null");
      zzagr = paramHandler.getLooper();
      return this;
    }
    
    public Builder setViewForPopups(View paramView)
    {
      com.google.android.gms.common.internal.zzx.zzb(paramView, "View must not be null");
      zzagk = paramView;
      return this;
    }
    
    public Builder useDefaultAccount()
    {
      return setAccountName("<<default account>>");
    }
    
    public zzf zzoY()
    {
      lg locallg = lg.a;
      if (zzagn.containsKey(ld.g)) {
        locallg = (lg)zzagn.get(ld.g);
      }
      return new zzf(zzTI, zzagh, zzagm, zzagj, zzagk, zzUW, zzagl, locallg);
    }
  }
  
  public static abstract interface ConnectionCallbacks
  {
    public static final int CAUSE_NETWORK_LOST = 2;
    public static final int CAUSE_SERVICE_DISCONNECTED = 1;
    
    public abstract void onConnected(Bundle paramBundle);
    
    public abstract void onConnectionSuspended(int paramInt);
  }
  
  public static abstract interface OnConnectionFailedListener
  {
    public abstract void onConnectionFailed(ConnectionResult paramConnectionResult);
  }
  
  public static abstract interface zza
  {
    public abstract void zza(ConnectionResult paramConnectionResult);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.GoogleApiClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */