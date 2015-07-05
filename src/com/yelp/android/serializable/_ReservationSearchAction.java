package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _ReservationSearchAction
  implements Parcelable
{
  protected int[] mBorderColor;
  protected int[] mDefaultColorBottom;
  protected int[] mDefaultColorTop;
  protected boolean mIsDisabled;
  protected int mPartySize;
  protected int[] mSelectedColorBottom;
  protected int[] mSelectedColorTop;
  protected String mText;
  protected int[] mTextColor;
  protected Date mTime;
  protected String mType;
  
  protected _ReservationSearchAction() {}
  
  protected _ReservationSearchAction(Date paramDate, String paramString1, String paramString2, boolean paramBoolean, int paramInt, int[] paramArrayOfInt1, int[] paramArrayOfInt2, int[] paramArrayOfInt3, int[] paramArrayOfInt4, int[] paramArrayOfInt5, int[] paramArrayOfInt6)
  {
    this();
    mTime = paramDate;
    mType = paramString1;
    mText = paramString2;
    mIsDisabled = paramBoolean;
    mPartySize = paramInt;
    mTextColor = paramArrayOfInt1;
    mDefaultColorTop = paramArrayOfInt2;
    mDefaultColorBottom = paramArrayOfInt3;
    mSelectedColorTop = paramArrayOfInt4;
    mSelectedColorBottom = paramArrayOfInt5;
    mBorderColor = paramArrayOfInt6;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int[] getBorderColor()
  {
    return mBorderColor;
  }
  
  public int[] getDefaultColorBottom()
  {
    return mDefaultColorBottom;
  }
  
  public int[] getDefaultColorTop()
  {
    return mDefaultColorTop;
  }
  
  public int getPartySize()
  {
    return mPartySize;
  }
  
  public int[] getSelectedColorBottom()
  {
    return mSelectedColorBottom;
  }
  
  public int[] getSelectedColorTop()
  {
    return mSelectedColorTop;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public int[] getTextColor()
  {
    return mTextColor;
  }
  
  public Date getTime()
  {
    return mTime;
  }
  
  public String getType()
  {
    return mType;
  }
  
  public boolean isDisabled()
  {
    return mIsDisabled;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    int j = 0;
    if (!paramJSONObject.isNull("time")) {
      mTime = JsonUtil.parseTimestamp(paramJSONObject, "time");
    }
    if (!paramJSONObject.isNull("type")) {
      mType = paramJSONObject.optString("type");
    }
    if (!paramJSONObject.isNull("text")) {
      mText = paramJSONObject.optString("text");
    }
    mIsDisabled = paramJSONObject.optBoolean("is_disabled");
    mPartySize = paramJSONObject.optInt("party_size");
    JSONArray localJSONArray;
    int k;
    int i;
    if (!paramJSONObject.isNull("text_color"))
    {
      localJSONArray = paramJSONObject.getJSONArray("text_color");
      k = localJSONArray.length();
      mTextColor = new int[k];
      i = 0;
      while (i < k)
      {
        mTextColor[i] = localJSONArray.getInt(i);
        i += 1;
      }
    }
    if (!paramJSONObject.isNull("default_color_top"))
    {
      localJSONArray = paramJSONObject.getJSONArray("default_color_top");
      k = localJSONArray.length();
      mDefaultColorTop = new int[k];
      i = 0;
      while (i < k)
      {
        mDefaultColorTop[i] = localJSONArray.getInt(i);
        i += 1;
      }
    }
    if (!paramJSONObject.isNull("default_color_bottom"))
    {
      localJSONArray = paramJSONObject.getJSONArray("default_color_bottom");
      k = localJSONArray.length();
      mDefaultColorBottom = new int[k];
      i = 0;
      while (i < k)
      {
        mDefaultColorBottom[i] = localJSONArray.getInt(i);
        i += 1;
      }
    }
    if (!paramJSONObject.isNull("selected_color_top"))
    {
      localJSONArray = paramJSONObject.getJSONArray("selected_color_top");
      k = localJSONArray.length();
      mSelectedColorTop = new int[k];
      i = 0;
      while (i < k)
      {
        mSelectedColorTop[i] = localJSONArray.getInt(i);
        i += 1;
      }
    }
    if (!paramJSONObject.isNull("selected_color_bottom"))
    {
      localJSONArray = paramJSONObject.getJSONArray("selected_color_bottom");
      k = localJSONArray.length();
      mSelectedColorBottom = new int[k];
      i = 0;
      while (i < k)
      {
        mSelectedColorBottom[i] = localJSONArray.getInt(i);
        i += 1;
      }
    }
    if (!paramJSONObject.isNull("border_color"))
    {
      paramJSONObject = paramJSONObject.getJSONArray("border_color");
      k = paramJSONObject.length();
      mBorderColor = new int[k];
      i = j;
      while (i < k)
      {
        mBorderColor[i] = paramJSONObject.getInt(i);
        i += 1;
      }
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTime = new Date(l);
    }
    mType = paramParcel.readString();
    mText = paramParcel.readString();
    mIsDisabled = paramParcel.createBooleanArray()[0];
    mPartySize = paramParcel.readInt();
    mTextColor = paramParcel.createIntArray();
    mDefaultColorTop = paramParcel.createIntArray();
    mDefaultColorBottom = paramParcel.createIntArray();
    mSelectedColorTop = paramParcel.createIntArray();
    mSelectedColorBottom = paramParcel.createIntArray();
    mBorderColor = paramParcel.createIntArray();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mTime == null) {}
    for (long l = -2147483648L;; l = mTime.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeString(mType);
      paramParcel.writeString(mText);
      paramParcel.writeBooleanArray(new boolean[] { mIsDisabled });
      paramParcel.writeInt(mPartySize);
      paramParcel.writeIntArray(mTextColor);
      paramParcel.writeIntArray(mDefaultColorTop);
      paramParcel.writeIntArray(mDefaultColorBottom);
      paramParcel.writeIntArray(mSelectedColorTop);
      paramParcel.writeIntArray(mSelectedColorBottom);
      paramParcel.writeIntArray(mBorderColor);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ReservationSearchAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */