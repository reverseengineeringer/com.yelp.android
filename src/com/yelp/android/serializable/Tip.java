package com.yelp.android.serializable;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Parcel;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.util.StringUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Date;
import org.json.JSONObject;

public class Tip
  extends _Tip
  implements Complimentable, ay, m
{
  public static final JsonParser.DualCreator<Tip> CREATOR = new dg();
  private Bitmap mEditedBitmap;
  private Feedback mFeedback = new Feedback();
  protected String mTempId = "";
  
  protected Tip() {}
  
  public Tip(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, Date paramDate, int paramInt, ArrayList<String> paramArrayList)
  {
    this();
    mId = paramString1;
    mUserName = paramString2;
    mUserId = paramString3;
    mUserPhotoUrl = paramString4;
    mText = paramString5;
    mTime = paramDate;
    mPositiveFeedback = paramInt;
    mPrivateFeedback = new ArrayList(paramArrayList);
  }
  
  public boolean equalsId(ay paramay)
  {
    if ((paramay == null) || (!(paramay instanceof Tip))) {}
    label85:
    label88:
    for (;;)
    {
      return false;
      paramay = (Tip)paramay;
      int i;
      if ((!TextUtils.isEmpty(paramay.getId())) && (paramay.getId().equals(mId)))
      {
        i = 1;
        if ((TextUtils.isEmpty(paramay.getTempId())) || (!paramay.getTempId().equals(mTempId))) {
          break label85;
        }
      }
      for (int j = 1;; j = 0)
      {
        if ((i == 0) && (j == 0)) {
          break label88;
        }
        return true;
        i = 0;
        break;
      }
    }
  }
  
  public CharSequence getCountsText(Context paramContext)
  {
    int i = getComplimentCount();
    int j = getFeedback().getPositiveFeedbackCount();
    String str = "";
    if (i <= 0)
    {
      localObject = str;
      if (j <= 0) {}
    }
    else
    {
      if (j > 0) {
        str = StringUtils.a(paramContext, 2131624003, j, new Object[] { Boolean.valueOf(true) });
      }
      if (i <= 0) {
        break label202;
      }
      str = StringUtils.a(paramContext, 2131623988, i, new Object[] { Boolean.valueOf(true) });
    }
    label202:
    for (Object localObject = str;; localObject = null)
    {
      if ((i > 0) && (j > 0)) {
        localObject = TextUtils.join(" ● ", new CharSequence[] { localObject, StringUtils.a(paramContext, 2131623995, j, new Object[] { Boolean.valueOf(true) }) });
      }
      for (;;)
      {
        paramContext = new StyleSpan(1);
        localObject = new SpannableStringBuilder((CharSequence)localObject);
        ((SpannableStringBuilder)localObject).setSpan(paramContext, 0, ((CharSequence)localObject).length(), 18);
        return (CharSequence)localObject;
        localObject = str;
        if (j == 1)
        {
          localObject = str;
          if (getFeedback().isLikedByUser()) {
            localObject = paramContext.getText(2131166917);
          }
        }
      }
    }
  }
  
  public Bitmap getEditedBitmap()
  {
    return mEditedBitmap;
  }
  
  public Feedback getFeedback()
  {
    return mFeedback;
  }
  
  public String getTempId()
  {
    return mTempId;
  }
  
  public String getTipOfTheDayDateFormat(Context paramContext, boolean paramBoolean)
  {
    if (mTipOfTheDayTime == null) {
      return null;
    }
    if (paramBoolean) {
      return android.text.format.DateFormat.getLongDateFormat(paramContext).format(mTipOfTheDayTime);
    }
    return android.text.format.DateFormat.getDateFormat(paramContext).format(mTipOfTheDayTime);
  }
  
  public Compliment.ComplimentableItemType getType()
  {
    return Compliment.ComplimentableItemType.QUICK_TIP;
  }
  
  public String getUserId()
  {
    if (mUserId == null) {
      mUserId = AppData.b().m().b();
    }
    return mUserId;
  }
  
  public String getUserName()
  {
    if (mUserName == null)
    {
      dc localdc = AppData.b().m();
      if (getUserId().equals(localdc.b())) {
        mUserName = localdc.t();
      }
    }
    return mUserName;
  }
  
  public boolean isTipTemporary()
  {
    return TextUtils.isEmpty(mId);
  }
  
  public void makeFirstToTip()
  {
    mIsFirstTip = true;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    mFeedback = new Feedback(getPrivateFeedback(), getPositiveFeedback());
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mFeedback = ((Feedback)paramParcel.readParcelable(Feedback.class.getClassLoader()));
    mEditedBitmap = ((Bitmap)paramParcel.readParcelable(Bitmap.class.getClassLoader()));
    mTempId = paramParcel.readString();
  }
  
  public void setBusinessId(String paramString)
  {
    mBusinessId = paramString;
  }
  
  public void setBusinessName(String paramString)
  {
    mBusinessName = paramString;
  }
  
  public void setDateModified(Date paramDate)
  {
    mTime = paramDate;
  }
  
  public void setEditedBitmap(Bitmap paramBitmap)
  {
    mEditedBitmap = paramBitmap;
  }
  
  public void setId(String paramString)
  {
    mId = paramString;
  }
  
  public void setPhoto(Photo paramPhoto)
  {
    mPhoto = paramPhoto;
  }
  
  public void setTempId(String paramString)
  {
    mTempId = paramString;
  }
  
  public void setText(String paramString)
  {
    mText = paramString;
  }
  
  public void setUser(User paramUser)
  {
    if (paramUser == null) {
      return;
    }
    mUserName = paramUser.getUserName();
    mUserPhotoUrl = paramUser.getUserPhotoUrl();
    mUserId = paramUser.getId();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(mFeedback, paramInt);
    paramParcel.writeParcelable(mEditedBitmap, paramInt);
    paramParcel.writeString(mTempId);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Tip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */