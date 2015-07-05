package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.IInterface;
import java.util.List;

public abstract interface j
  extends IInterface
{
  public abstract boolean b(j paramj);
  
  public abstract int getActiveLevelIndex();
  
  public abstract int getDefaultLevelIndex();
  
  public abstract List<IBinder> getLevels();
  
  public abstract int hashCodeRemote();
  
  public abstract boolean isUnderground();
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */