package com.google.android.gms.clearcut;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.internal.lu.d;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import java.util.Arrays;

public class LogEventParcelable
  implements SafeParcelable
{
  public static final d CREATOR = new d();
  public final int a;
  public PlayLoggerContext b;
  public byte[] c;
  public int[] d;
  public final lu.d e;
  public final b.b f;
  public final b.b g;
  
  LogEventParcelable(int paramInt, PlayLoggerContext paramPlayLoggerContext, byte[] paramArrayOfByte, int[] paramArrayOfInt)
  {
    a = paramInt;
    b = paramPlayLoggerContext;
    c = paramArrayOfByte;
    d = paramArrayOfInt;
    e = null;
    f = null;
    g = null;
  }
  
  public LogEventParcelable(PlayLoggerContext paramPlayLoggerContext, lu.d paramd, b.b paramb1, b.b paramb2, int[] paramArrayOfInt)
  {
    a = 1;
    b = paramPlayLoggerContext;
    e = paramd;
    f = paramb1;
    g = paramb2;
    d = paramArrayOfInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof LogEventParcelable)) {
        break;
      }
      paramObject = (LogEventParcelable)paramObject;
    } while ((a == a) && (zzw.equal(b, b)) && (Arrays.equals(c, c)) && (Arrays.equals(d, d)) && (zzw.equal(e, e)) && (zzw.equal(f, f)) && (zzw.equal(g, g)));
    return false;
    return false;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { Integer.valueOf(a), b, c, d, e, f, g });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("LogEventParcelable[");
    localStringBuilder.append(a);
    localStringBuilder.append(", ");
    localStringBuilder.append(b);
    localStringBuilder.append(", ");
    if (c == null)
    {
      str = null;
      localStringBuilder.append(str);
      localStringBuilder.append(", ");
      if (d != null) {
        break label157;
      }
    }
    label157:
    for (String str = (String)null;; str = zzv.zzcL(", ").zza(Arrays.asList(new int[][] { d })))
    {
      localStringBuilder.append(str);
      localStringBuilder.append(", ");
      localStringBuilder.append(e);
      localStringBuilder.append(", ");
      localStringBuilder.append(f);
      localStringBuilder.append(", ");
      localStringBuilder.append(g);
      localStringBuilder.append("]");
      return localStringBuilder.toString();
      str = new String(c);
      break;
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.clearcut.LogEventParcelable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */