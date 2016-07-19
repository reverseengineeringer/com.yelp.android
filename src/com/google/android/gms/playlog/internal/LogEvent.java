package com.google.android.gms.playlog.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Iterator;
import java.util.Set;

public class LogEvent
  implements SafeParcelable
{
  public static final c CREATOR = new c();
  public final int a;
  public final long b;
  public final long c;
  public final String d;
  public final byte[] e;
  public final Bundle f;
  
  LogEvent(int paramInt, long paramLong1, long paramLong2, String paramString, byte[] paramArrayOfByte, Bundle paramBundle)
  {
    a = paramInt;
    b = paramLong1;
    c = paramLong2;
    d = paramString;
    e = paramArrayOfByte;
    f = paramBundle;
  }
  
  public LogEvent(long paramLong1, long paramLong2, String paramString, byte[] paramArrayOfByte, String... paramVarArgs)
  {
    a = 1;
    b = paramLong1;
    c = paramLong2;
    d = paramString;
    e = paramArrayOfByte;
    f = a(paramVarArgs);
  }
  
  private static Bundle a(String... paramVarArgs)
  {
    Object localObject = null;
    if (paramVarArgs == null) {}
    int j;
    do
    {
      return (Bundle)localObject;
      if (paramVarArgs.length % 2 != 0) {
        throw new IllegalArgumentException("extras must have an even number of elements");
      }
      j = paramVarArgs.length / 2;
    } while (j == 0);
    Bundle localBundle = new Bundle(j);
    int i = 0;
    for (;;)
    {
      localObject = localBundle;
      if (i >= j) {
        break;
      }
      localBundle.putString(paramVarArgs[(i * 2)], paramVarArgs[(i * 2 + 1)]);
      i += 1;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("tag=").append(d).append(",");
    localStringBuilder.append("eventTime=").append(b).append(",");
    localStringBuilder.append("eventUptime=").append(c).append(",");
    if ((f != null) && (!f.isEmpty()))
    {
      localStringBuilder.append("keyValues=");
      Iterator localIterator = f.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localStringBuilder.append("(").append(str).append(",");
        localStringBuilder.append(f.getString(str)).append(")");
        localStringBuilder.append(" ");
      }
    }
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.playlog.internal.LogEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */