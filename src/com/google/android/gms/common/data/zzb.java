package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.zzx;
import java.util.Iterator;
import java.util.NoSuchElementException;

public class zzb<T>
  implements Iterator<T>
{
  protected final DataBuffer<T> zzajb;
  protected int zzajc;
  
  public zzb(DataBuffer<T> paramDataBuffer)
  {
    zzajb = ((DataBuffer)zzx.zzz(paramDataBuffer));
    zzajc = -1;
  }
  
  public boolean hasNext()
  {
    return zzajc < zzajb.getCount() - 1;
  }
  
  public T next()
  {
    if (!hasNext()) {
      throw new NoSuchElementException("Cannot advance the iterator beyond " + zzajc);
    }
    DataBuffer localDataBuffer = zzajb;
    int i = zzajc + 1;
    zzajc = i;
    return (T)localDataBuffer.get(i);
  }
  
  public void remove()
  {
    throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */