package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

public class Category
  implements Parcelable
{
  public static final ah<Category> CREATOR = new u();
  private String mAlias;
  private int mDatabaseId;
  private String mName;
  private int mNumChildren;
  private String mParent;
  
  public Category(Category paramCategory)
  {
    this(paramCategory.getName(), paramCategory.getAlias(), paramCategory.getParent(), paramCategory.getDatabaseId());
  }
  
  public Category(String paramString1, String paramString2, int paramInt)
  {
    mName = paramString1;
    mAlias = paramString2;
    mDatabaseId = paramInt;
    mNumChildren = 0;
  }
  
  public Category(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    this(paramString1, paramString2, paramInt);
    mParent = paramString3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          return bool1;
          bool1 = bool2;
        } while (paramObject == null);
        bool1 = bool2;
      } while (!(paramObject instanceof Category));
      paramObject = (Category)paramObject;
      if (mAlias != null) {
        break;
      }
      bool1 = bool2;
    } while (mAlias != null);
    return mAlias.equals(mAlias);
  }
  
  public String getAlias()
  {
    return mAlias;
  }
  
  public int getDatabaseId()
  {
    return mDatabaseId;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public int getNumChildren()
  {
    return mNumChildren;
  }
  
  public String getParent()
  {
    return mParent;
  }
  
  public int hashCode()
  {
    if (mAlias == null) {}
    for (int i = 0;; i = mAlias.hashCode()) {
      return i + 31;
    }
  }
  
  public void setNumChildren(int paramInt)
  {
    mNumChildren = paramInt;
  }
  
  public String toString()
  {
    return mAlias;
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mName != null) {
      localJSONObject.put("name", mName);
    }
    if (mAlias != null) {
      localJSONObject.put("category_filter", mAlias);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mName);
    paramParcel.writeString(mAlias);
    paramParcel.writeString(mParent);
    paramParcel.writeInt(mDatabaseId);
    paramParcel.writeInt(mNumChildren);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Category
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */