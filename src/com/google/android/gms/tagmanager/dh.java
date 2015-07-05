package com.google.android.gms.tagmanager;

class dh
  extends Number
  implements Comparable<dh>
{
  private double atZ;
  private long aua;
  private boolean aub;
  
  private dh(double paramDouble)
  {
    atZ = paramDouble;
    aub = false;
  }
  
  private dh(long paramLong)
  {
    aua = paramLong;
    aub = true;
  }
  
  public static dh a(Double paramDouble)
  {
    return new dh(paramDouble.doubleValue());
  }
  
  public static dh cY(String paramString)
  {
    try
    {
      dh localdh1 = new dh(Long.parseLong(paramString));
      return localdh1;
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      try
      {
        dh localdh2 = new dh(Double.parseDouble(paramString));
        return localdh2;
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        throw new NumberFormatException(paramString + " is not a valid TypedNumber");
      }
    }
  }
  
  public static dh z(long paramLong)
  {
    return new dh(paramLong);
  }
  
  public int a(dh paramdh)
  {
    if ((qR()) && (paramdh.qR())) {
      return new Long(aua).compareTo(Long.valueOf(aua));
    }
    return Double.compare(doubleValue(), paramdh.doubleValue());
  }
  
  public byte byteValue()
  {
    return (byte)(int)longValue();
  }
  
  public double doubleValue()
  {
    if (qR()) {
      return aua;
    }
    return atZ;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof dh)) && (a((dh)paramObject) == 0);
  }
  
  public float floatValue()
  {
    return (float)doubleValue();
  }
  
  public int hashCode()
  {
    return new Long(longValue()).hashCode();
  }
  
  public int intValue()
  {
    return qT();
  }
  
  public long longValue()
  {
    return qS();
  }
  
  public boolean qQ()
  {
    return !qR();
  }
  
  public boolean qR()
  {
    return aub;
  }
  
  public long qS()
  {
    if (qR()) {
      return aua;
    }
    return atZ;
  }
  
  public int qT()
  {
    return (int)longValue();
  }
  
  public short qU()
  {
    return (short)(int)longValue();
  }
  
  public short shortValue()
  {
    return qU();
  }
  
  public String toString()
  {
    if (qR()) {
      return Long.toString(aua);
    }
    return Double.toString(atZ);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */