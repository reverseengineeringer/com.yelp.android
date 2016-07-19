package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

public class DocumentSection
  implements SafeParcelable
{
  public static final d CREATOR = new d();
  public static final int a = Integer.parseInt("-1");
  private static final RegisterSectionInfo g = new RegisterSectionInfo.a("SsbContext").a(true).a("blob").a();
  final int b;
  public final String c;
  final RegisterSectionInfo d;
  public final int e;
  public final byte[] f;
  
  DocumentSection(int paramInt1, String paramString, RegisterSectionInfo paramRegisterSectionInfo, int paramInt2, byte[] paramArrayOfByte)
  {
    if ((paramInt2 == a) || (h.a(paramInt2) != null)) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "Invalid section type " + paramInt2);
      b = paramInt1;
      c = paramString;
      d = paramRegisterSectionInfo;
      e = paramInt2;
      f = paramArrayOfByte;
      paramString = a();
      if (paramString == null) {
        break;
      }
      throw new IllegalArgumentException(paramString);
    }
  }
  
  public DocumentSection(String paramString, RegisterSectionInfo paramRegisterSectionInfo)
  {
    this(1, paramString, paramRegisterSectionInfo, a, null);
  }
  
  public DocumentSection(String paramString1, RegisterSectionInfo paramRegisterSectionInfo, String paramString2)
  {
    this(1, paramString1, paramRegisterSectionInfo, h.a(paramString2), null);
  }
  
  public DocumentSection(byte[] paramArrayOfByte, RegisterSectionInfo paramRegisterSectionInfo)
  {
    this(1, null, paramRegisterSectionInfo, a, paramArrayOfByte);
  }
  
  public String a()
  {
    if ((e != a) && (h.a(e) == null)) {
      return "Invalid section type " + e;
    }
    if ((c != null) && (f != null)) {
      return "Both content and blobContent set";
    }
    return null;
  }
  
  public int describeContents()
  {
    d locald = CREATOR;
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    d locald = CREATOR;
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.DocumentSection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */