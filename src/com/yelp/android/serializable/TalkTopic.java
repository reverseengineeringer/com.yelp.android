package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.android.services.r;
import org.json.JSONObject;

public class TalkTopic
  extends _TalkTopic
{
  public static final ah<TalkTopic> CREATOR = new df();
  private boolean mIsUserElite = false;
  
  public static TalkTopic fromEvent(Event paramEvent)
  {
    TalkTopic localTalkTopic = new TalkTopic();
    mCategoryName = paramEvent.getCategoryName();
    mId = paramEvent.getTalkTopicId();
    mText = paramEvent.getDescription();
    mTitle = paramEvent.getName();
    return localTalkTopic;
  }
  
  public int getUserMediaCount()
  {
    return getUserVideoCount() + getUserPhotoCount();
  }
  
  public boolean isUserElite()
  {
    return mIsUserElite;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    mIsUserElite = r.a(getUserEliteYears());
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mIsUserElite = paramParcel.createBooleanArray()[0];
  }
  
  public String toString()
  {
    return "id=" + mId + ", category=" + mCategoryName + ", text=" + mText;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeBooleanArray(new boolean[] { mIsUserElite });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.TalkTopic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */