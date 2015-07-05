package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.Html;
import android.text.SpannableString;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.util.StringUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Date;
import java.util.List;
import org.json.JSONObject;

public class Alert
  extends _Alert
{
  public static final JsonParser.DualCreator<Alert> CREATOR = new a();
  private static final String JSON_ALERT_TYPE = "json_alert_type";
  private AlertType mAlertType;
  private CharSequence mFormattedText;
  private CharSequence mFormattedTitle;
  
  private Alert() {}
  
  public Alert(String paramString1, String paramString2, String paramString3, AlertType paramAlertType, String paramString4)
  {
    this();
    mTitle = paramString1;
    mFormattedTitle = Html.fromHtml(mTitle);
    mText = paramString2;
    mFormattedText = Html.fromHtml(mText);
    mImageUrl = paramString3;
    mAlertType = paramAlertType;
    mOpenUrl = paramString4;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (Alert)paramObject;
        if (mActions == null)
        {
          if (mActions != null) {
            return false;
          }
        }
        else if (!mActions.equals(mActions)) {
          return false;
        }
        if (mClearOnView != mClearOnView) {
          return false;
        }
        if (mCount != mCount) {
          return false;
        }
        if (mId == null)
        {
          if (mId != null) {
            return false;
          }
        }
        else if (!mId.equals(mId)) {
          return false;
        }
        if (mImageUrl == null)
        {
          if (mImageUrl != null) {
            return false;
          }
        }
        else if (!mImageUrl.equals(mImageUrl)) {
          return false;
        }
        if (mOpenUrl == null)
        {
          if (mOpenUrl != null) {
            return false;
          }
        }
        else if (!mOpenUrl.equals(mOpenUrl)) {
          return false;
        }
        if (mPhoto == null)
        {
          if (mPhoto != null) {
            return false;
          }
        }
        else if (!mPhoto.equals(mPhoto)) {
          return false;
        }
        if (mVideo == null)
        {
          if (mVideo != null) {
            return false;
          }
        }
        else if (!mVideo.equals(mVideo)) {
          return false;
        }
        if (mText == null)
        {
          if (mText != null) {
            return false;
          }
        }
        else if (!mText.equals(mText)) {
          return false;
        }
        if (mTimeModified == null)
        {
          if (mTimeModified != null) {
            return false;
          }
        }
        else if (!mTimeModified.equals(mTimeModified)) {
          return false;
        }
        if (mTitle == null)
        {
          if (mTitle != null) {
            return false;
          }
        }
        else if (!mTitle.equals(mTitle)) {
          return false;
        }
        if (mType != null) {
          break;
        }
      } while (mType == null);
      return false;
    } while (mType.equals(mType));
    return false;
  }
  
  public AlertType getAlertType()
  {
    if (mAlertType == null) {
      mAlertType = AlertType.getTypeFromString(getType());
    }
    return mAlertType;
  }
  
  public CharSequence getFormattedText()
  {
    return mFormattedText;
  }
  
  public CharSequence getFormattedTitle()
  {
    return mFormattedTitle;
  }
  
  public int hashCode()
  {
    int i8 = 0;
    int i;
    int j;
    label23:
    int i9;
    int k;
    label38:
    int m;
    label48:
    int n;
    label58:
    int i1;
    label68:
    int i2;
    label78:
    int i3;
    label88:
    int i4;
    label98:
    int i5;
    label108:
    int i6;
    label118:
    int i7;
    if (mActions == null)
    {
      i = 0;
      if (!mClearOnView) {
        break label229;
      }
      j = 1231;
      i9 = mCount;
      if (mId != null) {
        break label236;
      }
      k = 0;
      if (mImageUrl != null) {
        break label247;
      }
      m = 0;
      if (mOpenUrl != null) {
        break label259;
      }
      n = 0;
      if (mPhoto != null) {
        break label271;
      }
      i1 = 0;
      if (mText != null) {
        break label283;
      }
      i2 = 0;
      if (mTimeModified != null) {
        break label295;
      }
      i3 = 0;
      if (mTitle != null) {
        break label307;
      }
      i4 = 0;
      if (mType != null) {
        break label319;
      }
      i5 = 0;
      if (mAlertType != null) {
        break label331;
      }
      i6 = 0;
      if (mFormattedText != null) {
        break label343;
      }
      i7 = 0;
      label128:
      if (mFormattedTitle != null) {
        break label355;
      }
    }
    for (;;)
    {
      return (i7 + (i6 + (i5 + (i4 + (i3 + (i2 + (i1 + (n + (m + (k + ((j + (i + 31) * 31) * 31 + i9) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31) * 31 + i8;
      i = mActions.hashCode();
      break;
      label229:
      j = 1237;
      break label23;
      label236:
      k = mId.hashCode();
      break label38;
      label247:
      m = mImageUrl.hashCode();
      break label48;
      label259:
      n = mOpenUrl.hashCode();
      break label58;
      label271:
      i1 = mPhoto.hashCode();
      break label68;
      label283:
      i2 = mText.hashCode();
      break label78;
      label295:
      i3 = mTimeModified.hashCode();
      break label88;
      label307:
      i4 = mTitle.hashCode();
      break label98;
      label319:
      i5 = mType.hashCode();
      break label108;
      label331:
      i6 = mAlertType.hashCode();
      break label118;
      label343:
      i7 = mFormattedText.hashCode();
      break label128;
      label355:
      i8 = mFormattedTitle.hashCode();
    }
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    if (mText != null) {
      mFormattedText = Html.fromHtml(mText);
    }
    if (mTitle != null) {
      mFormattedTitle = StringUtils.a(new SpannableString(Html.fromHtml(mTitle)), 2131361808, AppData.b());
    }
    paramJSONObject = (String)paramJSONObject.opt("json_alert_type");
    if (paramJSONObject != null) {
      mAlertType = AlertType.valueOf(paramJSONObject);
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mFormattedText = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    mFormattedTitle = ((CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(paramParcel));
    if ((mFormattedText == null) && (mText != null)) {
      mFormattedText = Html.fromHtml(mText);
    }
    if ((mFormattedTitle == null) && (mTitle != null)) {
      mFormattedTitle = Html.fromHtml(mTitle);
    }
    mAlertType = ((AlertType)paramParcel.readSerializable());
  }
  
  public void setActions(List<AlertAction> paramList)
  {
    mActions = paramList;
  }
  
  public void setVideo(Video paramVideo)
  {
    mVideo = paramVideo;
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = super.writeJSON();
    localJSONObject.put("json_alert_type", mAlertType);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    TextUtils.writeToParcel(mFormattedText, paramParcel, paramInt);
    TextUtils.writeToParcel(mFormattedTitle, paramParcel, paramInt);
    paramParcel.writeSerializable(mAlertType);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Alert
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */