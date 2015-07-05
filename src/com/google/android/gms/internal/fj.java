package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;

@ey
public final class fj
  implements SafeParcelable
{
  public static final fk CREATOR = new fk();
  public final int errorCode;
  public final int orientation;
  public final long qA;
  public final List<String> qw;
  public final List<String> qx;
  public final String sg;
  public final boolean tT;
  public final String tU;
  public final long tV;
  public final boolean tW;
  public final long tX;
  public final List<String> tY;
  public final String tZ;
  public final long ua;
  public final String ub;
  public final boolean uc;
  public final String ud;
  public final String ue;
  public final boolean uf;
  public final boolean ug;
  public final boolean uh;
  public final int versionCode;
  
  public fj(int paramInt)
  {
    this(10, null, null, null, paramInt, null, -1L, false, -1L, null, -1L, -1, null, -1L, null, false, null, null, false, false, false, false);
  }
  
  public fj(int paramInt, long paramLong)
  {
    this(10, null, null, null, paramInt, null, -1L, false, -1L, null, paramLong, -1, null, -1L, null, false, null, null, false, false, false, false);
  }
  
  fj(int paramInt1, String paramString1, String paramString2, List<String> paramList1, int paramInt2, List<String> paramList2, long paramLong1, boolean paramBoolean1, long paramLong2, List<String> paramList3, long paramLong3, int paramInt3, String paramString3, long paramLong4, String paramString4, boolean paramBoolean2, String paramString5, String paramString6, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6)
  {
    versionCode = paramInt1;
    sg = paramString1;
    tU = paramString2;
    if (paramList1 != null)
    {
      paramString1 = Collections.unmodifiableList(paramList1);
      qw = paramString1;
      errorCode = paramInt2;
      if (paramList2 == null) {
        break label169;
      }
      paramString1 = Collections.unmodifiableList(paramList2);
      label52:
      qx = paramString1;
      tV = paramLong1;
      tW = paramBoolean1;
      tX = paramLong2;
      if (paramList3 == null) {
        break label174;
      }
    }
    label169:
    label174:
    for (paramString1 = Collections.unmodifiableList(paramList3);; paramString1 = null)
    {
      tY = paramString1;
      qA = paramLong3;
      orientation = paramInt3;
      tZ = paramString3;
      ua = paramLong4;
      ub = paramString4;
      uc = paramBoolean2;
      ud = paramString5;
      ue = paramString6;
      uf = paramBoolean3;
      ug = paramBoolean4;
      tT = paramBoolean5;
      uh = paramBoolean6;
      return;
      paramString1 = null;
      break;
      paramString1 = null;
      break label52;
    }
  }
  
  public fj(String paramString1, String paramString2, List<String> paramList1, List<String> paramList2, long paramLong1, boolean paramBoolean1, long paramLong2, List<String> paramList3, long paramLong3, int paramInt, String paramString3, long paramLong4, String paramString4, String paramString5, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5)
  {
    this(10, paramString1, paramString2, paramList1, -2, paramList2, paramLong1, paramBoolean1, paramLong2, paramList3, paramLong3, paramInt, paramString3, paramLong4, paramString4, false, null, paramString5, paramBoolean2, paramBoolean3, paramBoolean4, paramBoolean5);
  }
  
  public fj(String paramString1, String paramString2, List<String> paramList1, List<String> paramList2, long paramLong1, boolean paramBoolean1, long paramLong2, List<String> paramList3, long paramLong3, int paramInt, String paramString3, long paramLong4, String paramString4, boolean paramBoolean2, String paramString5, String paramString6, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6)
  {
    this(10, paramString1, paramString2, paramList1, -2, paramList2, paramLong1, paramBoolean1, paramLong2, paramList3, paramLong3, paramInt, paramString3, paramLong4, paramString4, paramBoolean2, paramString5, paramString6, paramBoolean3, paramBoolean4, paramBoolean5, paramBoolean6);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    fk.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */