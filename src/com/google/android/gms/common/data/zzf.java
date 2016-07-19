package com.google.android.gms.common.data;

import java.util.ArrayList;

public abstract class zzf<T>
  extends AbstractDataBuffer<T>
{
  private boolean zzajw = false;
  private ArrayList<Integer> zzajx;
  
  protected zzf(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  private void zzqh()
  {
    for (;;)
    {
      int i;
      String str2;
      try
      {
        if (zzajw) {
          break label193;
        }
        int j = zzahi.getCount();
        zzajx = new ArrayList();
        if (j <= 0) {
          break label188;
        }
        zzajx.add(Integer.valueOf(0));
        String str3 = zzqg();
        i = zzahi.zzbH(0);
        String str1 = zzahi.zzd(str3, 0, i);
        i = 1;
        if (i >= j) {
          break label188;
        }
        int k = zzahi.zzbH(i);
        str2 = zzahi.zzd(str3, i, k);
        if (str2 == null) {
          throw new NullPointerException("Missing value for markerColumn: " + str3 + ", at row: " + i + ", for window: " + k);
        }
      }
      finally {}
      if (!str2.equals(localObject1))
      {
        zzajx.add(Integer.valueOf(i));
        Object localObject2 = str2;
        break label196;
        label188:
        zzajw = true;
        label193:
        return;
      }
      label196:
      i += 1;
    }
  }
  
  public final T get(int paramInt)
  {
    zzqh();
    return (T)zzk(zzbK(paramInt), zzbL(paramInt));
  }
  
  public int getCount()
  {
    zzqh();
    return zzajx.size();
  }
  
  int zzbK(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= zzajx.size())) {
      throw new IllegalArgumentException("Position " + paramInt + " is out of bounds for this buffer");
    }
    return ((Integer)zzajx.get(paramInt)).intValue();
  }
  
  protected int zzbL(int paramInt)
  {
    int j;
    if ((paramInt < 0) || (paramInt == zzajx.size()))
    {
      j = 0;
      return j;
    }
    if (paramInt == zzajx.size() - 1) {}
    for (int i = zzahi.getCount() - ((Integer)zzajx.get(paramInt)).intValue();; i = ((Integer)zzajx.get(paramInt + 1)).intValue() - ((Integer)zzajx.get(paramInt)).intValue())
    {
      j = i;
      if (i != 1) {
        break;
      }
      paramInt = zzbK(paramInt);
      int k = zzahi.zzbH(paramInt);
      String str = zzqi();
      j = i;
      if (str == null) {
        break;
      }
      j = i;
      if (zzahi.zzd(str, paramInt, k) != null) {
        break;
      }
      return 0;
    }
  }
  
  protected abstract T zzk(int paramInt1, int paramInt2);
  
  protected abstract String zzqg();
  
  protected String zzqi()
  {
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.data.zzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */