package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;

public abstract class jl$d<TListener>
  extends jl<T>.b<TListener>
{
  private final DataHolder JG;
  
  public jl$d(TListener paramTListener, DataHolder paramDataHolder)
  {
    super(paramTListener, paramDataHolder);
    DataHolder localDataHolder;
    JG = localDataHolder;
  }
  
  protected abstract void b(TListener paramTListener, DataHolder paramDataHolder);
  
  protected final void g(TListener paramTListener)
  {
    b(paramTListener, JG);
  }
  
  protected void hx()
  {
    if (JG != null) {
      JG.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jl.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */