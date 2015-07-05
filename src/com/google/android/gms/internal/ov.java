package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class ov
  implements SafeParcelable
{
  public static final ow CREATOR = new ow();
  public final int ang;
  public final int anh;
  public final String ani;
  public final String anj;
  public final boolean ank;
  public final String anl;
  public final String packageName;
  public final int versionCode;
  
  public ov(int paramInt1, String paramString1, int paramInt2, int paramInt3, String paramString2, String paramString3, boolean paramBoolean, String paramString4)
  {
    versionCode = paramInt1;
    packageName = paramString1;
    ang = paramInt2;
    anh = paramInt3;
    ani = paramString2;
    anj = paramString3;
    ank = paramBoolean;
    anl = paramString4;
  }
  
  @Deprecated
  public ov(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, boolean paramBoolean)
  {
    versionCode = 1;
    packageName = ((String)jx.i(paramString1));
    ang = paramInt1;
    anh = paramInt2;
    anl = null;
    ani = paramString2;
    anj = paramString3;
    ank = paramBoolean;
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
      if (!(paramObject instanceof ov)) {
        break;
      }
      paramObject = (ov)paramObject;
    } while ((packageName.equals(packageName)) && (ang == ang) && (anh == anh) && (jv.equal(anl, anl)) && (jv.equal(ani, ani)) && (jv.equal(anj, anj)) && (ank == ank));
    return false;
    return false;
  }
  
  public int hashCode()
  {
    return jv.hashCode(new Object[] { packageName, Integer.valueOf(ang), Integer.valueOf(anh), ani, anj, Boolean.valueOf(ank) });
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("PlayLoggerContext[");
    localStringBuilder.append("package=").append(packageName).append(',');
    localStringBuilder.append("versionCode=").append(versionCode).append(',');
    localStringBuilder.append("logSource=").append(anh).append(',');
    localStringBuilder.append("logSourceName=").append(anl).append(',');
    localStringBuilder.append("uploadAccount=").append(ani).append(',');
    localStringBuilder.append("loggingId=").append(anj).append(',');
    localStringBuilder.append("logAndroidId=").append(ank);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ow.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ov
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */