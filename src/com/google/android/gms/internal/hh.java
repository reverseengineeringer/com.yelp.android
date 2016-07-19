package com.google.android.gms.internal;

import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import java.util.ArrayList;
import java.util.List;

@fv
public class hh
{
  private final String[] a;
  private final double[] b;
  private final double[] c;
  private final int[] d;
  private int e;
  
  private hh(b paramb)
  {
    int i = b.a(paramb).size();
    a = ((String[])b.b(paramb).toArray(new String[i]));
    b = a(b.a(paramb));
    c = a(b.c(paramb));
    d = new int[i];
    e = 0;
  }
  
  private double[] a(List<Double> paramList)
  {
    double[] arrayOfDouble = new double[paramList.size()];
    int i = 0;
    while (i < arrayOfDouble.length)
    {
      arrayOfDouble[i] = ((Double)paramList.get(i)).doubleValue();
      i += 1;
    }
    return arrayOfDouble;
  }
  
  public List<a> a()
  {
    ArrayList localArrayList = new ArrayList(a.length);
    int i = 0;
    while (i < a.length)
    {
      localArrayList.add(new a(a[i], c[i], b[i], d[i] / e, d[i]));
      i += 1;
    }
    return localArrayList;
  }
  
  public void a(double paramDouble)
  {
    e += 1;
    int i = 0;
    for (;;)
    {
      if (i < c.length)
      {
        if ((c[i] <= paramDouble) && (paramDouble < b[i]))
        {
          int[] arrayOfInt = d;
          arrayOfInt[i] += 1;
        }
        if (paramDouble >= c[i]) {}
      }
      else
      {
        return;
      }
      i += 1;
    }
  }
  
  public static class a
  {
    public final String a;
    public final double b;
    public final double c;
    public final double d;
    public final int e;
    
    public a(String paramString, double paramDouble1, double paramDouble2, double paramDouble3, int paramInt)
    {
      a = paramString;
      c = paramDouble1;
      b = paramDouble2;
      d = paramDouble3;
      e = paramInt;
    }
    
    public boolean equals(Object paramObject)
    {
      if (!(paramObject instanceof a)) {}
      do
      {
        return false;
        paramObject = (a)paramObject;
      } while ((!zzw.equal(a, a)) || (b != b) || (c != c) || (e != e) || (Double.compare(d, d) != 0));
      return true;
    }
    
    public int hashCode()
    {
      return zzw.hashCode(new Object[] { a, Double.valueOf(b), Double.valueOf(c), Double.valueOf(d), Integer.valueOf(e) });
    }
    
    public String toString()
    {
      return zzw.zzy(this).zzg("name", a).zzg("minBound", Double.valueOf(c)).zzg("maxBound", Double.valueOf(b)).zzg("percent", Double.valueOf(d)).zzg("count", Integer.valueOf(e)).toString();
    }
  }
  
  public static class b
  {
    private final List<String> a = new ArrayList();
    private final List<Double> b = new ArrayList();
    private final List<Double> c = new ArrayList();
    
    public b a(String paramString, double paramDouble1, double paramDouble2)
    {
      int i = 0;
      for (;;)
      {
        double d1;
        double d2;
        if (i < a.size())
        {
          d1 = ((Double)c.get(i)).doubleValue();
          d2 = ((Double)b.get(i)).doubleValue();
          if (paramDouble1 >= d1) {
            break label107;
          }
        }
        label107:
        while ((d1 == paramDouble1) && (paramDouble2 < d2))
        {
          a.add(i, paramString);
          c.add(i, Double.valueOf(paramDouble1));
          b.add(i, Double.valueOf(paramDouble2));
          return this;
        }
        i += 1;
      }
    }
    
    public hh a()
    {
      return new hh(this, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */