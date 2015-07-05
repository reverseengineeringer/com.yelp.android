package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.Geofence;
import java.util.Locale;

public class nn
  implements SafeParcelable, Geofence
{
  public static final no CREATOR = new no();
  private final int CK;
  private final String Zt;
  private final int agd;
  private final short agf;
  private final double agg;
  private final double agh;
  private final float agi;
  private final int agj;
  private final int agk;
  private final long ahl;
  
  public nn(int paramInt1, String paramString, int paramInt2, short paramShort, double paramDouble1, double paramDouble2, float paramFloat, long paramLong, int paramInt3, int paramInt4)
  {
    cb(paramString);
    b(paramFloat);
    a(paramDouble1, paramDouble2);
    paramInt2 = eH(paramInt2);
    CK = paramInt1;
    agf = paramShort;
    Zt = paramString;
    agg = paramDouble1;
    agh = paramDouble2;
    agi = paramFloat;
    ahl = paramLong;
    agd = paramInt2;
    agj = paramInt3;
    agk = paramInt4;
  }
  
  public nn(String paramString, int paramInt1, short paramShort, double paramDouble1, double paramDouble2, float paramFloat, long paramLong, int paramInt2, int paramInt3)
  {
    this(1, paramString, paramInt1, paramShort, paramDouble1, paramDouble2, paramFloat, paramLong, paramInt2, paramInt3);
  }
  
  private static void a(double paramDouble1, double paramDouble2)
  {
    if ((paramDouble1 > 90.0D) || (paramDouble1 < -90.0D)) {
      throw new IllegalArgumentException("invalid latitude: " + paramDouble1);
    }
    if ((paramDouble2 > 180.0D) || (paramDouble2 < -180.0D)) {
      throw new IllegalArgumentException("invalid longitude: " + paramDouble2);
    }
  }
  
  private static void b(float paramFloat)
  {
    if (paramFloat <= 0.0F) {
      throw new IllegalArgumentException("invalid radius: " + paramFloat);
    }
  }
  
  private static void cb(String paramString)
  {
    if ((paramString == null) || (paramString.length() > 100)) {
      throw new IllegalArgumentException("requestId is null or too long: " + paramString);
    }
  }
  
  private static int eH(int paramInt)
  {
    int i = paramInt & 0x7;
    if (i == 0) {
      throw new IllegalArgumentException("No supported transition specified: " + paramInt);
    }
    return i;
  }
  
  private static String eI(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    return "CIRCLE";
  }
  
  public static nn h(byte[] paramArrayOfByte)
  {
    Parcel localParcel = Parcel.obtain();
    localParcel.unmarshall(paramArrayOfByte, 0, paramArrayOfByte.length);
    localParcel.setDataPosition(0);
    paramArrayOfByte = CREATOR.cN(localParcel);
    localParcel.recycle();
    return paramArrayOfByte;
  }
  
  public int describeContents()
  {
    no localno = CREATOR;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof nn)) {
        return false;
      }
      paramObject = (nn)paramObject;
      if (agi != agi) {
        return false;
      }
      if (agg != agg) {
        return false;
      }
      if (agh != agh) {
        return false;
      }
    } while (agf == agf);
    return false;
  }
  
  public long getExpirationTime()
  {
    return ahl;
  }
  
  public double getLatitude()
  {
    return agg;
  }
  
  public double getLongitude()
  {
    return agh;
  }
  
  public int getNotificationResponsiveness()
  {
    return agj;
  }
  
  public String getRequestId()
  {
    return Zt;
  }
  
  public int getVersionCode()
  {
    return CK;
  }
  
  public int hashCode()
  {
    long l = Double.doubleToLongBits(agg);
    int i = (int)(l ^ l >>> 32);
    l = Double.doubleToLongBits(agh);
    return ((((i + 31) * 31 + (int)(l ^ l >>> 32)) * 31 + Float.floatToIntBits(agi)) * 31 + agf) * 31 + agd;
  }
  
  public short nn()
  {
    return agf;
  }
  
  public float no()
  {
    return agi;
  }
  
  public int np()
  {
    return agd;
  }
  
  public int nq()
  {
    return agk;
  }
  
  public String toString()
  {
    return String.format(Locale.US, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", new Object[] { eI(agf), Zt, Integer.valueOf(agd), Double.valueOf(agg), Double.valueOf(agh), Float.valueOf(agi), Integer.valueOf(agj / 1000), Integer.valueOf(agk), Long.valueOf(ahl) });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    no localno = CREATOR;
    no.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */