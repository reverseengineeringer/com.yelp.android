package com.google.android.gms.internal;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.appdatasearch.GetRecentContextCall.Response;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zza.zzb;

public abstract class it<T>
  extends is.a
{
  protected zza.zzb<T> a;
  
  public it(zza.zzb<T> paramzzb)
  {
    a = paramzzb;
  }
  
  public void a(GetRecentContextCall.Response paramResponse) {}
  
  public void a(Status paramStatus) {}
  
  public void a(Status paramStatus, ParcelFileDescriptor paramParcelFileDescriptor) {}
  
  public void a(Status paramStatus, boolean paramBoolean) {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.it
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */