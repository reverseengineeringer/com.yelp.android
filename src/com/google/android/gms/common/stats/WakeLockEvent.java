package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public final class WakeLockEvent
  extends zzf
  implements SafeParcelable
{
  public static final Parcelable.Creator<WakeLockEvent> CREATOR = new zzh();
  private final long mTimeout;
  final int mVersionCode;
  private final String zzanQ;
  private final int zzanR;
  private final List<String> zzanS;
  private final String zzanT;
  private int zzanU;
  private final String zzanV;
  private final String zzanW;
  private final float zzanX;
  private final long zzane;
  private int zzanf;
  private final long zzanm;
  private long zzano;
  
  WakeLockEvent(int paramInt1, long paramLong1, int paramInt2, String paramString1, int paramInt3, List<String> paramList, String paramString2, long paramLong2, int paramInt4, String paramString3, String paramString4, float paramFloat, long paramLong3)
  {
    mVersionCode = paramInt1;
    zzane = paramLong1;
    zzanf = paramInt2;
    zzanQ = paramString1;
    zzanV = paramString3;
    zzanR = paramInt3;
    zzano = -1L;
    zzanS = paramList;
    zzanT = paramString2;
    zzanm = paramLong2;
    zzanU = paramInt4;
    zzanW = paramString4;
    zzanX = paramFloat;
    mTimeout = paramLong3;
  }
  
  public WakeLockEvent(long paramLong1, int paramInt1, String paramString1, int paramInt2, List<String> paramList, String paramString2, long paramLong2, int paramInt3, String paramString3, String paramString4, float paramFloat, long paramLong3)
  {
    this(1, paramLong1, paramInt1, paramString1, paramInt2, paramList, paramString2, paramLong2, paramInt3, paramString3, paramString4, paramFloat, paramLong3);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getEventType()
  {
    return zzanf;
  }
  
  public long getTimeMillis()
  {
    return zzane;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    zzh.zza(this, paramParcel, paramInt);
  }
  
  public String zzrK()
  {
    return zzanT;
  }
  
  public long zzrL()
  {
    return zzano;
  }
  
  public long zzrN()
  {
    return zzanm;
  }
  
  public String zzrO()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("\t").append(zzrR()).append("\t").append(zzrT()).append("\t");
    if (zzrU() == null)
    {
      str = "";
      localStringBuilder = localStringBuilder.append(str).append("\t").append(zzrV()).append("\t");
      if (zzrS() != null) {
        break label135;
      }
      str = "";
      label80:
      localStringBuilder = localStringBuilder.append(str).append("\t");
      if (zzrW() != null) {
        break label143;
      }
    }
    label135:
    label143:
    for (String str = "";; str = zzrW())
    {
      return str + "\t" + zzrX();
      str = TextUtils.join(",", zzrU());
      break;
      str = zzrS();
      break label80;
    }
  }
  
  public String zzrR()
  {
    return zzanQ;
  }
  
  public String zzrS()
  {
    return zzanV;
  }
  
  public int zzrT()
  {
    return zzanR;
  }
  
  public List<String> zzrU()
  {
    return zzanS;
  }
  
  public int zzrV()
  {
    return zzanU;
  }
  
  public String zzrW()
  {
    return zzanW;
  }
  
  public float zzrX()
  {
    return zzanX;
  }
  
  public long zzrY()
  {
    return mTimeout;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.stats.WakeLockEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */