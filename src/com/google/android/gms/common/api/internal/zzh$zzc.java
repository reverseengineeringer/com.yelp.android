package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api.zzb;
import java.util.ArrayList;
import java.util.Iterator;

class zzh$zzc
  extends zzh.zzf
{
  private final ArrayList<Api.zzb> zzahH;
  
  public zzh$zzc(ArrayList<Api.zzb> paramArrayList)
  {
    super(paramArrayList, null);
    ArrayList localArrayList;
    zzahH = localArrayList;
  }
  
  public void zzpt()
  {
    zzdzzahC).zzagW.zzahU = zzh.zzg(zzahC);
    Iterator localIterator = zzahH.iterator();
    while (localIterator.hasNext()) {
      ((Api.zzb)localIterator.next()).zza(zzh.zzh(zzahC), zzdzzahC).zzagW.zzahU);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.internal.zzh.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */