package com.google.android.gms.tagmanager;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public abstract interface ContainerHolder
  extends Releasable, Result
{
  public abstract Container getContainer();
  
  public abstract void refresh();
  
  public abstract void setContainerAvailableListener(ContainerHolder.ContainerAvailableListener paramContainerAvailableListener);
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ContainerHolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */