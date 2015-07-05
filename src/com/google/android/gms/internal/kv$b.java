package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class kv$b
  implements SafeParcelable
{
  public static final ku CREATOR = new ku();
  final kr.a<?, ?> NZ;
  final String fv;
  final int versionCode;
  
  kv$b(int paramInt, String paramString, kr.a<?, ?> parama)
  {
    versionCode = paramInt;
    fv = paramString;
    NZ = parama;
  }
  
  kv$b(String paramString, kr.a<?, ?> parama)
  {
    versionCode = 1;
    fv = paramString;
    NZ = parama;
  }
  
  public int describeContents()
  {
    ku localku = CREATOR;
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ku localku = CREATOR;
    ku.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kv.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */