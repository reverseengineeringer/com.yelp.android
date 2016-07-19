package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.database.e;
import com.yelp.android.util.StringUtils.c;
import org.json.JSONException;
import org.json.JSONObject;

public class Category
  implements BizCategory
{
  public static final a<Category> CREATOR = new a()
  {
    public Category a(Parcel paramAnonymousParcel)
    {
      String str1 = paramAnonymousParcel.readString();
      String str2 = paramAnonymousParcel.readString();
      String str3 = paramAnonymousParcel.readString();
      int i = paramAnonymousParcel.readInt();
      int j = paramAnonymousParcel.readInt();
      Category localCategory = BaseYelpApplication.K().j().a(str2);
      paramAnonymousParcel = localCategory;
      if (localCategory == null)
      {
        paramAnonymousParcel = new Category(str1, str2, str3, i);
        paramAnonymousParcel.a(j);
      }
      return paramAnonymousParcel;
    }
    
    public Category a(JSONObject paramAnonymousJSONObject)
      throws JSONException
    {
      String str1 = paramAnonymousJSONObject.getString("category_filter");
      String str2 = paramAnonymousJSONObject.getString("name");
      String str3 = paramAnonymousJSONObject.optString("parent");
      Category localCategory = BaseYelpApplication.K().j().a(str1);
      paramAnonymousJSONObject = localCategory;
      if (localCategory == null) {
        paramAnonymousJSONObject = new Category(str2, str1, str3, -1);
      }
      return paramAnonymousJSONObject;
    }
    
    public Category[] a(int paramAnonymousInt)
    {
      return new Category[paramAnonymousInt];
    }
  };
  private String a;
  private String b;
  private String c;
  private int d;
  private int e;
  
  public Category(Category paramCategory)
  {
    this(paramCategory.a(), paramCategory.d(), paramCategory.c(), paramCategory.e());
  }
  
  public Category(String paramString1, String paramString2, int paramInt)
  {
    a = paramString1;
    b = paramString2;
    d = paramInt;
    e = 0;
  }
  
  public Category(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    this(paramString1, paramString2, paramInt);
    c = paramString3;
  }
  
  public String a()
  {
    return a;
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public String b()
  {
    return String.valueOf(d);
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int e()
  {
    return d;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof Category)) {
        return false;
      }
      paramObject = (Category)paramObject;
      if (b != null) {
        break;
      }
    } while (b == null);
    return false;
    return b.equals(b);
  }
  
  public int f()
  {
    return e;
  }
  
  public JSONObject g()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("name", a);
    }
    if (b != null) {
      localJSONObject.put("category_filter", b);
    }
    return localJSONObject;
  }
  
  public int hashCode()
  {
    if (b == null) {}
    for (int i = 0;; i = b.hashCode()) {
      return i + 31;
    }
  }
  
  public String toString()
  {
    return b;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeInt(d);
    paramParcel.writeInt(e);
  }
  
  public static class a
    implements StringUtils.c<Category>
  {
    public String a(Category paramCategory)
    {
      return paramCategory.d();
    }
  }
  
  public static class b
    implements StringUtils.c<Category>
  {
    public String a(Category paramCategory)
    {
      return paramCategory.a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Category
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */