package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;

public class oh
  implements SafeParcelable
{
  public static final oi CREATOR = new oi();
  public static final oh akf = new oh("com.google.android.gms", Locale.ENGLISH, null);
  public final String akg;
  public final String akh;
  public final String aki;
  public final String akj;
  public final int versionCode;
  
  public oh(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    versionCode = paramInt;
    akg = paramString1;
    akh = paramString2;
    aki = paramString3;
    akj = paramString4;
  }
  
  public oh(String paramString1, Locale paramLocale, String paramString2)
  {
    this(1, paramString1, paramLocale.toString(), paramString2, null);
  }
  
  public int describeContents()
  {
    oi localoi = CREATOR;
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (!(paramObject instanceof oh))) {
        return false;
      }
      paramObject = (oh)paramObject;
    } while ((akh.equals(akh)) && (akg.equals(akg)) && (jv.equal(aki, aki)) && (jv.equal(akj, akj)));
    return false;
  }
  
  public int hashCode()
  {
    return jv.hashCode(new Object[] { akg, akh, aki });
  }
  
  public String toString()
  {
    return jv.h(this).a("clientPackageName", akg).a("locale", akh).a("accountName", aki).a("gCoreClientName", akj).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    oi localoi = CREATOR;
    oi.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.oh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */