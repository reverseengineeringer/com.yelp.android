package com.google.android.gms.common.internal;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.stats.zzb;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class zzm$zzb
{
  private int mState;
  private IBinder zzakD;
  private ComponentName zzamc;
  private final zza zzamd;
  private final Set<ServiceConnection> zzame;
  private boolean zzamf;
  private final zzm.zza zzamg;
  
  public zzm$zzb(zzm paramzzm, zzm.zza paramzza)
  {
    zzamg = paramzza;
    zzamd = new zza();
    zzame = new HashSet();
    mState = 2;
  }
  
  public IBinder getBinder()
  {
    return zzakD;
  }
  
  public ComponentName getComponentName()
  {
    return zzamc;
  }
  
  public int getState()
  {
    return mState;
  }
  
  public boolean isBound()
  {
    return zzamf;
  }
  
  public void zza(ServiceConnection paramServiceConnection, String paramString)
  {
    zzm.zzc(zzamh).zza(zzm.zzb(zzamh), paramServiceConnection, paramString, zzamg.zzqS());
    zzame.add(paramServiceConnection);
  }
  
  public boolean zza(ServiceConnection paramServiceConnection)
  {
    return zzame.contains(paramServiceConnection);
  }
  
  public void zzb(ServiceConnection paramServiceConnection, String paramString)
  {
    zzm.zzc(zzamh).zzb(zzm.zzb(zzamh), paramServiceConnection);
    zzame.remove(paramServiceConnection);
  }
  
  @TargetApi(14)
  public void zzcH(String paramString)
  {
    mState = 3;
    zzamf = zzm.zzc(zzamh).zza(zzm.zzb(zzamh), paramString, zzamg.zzqS(), zzamd, 129);
    if (!zzamf) {
      mState = 2;
    }
    try
    {
      zzm.zzc(zzamh).zza(zzm.zzb(zzamh), zzamd);
      return;
    }
    catch (IllegalArgumentException paramString) {}
  }
  
  public void zzcI(String paramString)
  {
    zzm.zzc(zzamh).zza(zzm.zzb(zzamh), zzamd);
    zzamf = false;
    mState = 2;
  }
  
  public boolean zzqT()
  {
    return zzame.isEmpty();
  }
  
  public class zza
    implements ServiceConnection
  {
    public zza() {}
    
    public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
    {
      synchronized (zzm.zza(zzamh))
      {
        zzm.zzb.zza(zzm.zzb.this, paramIBinder);
        zzm.zzb.zza(zzm.zzb.this, paramComponentName);
        Iterator localIterator = zzm.zzb.zzb(zzm.zzb.this).iterator();
        if (localIterator.hasNext()) {
          ((ServiceConnection)localIterator.next()).onServiceConnected(paramComponentName, paramIBinder);
        }
      }
      zzm.zzb.zza(zzm.zzb.this, 1);
    }
    
    public void onServiceDisconnected(ComponentName paramComponentName)
    {
      synchronized (zzm.zza(zzamh))
      {
        zzm.zzb.zza(zzm.zzb.this, null);
        zzm.zzb.zza(zzm.zzb.this, paramComponentName);
        Iterator localIterator = zzm.zzb.zzb(zzm.zzb.this).iterator();
        if (localIterator.hasNext()) {
          ((ServiceConnection)localIterator.next()).onServiceDisconnected(paramComponentName);
        }
      }
      zzm.zzb.zza(zzm.zzb.this, 2);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzm.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */