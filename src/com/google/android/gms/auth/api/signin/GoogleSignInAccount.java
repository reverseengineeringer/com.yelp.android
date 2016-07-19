package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import com.google.android.gms.internal.jv;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class GoogleSignInAccount
  implements SafeParcelable
{
  public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new a();
  public static jt a = jv.d();
  private static Comparator<Scope> l = new Comparator()
  {
    public int a(Scope paramAnonymousScope1, Scope paramAnonymousScope2)
    {
      return paramAnonymousScope1.zzpb().compareTo(paramAnonymousScope2.zzpb());
    }
  };
  final int b;
  List<Scope> c;
  private String d;
  private String e;
  private String f;
  private String g;
  private Uri h;
  private String i;
  private long j;
  private String k;
  
  GoogleSignInAccount(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, Uri paramUri, String paramString5, long paramLong, String paramString6, List<Scope> paramList)
  {
    b = paramInt;
    d = paramString1;
    e = paramString2;
    f = paramString3;
    g = paramString4;
    h = paramUri;
    i = paramString5;
    j = paramLong;
    k = paramString6;
    c = paramList;
  }
  
  public static GoogleSignInAccount a(String paramString)
    throws JSONException
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    JSONObject localJSONObject = new JSONObject(paramString);
    paramString = localJSONObject.optString("photoUrl", null);
    if (!TextUtils.isEmpty(paramString)) {}
    for (paramString = Uri.parse(paramString);; paramString = null)
    {
      long l1 = Long.parseLong(localJSONObject.getString("expirationTime"));
      HashSet localHashSet = new HashSet();
      JSONArray localJSONArray = localJSONObject.getJSONArray("grantedScopes");
      int n = localJSONArray.length();
      int m = 0;
      while (m < n)
      {
        localHashSet.add(new Scope(localJSONArray.getString(m)));
        m += 1;
      }
      return a(localJSONObject.optString("id"), localJSONObject.optString("tokenId", null), localJSONObject.optString("email", null), localJSONObject.optString("displayName", null), paramString, Long.valueOf(l1), localJSONObject.getString("obfuscatedIdentifier"), localHashSet).b(localJSONObject.optString("serverAuthCode", null));
    }
  }
  
  public static GoogleSignInAccount a(String paramString1, String paramString2, String paramString3, String paramString4, Uri paramUri, Long paramLong, String paramString5, Set<Scope> paramSet)
  {
    Long localLong = paramLong;
    if (paramLong == null) {
      localLong = Long.valueOf(a.a() / 1000L);
    }
    return new GoogleSignInAccount(2, paramString1, paramString2, paramString3, paramString4, paramUri, null, localLong.longValue(), zzx.zzcM(paramString5), new ArrayList((Collection)zzx.zzz(paramSet)));
  }
  
  private JSONObject j()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      if (a() != null) {
        localJSONObject.put("id", a());
      }
      if (b() != null) {
        localJSONObject.put("tokenId", b());
      }
      if (c() != null) {
        localJSONObject.put("email", c());
      }
      if (d() != null) {
        localJSONObject.put("displayName", d());
      }
      if (e() != null) {
        localJSONObject.put("photoUrl", e().toString());
      }
      if (f() != null) {
        localJSONObject.put("serverAuthCode", f());
      }
      localJSONObject.put("expirationTime", j);
      localJSONObject.put("obfuscatedIdentifier", h());
      JSONArray localJSONArray = new JSONArray();
      Collections.sort(c, l);
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((Scope)localIterator.next()).zzpb());
      }
      localJSONException.put("grantedScopes", localJSONArray);
    }
    catch (JSONException localJSONException)
    {
      throw new RuntimeException(localJSONException);
    }
    return localJSONException;
  }
  
  public String a()
  {
    return d;
  }
  
  public GoogleSignInAccount b(String paramString)
  {
    i = paramString;
    return this;
  }
  
  public String b()
  {
    return e;
  }
  
  public String c()
  {
    return f;
  }
  
  public String d()
  {
    return g;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Uri e()
  {
    return h;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof GoogleSignInAccount)) {
      return false;
    }
    return ((GoogleSignInAccount)paramObject).i().equals(i());
  }
  
  public String f()
  {
    return i;
  }
  
  public long g()
  {
    return j;
  }
  
  public String h()
  {
    return k;
  }
  
  public String i()
  {
    return j().toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.api.signin.GoogleSignInAccount
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */