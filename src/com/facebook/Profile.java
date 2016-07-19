package com.facebook;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.facebook.internal.u;
import com.facebook.internal.u.c;
import com.facebook.internal.v;
import org.json.JSONException;
import org.json.JSONObject;

public final class Profile
  implements Parcelable
{
  public static final Parcelable.Creator<Profile> CREATOR = new Parcelable.Creator()
  {
    public Profile a(Parcel paramAnonymousParcel)
    {
      return new Profile(paramAnonymousParcel, null);
    }
    
    public Profile[] a(int paramAnonymousInt)
    {
      return new Profile[paramAnonymousInt];
    }
  };
  private final String a;
  private final String b;
  private final String c;
  private final String d;
  private final String e;
  private final Uri f;
  
  private Profile(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = paramParcel.readString();
    d = paramParcel.readString();
    e = paramParcel.readString();
    paramParcel = paramParcel.readString();
    if (paramParcel == null) {}
    for (paramParcel = null;; paramParcel = Uri.parse(paramParcel))
    {
      f = paramParcel;
      return;
    }
  }
  
  public Profile(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, Uri paramUri)
  {
    v.a(paramString1, "id");
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramString5;
    f = paramUri;
  }
  
  Profile(JSONObject paramJSONObject)
  {
    a = paramJSONObject.optString("id", null);
    b = paramJSONObject.optString("first_name", null);
    c = paramJSONObject.optString("middle_name", null);
    d = paramJSONObject.optString("last_name", null);
    e = paramJSONObject.optString("name", null);
    paramJSONObject = paramJSONObject.optString("link_uri", null);
    if (paramJSONObject == null) {}
    for (paramJSONObject = (JSONObject)localObject;; paramJSONObject = Uri.parse(paramJSONObject))
    {
      f = paramJSONObject;
      return;
    }
  }
  
  public static Profile a()
  {
    return l.a().b();
  }
  
  public static void a(Profile paramProfile)
  {
    l.a().a(paramProfile);
  }
  
  public static void b()
  {
    AccessToken localAccessToken = AccessToken.a();
    if (localAccessToken == null)
    {
      a(null);
      return;
    }
    u.a(localAccessToken.b(), new u.c()
    {
      public void a(FacebookException paramAnonymousFacebookException) {}
      
      public void a(JSONObject paramAnonymousJSONObject)
      {
        String str1 = paramAnonymousJSONObject.optString("id");
        if (str1 == null) {
          return;
        }
        String str6 = paramAnonymousJSONObject.optString("link");
        String str2 = paramAnonymousJSONObject.optString("first_name");
        String str3 = paramAnonymousJSONObject.optString("middle_name");
        String str4 = paramAnonymousJSONObject.optString("last_name");
        String str5 = paramAnonymousJSONObject.optString("name");
        if (str6 != null) {}
        for (paramAnonymousJSONObject = Uri.parse(str6);; paramAnonymousJSONObject = null)
        {
          Profile.a(new Profile(str1, str2, str3, str4, str5, paramAnonymousJSONObject));
          return;
        }
      }
    });
  }
  
  public String c()
  {
    return e;
  }
  
  JSONObject d()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("id", a);
      localJSONObject.put("first_name", b);
      localJSONObject.put("middle_name", c);
      localJSONObject.put("last_name", d);
      localJSONObject.put("name", e);
      if (f != null) {
        localJSONObject.put("link_uri", f.toString());
      }
      return localJSONObject;
    }
    catch (JSONException localJSONException) {}
    return null;
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
      do
      {
        do
        {
          do
          {
            do
            {
              return true;
              if (!(paramObject instanceof Profile)) {
                return false;
              }
              paramObject = (Profile)paramObject;
              if ((!a.equals(a)) || (b != null)) {
                break;
              }
            } while (b == null);
            return false;
            if ((!b.equals(b)) || (c != null)) {
              break;
            }
          } while (c == null);
          return false;
          if ((!c.equals(c)) || (d != null)) {
            break;
          }
        } while (d == null);
        return false;
        if ((!d.equals(d)) || (e != null)) {
          break;
        }
      } while (e == null);
      return false;
      if ((!e.equals(e)) || (f != null)) {
        break;
      }
    } while (f == null);
    return false;
    return f.equals(f);
  }
  
  public int hashCode()
  {
    int j = a.hashCode() + 527;
    int i = j;
    if (b != null) {
      i = j * 31 + b.hashCode();
    }
    j = i;
    if (c != null) {
      j = i * 31 + c.hashCode();
    }
    i = j;
    if (d != null) {
      i = j * 31 + d.hashCode();
    }
    j = i;
    if (e != null) {
      j = i * 31 + e.hashCode();
    }
    i = j;
    if (f != null) {
      i = j * 31 + f.hashCode();
    }
    return i;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    if (f == null) {}
    for (String str = null;; str = f.toString())
    {
      paramParcel.writeString(str);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.Profile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */