package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.database.m;
import org.json.JSONObject;

final class u
  extends ah<Category>
{
  public Category a(Parcel paramParcel)
  {
    String str1 = paramParcel.readString();
    String str2 = paramParcel.readString();
    String str3 = paramParcel.readString();
    int i = paramParcel.readInt();
    int j = paramParcel.readInt();
    Category localCategory = BaseYelpApplication.z().j().a(str2);
    paramParcel = localCategory;
    if (localCategory == null)
    {
      paramParcel = new Category(str1, str2, str3, i);
      paramParcel.setNumChildren(j);
    }
    return paramParcel;
  }
  
  public Category a(JSONObject paramJSONObject)
  {
    String str1 = paramJSONObject.getString("category_filter");
    String str2 = paramJSONObject.getString("name");
    String str3 = paramJSONObject.optString("parent");
    Category localCategory = BaseYelpApplication.z().j().a(str1);
    paramJSONObject = localCategory;
    if (localCategory == null) {
      paramJSONObject = new Category(str2, str1, str3, -1);
    }
    return paramJSONObject;
  }
  
  public Category[] a(int paramInt)
  {
    return new Category[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */