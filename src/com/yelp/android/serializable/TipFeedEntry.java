package com.yelp.android.serializable;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.Html;
import android.text.Spanned;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.android.ui.activities.tips.TipComplimentsLikes;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Date;
import org.json.JSONObject;

public class TipFeedEntry
  extends BusinessInfoProviderFeedEntry
{
  public static String CONTENT_KEY = "qt_content";
  public static final Parcelable.Creator<TipFeedEntry> CREATOR = new dh();
  public static String PHOTO_KEY = "qt_photo";
  private Boolean mIsMine;
  protected Tip mTip;
  
  protected TipFeedEntry(Parcel paramParcel)
  {
    super(paramParcel);
    mTip = ((Tip)paramParcel.readValue(Tip.class.getClassLoader()));
    mIsMine = ((Boolean)paramParcel.readValue(Boolean.class.getClassLoader()));
  }
  
  public TipFeedEntry(Tip paramTip, ApiRequest<?, ?, ?> paramApiRequest)
  {
    mTip = paramTip;
  }
  
  public TipFeedEntry(JSONObject paramJSONObject, ApiRequest<?, ?, ?> paramApiRequest)
  {
    super(paramJSONObject, paramApiRequest);
    mTip = ((Tip)Tip.CREATOR.parse(paramJSONObject.getJSONObject("quicktip")));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Spanned getActivitySubtitle(Context paramContext)
  {
    return Html.fromHtml(paramContext.getString(2131166717, new Object[] { "<b>" + getBusinessName() + "</b>" }));
  }
  
  public Photo getContentPhoto()
  {
    return mTip.getPhoto();
  }
  
  public Date getDate()
  {
    return mTip.getTime();
  }
  
  public Bitmap getEditedBitmap()
  {
    return mTip.getEditedBitmap();
  }
  
  public FeedEntry.ItemType getEventIriItemType()
  {
    return FeedEntry.ItemType.QuickTip;
  }
  
  public int getIconResource()
  {
    return 2130838498;
  }
  
  public String getId()
  {
    return mTip.getId();
  }
  
  public m getInfoProvider()
  {
    return mTip;
  }
  
  public String getInfoString()
  {
    return mTip.getText();
  }
  
  public Intent getIntentForClick(Context paramContext)
  {
    return TipComplimentsLikes.a(paramContext, mTip, getBusinessName());
  }
  
  public String getPhotoURL(FeedType paramFeedType)
  {
    if (paramFeedType == FeedType.FRIEND) {
      return mTip.getUserPhotoUrl().toString();
    }
    return super.getPhotoURL(paramFeedType);
  }
  
  public float getRating()
  {
    return -1.0F;
  }
  
  public int getReviewCount()
  {
    return -1;
  }
  
  public String getSubTitle(Context paramContext, FeedType paramFeedType)
  {
    if (paramFeedType == FeedType.ME) {
      return paramContext.getString(2131166150);
    }
    return paramContext.getString(2131166710, new Object[] { mTip.getUserName() });
  }
  
  public int getTextMaxLineCount()
  {
    return Integer.MAX_VALUE;
  }
  
  public Tip getTip()
  {
    return mTip;
  }
  
  protected String getUserIdForTip()
  {
    return mTip.getUserId();
  }
  
  public boolean isFromLoggedInUser()
  {
    if (mIsMine == null) {
      mIsMine = Boolean.valueOf(getUserIdForTip().equals(AppData.b().m().b()));
    }
    return mIsMine.booleanValue();
  }
  
  public boolean isSupported()
  {
    return true;
  }
  
  public void updateContent(Bundle paramBundle)
  {
    mTip.mText = ((Tip)paramBundle.getParcelable(CONTENT_KEY)).getText();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeValue(mTip);
    paramParcel.writeValue(mIsMine);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.TipFeedEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */