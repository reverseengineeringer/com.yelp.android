package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public final class jg$a
  implements SafeParcelable
{
  public static final jw CREATOR = new jw();
  private final int CK;
  private final String DZ;
  private final int JI;
  private final String JK;
  private final List<String> Kh = new ArrayList();
  
  jg$a(int paramInt1, String paramString1, List<String> paramList, int paramInt2, String paramString2)
  {
    CK = paramInt1;
    DZ = paramString1;
    Kh.addAll(paramList);
    JI = paramInt2;
    JK = paramString2;
  }
  
  public jg$a(String paramString1, Collection<String> paramCollection, int paramInt, String paramString2)
  {
    this(3, paramString1, new ArrayList(paramCollection), paramInt, paramString2);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAccountName()
  {
    return DZ;
  }
  
  public int getVersionCode()
  {
    return CK;
  }
  
  public String hm()
  {
    if (DZ != null) {
      return DZ;
    }
    return "<<default account>>";
  }
  
  public int hn()
  {
    return JI;
  }
  
  public List<String> ho()
  {
    return new ArrayList(Kh);
  }
  
  public String hq()
  {
    return JK;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jw.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jg.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */