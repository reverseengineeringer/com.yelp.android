package com.facebook;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.facebook.internal.u;
import com.facebook.internal.v;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class AccessToken
  implements Parcelable
{
  public static final Parcelable.Creator<AccessToken> CREATOR = new Parcelable.Creator()
  {
    public AccessToken a(Parcel paramAnonymousParcel)
    {
      return new AccessToken(paramAnonymousParcel);
    }
    
    public AccessToken[] a(int paramAnonymousInt)
    {
      return new AccessToken[paramAnonymousInt];
    }
  };
  private static final Date a = new Date(Long.MAX_VALUE);
  private static final Date b = a;
  private static final Date c = new Date();
  private static final AccessTokenSource d = AccessTokenSource.FACEBOOK_APPLICATION_WEB;
  private final Date e;
  private final Set<String> f;
  private final Set<String> g;
  private final String h;
  private final AccessTokenSource i;
  private final Date j;
  private final String k;
  private final String l;
  
  AccessToken(Parcel paramParcel)
  {
    e = new Date(paramParcel.readLong());
    ArrayList localArrayList = new ArrayList();
    paramParcel.readStringList(localArrayList);
    f = Collections.unmodifiableSet(new HashSet(localArrayList));
    localArrayList.clear();
    paramParcel.readStringList(localArrayList);
    g = Collections.unmodifiableSet(new HashSet(localArrayList));
    h = paramParcel.readString();
    i = AccessTokenSource.valueOf(paramParcel.readString());
    j = new Date(paramParcel.readLong());
    k = paramParcel.readString();
    l = paramParcel.readString();
  }
  
  public AccessToken(String paramString1, String paramString2, String paramString3, Collection<String> paramCollection1, Collection<String> paramCollection2, AccessTokenSource paramAccessTokenSource, Date paramDate1, Date paramDate2)
  {
    v.a(paramString1, "accessToken");
    v.a(paramString2, "applicationId");
    v.a(paramString3, "userId");
    if (paramDate1 != null)
    {
      e = paramDate1;
      if (paramCollection1 == null) {
        break label129;
      }
      paramCollection1 = new HashSet(paramCollection1);
      label49:
      f = Collections.unmodifiableSet(paramCollection1);
      if (paramCollection2 == null) {
        break label141;
      }
      paramCollection1 = new HashSet(paramCollection2);
      label74:
      g = Collections.unmodifiableSet(paramCollection1);
      h = paramString1;
      if (paramAccessTokenSource == null) {
        break label153;
      }
      label93:
      i = paramAccessTokenSource;
      if (paramDate2 == null) {
        break label161;
      }
    }
    for (;;)
    {
      j = paramDate2;
      k = paramString2;
      l = paramString3;
      return;
      paramDate1 = b;
      break;
      label129:
      paramCollection1 = new HashSet();
      break label49;
      label141:
      paramCollection1 = new HashSet();
      break label74;
      label153:
      paramAccessTokenSource = d;
      break label93;
      label161:
      paramDate2 = c;
    }
  }
  
  public static AccessToken a()
  {
    return b.a().b();
  }
  
  static AccessToken a(Bundle paramBundle)
  {
    List localList1 = a(paramBundle, "com.facebook.TokenCachingStrategy.Permissions");
    List localList2 = a(paramBundle, "com.facebook.TokenCachingStrategy.DeclinedPermissions");
    String str2 = j.d(paramBundle);
    String str1 = str2;
    if (u.a(str2)) {
      str1 = g.h();
    }
    str2 = j.b(paramBundle);
    Object localObject = u.e(str2);
    try
    {
      localObject = ((JSONObject)localObject).getString("id");
      return new AccessToken(str2, str1, (String)localObject, localList1, localList2, j.c(paramBundle), j.a(paramBundle, "com.facebook.TokenCachingStrategy.ExpirationDate"), j.a(paramBundle, "com.facebook.TokenCachingStrategy.LastRefreshDate"));
    }
    catch (JSONException paramBundle) {}
    return null;
  }
  
  static AccessToken a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (paramJSONObject.getInt("version") > 1) {
      throw new FacebookException("Unknown AccessToken serialization format.");
    }
    String str = paramJSONObject.getString("token");
    Date localDate1 = new Date(paramJSONObject.getLong("expires_at"));
    JSONArray localJSONArray1 = paramJSONObject.getJSONArray("permissions");
    JSONArray localJSONArray2 = paramJSONObject.getJSONArray("declined_permissions");
    Date localDate2 = new Date(paramJSONObject.getLong("last_refresh"));
    AccessTokenSource localAccessTokenSource = AccessTokenSource.valueOf(paramJSONObject.getString("source"));
    return new AccessToken(str, paramJSONObject.getString("application_id"), paramJSONObject.getString("user_id"), u.a(localJSONArray1), u.a(localJSONArray2), localAccessTokenSource, localDate1, localDate2);
  }
  
  static List<String> a(Bundle paramBundle, String paramString)
  {
    paramBundle = paramBundle.getStringArrayList(paramString);
    if (paramBundle == null) {
      return Collections.emptyList();
    }
    return Collections.unmodifiableList(new ArrayList(paramBundle));
  }
  
  public static void a(AccessToken paramAccessToken)
  {
    b.a().a(paramAccessToken);
  }
  
  private void a(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append(" permissions:");
    if (f == null)
    {
      paramStringBuilder.append("null");
      return;
    }
    paramStringBuilder.append("[");
    paramStringBuilder.append(TextUtils.join(", ", f));
    paramStringBuilder.append("]");
  }
  
  private String k()
  {
    if (h == null) {
      return "null";
    }
    if (g.a(LoggingBehavior.INCLUDE_ACCESS_TOKENS)) {
      return h;
    }
    return "ACCESS_TOKEN_REMOVED";
  }
  
  public String b()
  {
    return h;
  }
  
  public Date c()
  {
    return e;
  }
  
  public Set<String> d()
  {
    return f;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Set<String> e()
  {
    return g;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    for (;;)
    {
      return true;
      if (!(paramObject instanceof AccessToken)) {
        return false;
      }
      paramObject = (AccessToken)paramObject;
      if ((e.equals(e)) && (f.equals(f)) && (g.equals(g)) && (h.equals(h)) && (i == i) && (j.equals(j)))
      {
        if (k != null) {
          break label136;
        }
        if (k != null) {}
      }
      while (!l.equals(l)) {
        label136:
        do
        {
          return false;
        } while (!k.equals(k));
      }
    }
  }
  
  public AccessTokenSource f()
  {
    return i;
  }
  
  public Date g()
  {
    return j;
  }
  
  public String h()
  {
    return k;
  }
  
  public int hashCode()
  {
    int n = e.hashCode();
    int i1 = f.hashCode();
    int i2 = g.hashCode();
    int i3 = h.hashCode();
    int i4 = i.hashCode();
    int i5 = j.hashCode();
    if (k == null) {}
    for (int m = 0;; m = k.hashCode()) {
      return (m + ((((((n + 527) * 31 + i1) * 31 + i2) * 31 + i3) * 31 + i4) * 31 + i5) * 31) * 31 + l.hashCode();
    }
  }
  
  public String i()
  {
    return l;
  }
  
  JSONObject j()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("version", 1);
    localJSONObject.put("token", h);
    localJSONObject.put("expires_at", e.getTime());
    localJSONObject.put("permissions", new JSONArray(f));
    localJSONObject.put("declined_permissions", new JSONArray(g));
    localJSONObject.put("last_refresh", j.getTime());
    localJSONObject.put("source", i.name());
    localJSONObject.put("application_id", k);
    localJSONObject.put("user_id", l);
    return localJSONObject;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("{AccessToken");
    localStringBuilder.append(" token:").append(k());
    a(localStringBuilder);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(e.getTime());
    paramParcel.writeStringList(new ArrayList(f));
    paramParcel.writeStringList(new ArrayList(g));
    paramParcel.writeString(h);
    paramParcel.writeString(i.name());
    paramParcel.writeLong(j.getTime());
    paramParcel.writeString(k);
    paramParcel.writeString(l);
  }
}

/* Location:
 * Qualified Name:     com.facebook.AccessToken
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */