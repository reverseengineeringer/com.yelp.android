package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import java.util.List;

public class TokenData
  implements SafeParcelable
{
  public static final f CREATOR = new f();
  final int a;
  private final String b;
  private final Long c;
  private final boolean d;
  private final boolean e;
  private final List<String> f;
  
  TokenData(int paramInt, String paramString, Long paramLong, boolean paramBoolean1, boolean paramBoolean2, List<String> paramList)
  {
    a = paramInt;
    b = zzx.zzcM(paramString);
    c = paramLong;
    d = paramBoolean1;
    e = paramBoolean2;
    f = paramList;
  }
  
  public static TokenData a(Bundle paramBundle, String paramString)
  {
    paramBundle.setClassLoader(TokenData.class.getClassLoader());
    paramBundle = paramBundle.getBundle(paramString);
    if (paramBundle == null) {
      return null;
    }
    paramBundle.setClassLoader(TokenData.class.getClassLoader());
    return (TokenData)paramBundle.getParcelable("TokenData");
  }
  
  public String a()
  {
    return b;
  }
  
  public Long b()
  {
    return c;
  }
  
  public boolean c()
  {
    return d;
  }
  
  public boolean d()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<String> e()
  {
    return f;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof TokenData)) {}
    do
    {
      return false;
      paramObject = (TokenData)paramObject;
    } while ((!TextUtils.equals(b, b)) || (!zzw.equal(c, c)) || (d != d) || (e != e) || (!zzw.equal(f, f)));
    return true;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { b, c, Boolean.valueOf(d), Boolean.valueOf(e), f });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.TokenData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */