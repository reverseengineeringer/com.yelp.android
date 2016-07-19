package com.google.android.gms.appdatasearch;

import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

public final class RegisterSectionInfo$a
{
  private final String a;
  private String b;
  private boolean c;
  private int d;
  private boolean e;
  private String f;
  private final List<Feature> g;
  private BitSet h;
  private String i;
  
  public RegisterSectionInfo$a(String paramString)
  {
    a = paramString;
    d = 1;
    g = new ArrayList();
  }
  
  public a a(int paramInt)
  {
    if (h == null) {
      h = new BitSet();
    }
    h.set(paramInt);
    return this;
  }
  
  public a a(String paramString)
  {
    b = paramString;
    return this;
  }
  
  public a a(boolean paramBoolean)
  {
    c = paramBoolean;
    return this;
  }
  
  public RegisterSectionInfo a()
  {
    int j = 0;
    Object localObject = null;
    if (h != null)
    {
      int[] arrayOfInt = new int[h.cardinality()];
      int k = h.nextSetBit(0);
      for (;;)
      {
        localObject = arrayOfInt;
        if (k < 0) {
          break;
        }
        arrayOfInt[j] = k;
        k = h.nextSetBit(k + 1);
        j += 1;
      }
    }
    return new RegisterSectionInfo(a, b, c, d, e, f, (Feature[])g.toArray(new Feature[g.size()]), (int[])localObject, i);
  }
  
  public a b(String paramString)
  {
    i = paramString;
    return this;
  }
  
  public a b(boolean paramBoolean)
  {
    e = paramBoolean;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.RegisterSectionInfo.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */