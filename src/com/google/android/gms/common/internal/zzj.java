package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api.zzb;
import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.GoogleApiClient.zza;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.zzc;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class zzj<T extends IInterface>
  implements Api.zzb, zzk.zza
{
  public static final String[] zzalJ = { "service_esmobile", "service_googleme" };
  private final Context mContext;
  final Handler mHandler;
  private final Account zzTI;
  private final Set<Scope> zzXf;
  private final Looper zzagr;
  private final zzc zzags;
  private final zzf zzahz;
  private GoogleApiClient.zza zzalA = new zzf();
  private T zzalB;
  private final ArrayList<zzj<T>.zzc<?>> zzalC = new ArrayList();
  private zzj<T>.zze zzalD;
  private int zzalE = 1;
  private final GoogleApiClient.ConnectionCallbacks zzalF;
  private final GoogleApiClient.OnConnectionFailedListener zzalG;
  private final int zzalH;
  protected AtomicInteger zzalI = new AtomicInteger(0);
  private int zzals;
  private long zzalt;
  private long zzalu;
  private int zzalv;
  private long zzalw;
  private final zzl zzalx;
  private final Object zzaly = new Object();
  private zzs zzalz;
  private final Object zzpV = new Object();
  
  protected zzj(Context paramContext, Looper paramLooper, int paramInt, zzf paramzzf, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    this(paramContext, paramLooper, zzl.zzau(paramContext), zzc.zzoK(), paramInt, paramzzf, (GoogleApiClient.ConnectionCallbacks)zzx.zzz(paramConnectionCallbacks), (GoogleApiClient.OnConnectionFailedListener)zzx.zzz(paramOnConnectionFailedListener));
  }
  
  protected zzj(Context paramContext, Looper paramLooper, zzl paramzzl, zzc paramzzc, int paramInt, zzf paramzzf, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    mContext = ((Context)zzx.zzb(paramContext, "Context must not be null"));
    zzagr = ((Looper)zzx.zzb(paramLooper, "Looper must not be null"));
    zzalx = ((zzl)zzx.zzb(paramzzl, "Supervisor must not be null"));
    zzags = ((zzc)zzx.zzb(paramzzc, "API availability must not be null"));
    mHandler = new zzb(paramLooper);
    zzalH = paramInt;
    zzahz = ((zzf)zzx.zzz(paramzzf));
    zzTI = paramzzf.getAccount();
    zzXf = zza(paramzzf.zzqt());
    zzalF = paramConnectionCallbacks;
    zzalG = paramOnConnectionFailedListener;
  }
  
  private Set<Scope> zza(Set<Scope> paramSet)
  {
    Set localSet = zzb(paramSet);
    if (localSet == null) {
      return localSet;
    }
    Iterator localIterator = localSet.iterator();
    while (localIterator.hasNext()) {
      if (!paramSet.contains((Scope)localIterator.next())) {
        throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
      }
    }
    return localSet;
  }
  
  private boolean zza(int paramInt1, int paramInt2, T paramT)
  {
    synchronized (zzpV)
    {
      if (zzalE != paramInt1) {
        return false;
      }
      zzb(paramInt2, paramT);
      return true;
    }
  }
  
  private void zzb(int paramInt, T paramT)
  {
    boolean bool = true;
    int i;
    int j;
    if (paramInt == 3)
    {
      i = 1;
      if (paramT == null) {
        break label120;
      }
      j = 1;
      label17:
      if (i != j) {
        break label126;
      }
    }
    for (;;)
    {
      zzx.zzac(bool);
      for (;;)
      {
        synchronized (zzpV)
        {
          zzalE = paramInt;
          zzalB = paramT;
          zzc(paramInt, paramT);
          switch (paramInt)
          {
          case 2: 
            return;
            zzqE();
          }
        }
        zza(paramT);
        continue;
        zzqF();
      }
      i = 0;
      break;
      label120:
      j = 0;
      break label17;
      label126:
      bool = false;
    }
  }
  
  private void zzqE()
  {
    if (zzalD != null)
    {
      Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + zzgu());
      zzalx.zzb(zzgu(), zzalD, zzqD());
      zzalI.incrementAndGet();
    }
    zzalD = new zze(zzalI.get());
    if (!zzalx.zza(zzgu(), zzalD, zzqD()))
    {
      Log.e("GmsClient", "unable to connect to service: " + zzgu());
      zzm(8, zzalI.get());
    }
  }
  
  private void zzqF()
  {
    if (zzalD != null)
    {
      zzalx.zzb(zzgu(), zzalD, zzqD());
      zzalD = null;
    }
  }
  
  public void disconnect()
  {
    zzalI.incrementAndGet();
    synchronized (zzalC)
    {
      int j = zzalC.size();
      int i = 0;
      while (i < j)
      {
        ((zzc)zzalC.get(i)).zzqO();
        i += 1;
      }
      zzalC.clear();
    }
    synchronized (zzaly)
    {
      zzalz = null;
      zzb(1, null);
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
  }
  
  public void dump(String paramString, FileDescriptor arg2, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    for (;;)
    {
      synchronized (zzpV)
      {
        int i = zzalE;
        paramArrayOfString = zzalB;
        paramPrintWriter.append(paramString).append("mConnectState=");
        switch (i)
        {
        default: 
          paramPrintWriter.print("UNKNOWN");
          paramPrintWriter.append(" mService=");
          if (paramArrayOfString != null) {
            break label407;
          }
          paramPrintWriter.println("null");
          ??? = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US);
          if (zzalu > 0L) {
            paramPrintWriter.append(paramString).append("lastConnectedTime=").println(zzalu + " " + ???.format(new Date(zzalu)));
          }
          if (zzalt > 0L) {
            paramPrintWriter.append(paramString).append("lastSuspendedCause=");
          }
          switch (zzals)
          {
          default: 
            paramPrintWriter.append(String.valueOf(zzals));
            paramPrintWriter.append(" lastSuspendedTime=").println(zzalt + " " + ???.format(new Date(zzalt)));
            if (zzalw > 0L)
            {
              paramPrintWriter.append(paramString).append("lastFailedStatus=").append(CommonStatusCodes.getStatusCodeString(zzalv));
              paramPrintWriter.append(" lastFailedTime=").println(zzalw + " " + ???.format(new Date(zzalw)));
            }
            return;
          }
          break;
        }
      }
      paramPrintWriter.print("CONNECTING");
      continue;
      paramPrintWriter.print("CONNECTED");
      continue;
      paramPrintWriter.print("DISCONNECTING");
      continue;
      paramPrintWriter.print("DISCONNECTED");
      continue;
      label407:
      paramPrintWriter.append(zzgv()).append("@").println(Integer.toHexString(System.identityHashCode(paramArrayOfString.asBinder())));
      continue;
      paramPrintWriter.append("CAUSE_SERVICE_DISCONNECTED");
      continue;
      paramPrintWriter.append("CAUSE_NETWORK_LOST");
    }
  }
  
  public final Context getContext()
  {
    return mContext;
  }
  
  public final Looper getLooper()
  {
    return zzagr;
  }
  
  public boolean isConnected()
  {
    for (;;)
    {
      synchronized (zzpV)
      {
        if (zzalE == 3)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public boolean isConnecting()
  {
    for (;;)
    {
      synchronized (zzpV)
      {
        if (zzalE == 2)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  protected void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    zzalv = paramConnectionResult.getErrorCode();
    zzalw = System.currentTimeMillis();
  }
  
  protected void onConnectionSuspended(int paramInt)
  {
    zzals = paramInt;
    zzalt = System.currentTimeMillis();
  }
  
  protected abstract T zzW(IBinder paramIBinder);
  
  protected void zza(int paramInt1, IBinder paramIBinder, Bundle paramBundle, int paramInt2)
  {
    mHandler.sendMessage(mHandler.obtainMessage(1, paramInt2, -1, new zzg(paramInt1, paramIBinder, paramBundle)));
  }
  
  protected void zza(T paramT)
  {
    zzalu = System.currentTimeMillis();
  }
  
  public void zza(GoogleApiClient.zza paramzza)
  {
    zzalA = ((GoogleApiClient.zza)zzx.zzb(paramzza, "Connection progress callbacks cannot be null."));
    zzb(2, null);
  }
  
  public void zza(zzp arg1, Set<Scope> paramSet)
  {
    try
    {
      Object localObject = zzml();
      localObject = new GetServiceRequest(zzalH).zzcG(mContext.getPackageName()).zzj((Bundle)localObject);
      if (paramSet != null) {
        ((GetServiceRequest)localObject).zzd(paramSet);
      }
      if (zzmE()) {
        ((GetServiceRequest)localObject).zzc(zzqq()).zzb(???);
      }
      return;
    }
    catch (DeadObjectException ???)
    {
      synchronized (zzaly)
      {
        while (zzalz != null)
        {
          zzalz.zza(new zzd(this, zzalI.get()), (GetServiceRequest)localObject);
          return;
          if (zzqK())
          {
            ((GetServiceRequest)localObject).zzc(zzTI);
            continue;
            ??? = ???;
            Log.w("GmsClient", "service died");
            zzbS(1);
            return;
          }
        }
        Log.w("GmsClient", "mServiceBroker is null, client disconnected");
      }
    }
    catch (RemoteException ???)
    {
      Log.w("GmsClient", "Remote exception occurred", ???);
    }
  }
  
  protected Set<Scope> zzb(Set<Scope> paramSet)
  {
    return paramSet;
  }
  
  public void zzbS(int paramInt)
  {
    mHandler.sendMessage(mHandler.obtainMessage(4, zzalI.get(), paramInt));
  }
  
  void zzc(int paramInt, T paramT) {}
  
  protected abstract String zzgu();
  
  protected abstract String zzgv();
  
  protected void zzm(int paramInt1, int paramInt2)
  {
    mHandler.sendMessage(mHandler.obtainMessage(5, paramInt2, -1, new zzh(paramInt1)));
  }
  
  public boolean zzmE()
  {
    return false;
  }
  
  protected Bundle zzml()
  {
    return new Bundle();
  }
  
  public boolean zznb()
  {
    return false;
  }
  
  public Intent zznc()
  {
    throw new UnsupportedOperationException("Not a sign in API");
  }
  
  public IBinder zzoT()
  {
    synchronized (zzaly)
    {
      if (zzalz == null) {
        return null;
      }
      IBinder localIBinder = zzalz.asBinder();
      return localIBinder;
    }
  }
  
  public Bundle zzoi()
  {
    return null;
  }
  
  protected final String zzqD()
  {
    return zzahz.zzqw();
  }
  
  public void zzqG()
  {
    int i = zzags.isGooglePlayServicesAvailable(mContext);
    if (i != 0)
    {
      zzb(1, null);
      zzalA = new zzf();
      mHandler.sendMessage(mHandler.obtainMessage(3, zzalI.get(), i));
      return;
    }
    zza(new zzf());
  }
  
  protected final zzf zzqH()
  {
    return zzahz;
  }
  
  protected final void zzqI()
  {
    if (!isConnected()) {
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
  }
  
  public final T zzqJ()
    throws DeadObjectException
  {
    synchronized (zzpV)
    {
      if (zzalE == 4) {
        throw new DeadObjectException();
      }
    }
    zzqI();
    if (zzalB != null) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zza(bool, "Client is connected but service is null");
      IInterface localIInterface = zzalB;
      return localIInterface;
    }
  }
  
  public boolean zzqK()
  {
    return false;
  }
  
  public final Account zzqq()
  {
    if (zzTI != null) {
      return zzTI;
    }
    return new Account("<<default account>>", "com.google");
  }
  
  private abstract class zza
    extends zzj<T>.zzc<Boolean>
  {
    public final int statusCode;
    public final Bundle zzalK;
    
    protected zza(int paramInt, Bundle paramBundle)
    {
      super(Boolean.valueOf(true));
      statusCode = paramInt;
      zzalK = paramBundle;
    }
    
    protected void zzc(Boolean paramBoolean)
    {
      Object localObject = null;
      if (paramBoolean == null) {
        zzj.zza(zzj.this, 1, null);
      }
      do
      {
        return;
        switch (statusCode)
        {
        default: 
          zzj.zza(zzj.this, 1, null);
          paramBoolean = (Boolean)localObject;
          if (zzalK != null) {
            paramBoolean = (PendingIntent)zzalK.getParcelable("pendingIntent");
          }
          zzj(new ConnectionResult(statusCode, paramBoolean));
          return;
        }
      } while (zzqL());
      zzj.zza(zzj.this, 1, null);
      zzj(new ConnectionResult(8, null));
      return;
      zzj.zza(zzj.this, 1, null);
      throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
    }
    
    protected abstract void zzj(ConnectionResult paramConnectionResult);
    
    protected abstract boolean zzqL();
    
    protected void zzqM() {}
  }
  
  final class zzb
    extends Handler
  {
    public zzb(Looper paramLooper)
    {
      super();
    }
    
    private void zza(Message paramMessage)
    {
      paramMessage = (zzj.zzc)obj;
      paramMessage.zzqM();
      paramMessage.unregister();
    }
    
    private boolean zzb(Message paramMessage)
    {
      return (what == 2) || (what == 1) || (what == 5);
    }
    
    public void handleMessage(Message paramMessage)
    {
      if (zzalI.get() != arg1)
      {
        if (zzb(paramMessage)) {
          zza(paramMessage);
        }
        return;
      }
      if (((what == 1) || (what == 5)) && (!isConnecting()))
      {
        zza(paramMessage);
        return;
      }
      if (what == 3)
      {
        paramMessage = new ConnectionResult(arg2, null);
        zzj.zzb(zzj.this).zza(paramMessage);
        onConnectionFailed(paramMessage);
        return;
      }
      if (what == 4)
      {
        zzj.zza(zzj.this, 4, null);
        if (zzj.zzc(zzj.this) != null) {
          zzj.zzc(zzj.this).onConnectionSuspended(arg2);
        }
        onConnectionSuspended(arg2);
        zzj.zza(zzj.this, 4, 1, null);
        return;
      }
      if ((what == 2) && (!isConnected()))
      {
        zza(paramMessage);
        return;
      }
      if (zzb(paramMessage))
      {
        ((zzj.zzc)obj).zzqN();
        return;
      }
      Log.wtf("GmsClient", "Don't know how to handle message: " + what, new Exception());
    }
  }
  
  protected abstract class zzc<TListener>
  {
    private TListener mListener;
    private boolean zzalM;
    
    public zzc()
    {
      Object localObject;
      mListener = localObject;
      zzalM = false;
    }
    
    public void unregister()
    {
      zzqO();
      synchronized (zzj.zzd(zzj.this))
      {
        zzj.zzd(zzj.this).remove(this);
        return;
      }
    }
    
    protected abstract void zzqM();
    
    /* Error */
    public void zzqN()
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: getfield 24	com/google/android/gms/common/internal/zzj$zzc:mListener	Ljava/lang/Object;
      //   6: astore_1
      //   7: aload_0
      //   8: getfield 26	com/google/android/gms/common/internal/zzj$zzc:zzalM	Z
      //   11: ifeq +33 -> 44
      //   14: ldc 49
      //   16: new 51	java/lang/StringBuilder
      //   19: dup
      //   20: invokespecial 52	java/lang/StringBuilder:<init>	()V
      //   23: ldc 54
      //   25: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   28: aload_0
      //   29: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
      //   32: ldc 63
      //   34: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   37: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   40: invokestatic 73	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
      //   43: pop
      //   44: aload_0
      //   45: monitorexit
      //   46: aload_1
      //   47: ifnull +34 -> 81
      //   50: aload_0
      //   51: aload_1
      //   52: invokevirtual 77	com/google/android/gms/common/internal/zzj$zzc:zzw	(Ljava/lang/Object;)V
      //   55: aload_0
      //   56: monitorenter
      //   57: aload_0
      //   58: iconst_1
      //   59: putfield 26	com/google/android/gms/common/internal/zzj$zzc:zzalM	Z
      //   62: aload_0
      //   63: monitorexit
      //   64: aload_0
      //   65: invokevirtual 79	com/google/android/gms/common/internal/zzj$zzc:unregister	()V
      //   68: return
      //   69: astore_1
      //   70: aload_0
      //   71: monitorexit
      //   72: aload_1
      //   73: athrow
      //   74: astore_1
      //   75: aload_0
      //   76: invokevirtual 81	com/google/android/gms/common/internal/zzj$zzc:zzqM	()V
      //   79: aload_1
      //   80: athrow
      //   81: aload_0
      //   82: invokevirtual 81	com/google/android/gms/common/internal/zzj$zzc:zzqM	()V
      //   85: goto -30 -> 55
      //   88: astore_1
      //   89: aload_0
      //   90: monitorexit
      //   91: aload_1
      //   92: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	93	0	this	zzc
      //   6	46	1	localObject1	Object
      //   69	4	1	localObject2	Object
      //   74	6	1	localRuntimeException	RuntimeException
      //   88	4	1	localObject3	Object
      // Exception table:
      //   from	to	target	type
      //   2	44	69	finally
      //   44	46	69	finally
      //   70	72	69	finally
      //   50	55	74	java/lang/RuntimeException
      //   57	64	88	finally
      //   89	91	88	finally
    }
    
    public void zzqO()
    {
      try
      {
        mListener = null;
        return;
      }
      finally {}
    }
    
    protected abstract void zzw(TListener paramTListener);
  }
  
  public static final class zzd
    extends zzr.zza
  {
    private zzj zzalN;
    private final int zzalO;
    
    public zzd(zzj paramzzj, int paramInt)
    {
      zzalN = paramzzj;
      zzalO = paramInt;
    }
    
    private void zzqP()
    {
      zzalN = null;
    }
    
    public void zza(int paramInt, IBinder paramIBinder, Bundle paramBundle)
    {
      zzx.zzb(zzalN, "onPostInitComplete can be called only once per call to getRemoteService");
      zzalN.zza(paramInt, paramIBinder, paramBundle, zzalO);
      zzqP();
    }
    
    public void zzb(int paramInt, Bundle paramBundle)
    {
      Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }
  }
  
  public final class zze
    implements ServiceConnection
  {
    private final int zzalO;
    
    public zze(int paramInt)
    {
      zzalO = paramInt;
    }
    
    public void onServiceConnected(ComponentName arg1, IBinder paramIBinder)
    {
      zzx.zzb(paramIBinder, "Expecting a valid IBinder");
      synchronized (zzj.zza(zzj.this))
      {
        zzj.zza(zzj.this, zzs.zza.zzaS(paramIBinder));
        zzm(0, zzalO);
        return;
      }
    }
    
    public void onServiceDisconnected(ComponentName arg1)
    {
      synchronized (zzj.zza(zzj.this))
      {
        zzj.zza(zzj.this, null);
        mHandler.sendMessage(mHandler.obtainMessage(4, zzalO, 1));
        return;
      }
    }
  }
  
  protected class zzf
    implements GoogleApiClient.zza
  {
    public zzf() {}
    
    public void zza(ConnectionResult paramConnectionResult)
    {
      if (paramConnectionResult.isSuccess()) {
        zza(null, zzj.zze(zzj.this));
      }
      while (zzj.zzf(zzj.this) == null) {
        return;
      }
      zzj.zzf(zzj.this).onConnectionFailed(paramConnectionResult);
    }
  }
  
  protected final class zzg
    extends zzj<T>.zza
  {
    public final IBinder zzalP;
    
    public zzg(int paramInt, IBinder paramIBinder, Bundle paramBundle)
    {
      super(paramInt, paramBundle);
      zzalP = paramIBinder;
    }
    
    protected void zzj(ConnectionResult paramConnectionResult)
    {
      if (zzj.zzf(zzj.this) != null) {
        zzj.zzf(zzj.this).onConnectionFailed(paramConnectionResult);
      }
      onConnectionFailed(paramConnectionResult);
    }
    
    protected boolean zzqL()
    {
      do
      {
        try
        {
          String str = zzalP.getInterfaceDescriptor();
          if (!zzgv().equals(str))
          {
            Log.e("GmsClient", "service descriptor mismatch: " + zzgv() + " vs. " + str);
            return false;
          }
        }
        catch (RemoteException localRemoteException)
        {
          Log.w("GmsClient", "service probably died");
          return false;
        }
        localObject = zzW(zzalP);
      } while ((localObject == null) || (!zzj.zza(zzj.this, 2, 3, (IInterface)localObject)));
      Object localObject = zzoi();
      if (zzj.zzc(zzj.this) != null) {
        zzj.zzc(zzj.this).onConnected((Bundle)localObject);
      }
      return true;
    }
  }
  
  protected final class zzh
    extends zzj<T>.zza
  {
    public zzh(int paramInt)
    {
      super(paramInt, null);
    }
    
    protected void zzj(ConnectionResult paramConnectionResult)
    {
      zzj.zzb(zzj.this).zza(paramConnectionResult);
      onConnectionFailed(paramConnectionResult);
    }
    
    protected boolean zzqL()
    {
      zzj.zzb(zzj.this).zza(ConnectionResult.zzafB);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */