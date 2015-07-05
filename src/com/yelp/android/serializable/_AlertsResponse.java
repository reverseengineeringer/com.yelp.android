package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _AlertsResponse
  implements Parcelable
{
  protected List<Alert> mAlerts;
  protected int mCount;
  protected List<Alert> mFillerAlerts;
  protected String mNextPage;
  protected String mRevision;
  protected List<Alert> mSummaryAlerts;
  protected String mTheme;
  protected int mUnreadMessageCount;
  
  protected _AlertsResponse() {}
  
  protected _AlertsResponse(List<Alert> paramList1, List<Alert> paramList2, List<Alert> paramList3, String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2)
  {
    this();
    mAlerts = paramList1;
    mFillerAlerts = paramList2;
    mSummaryAlerts = paramList3;
    mRevision = paramString1;
    mNextPage = paramString2;
    mTheme = paramString3;
    mCount = paramInt1;
    mUnreadMessageCount = paramInt2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<Alert> getAlerts()
  {
    return mAlerts;
  }
  
  public int getCount()
  {
    return mCount;
  }
  
  public List<Alert> getFillerAlerts()
  {
    return mFillerAlerts;
  }
  
  public String getNextPage()
  {
    return mNextPage;
  }
  
  public String getRevision()
  {
    return mRevision;
  }
  
  public List<Alert> getSummaryAlerts()
  {
    return mSummaryAlerts;
  }
  
  public String getTheme()
  {
    return mTheme;
  }
  
  public int getUnreadMessageCount()
  {
    return mUnreadMessageCount;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("alerts"))
    {
      mAlerts = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("alerts"), Alert.CREATOR);
      if (paramJSONObject.isNull("filler_alerts")) {
        break label163;
      }
      mFillerAlerts = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("filler_alerts"), Alert.CREATOR);
      label50:
      if (paramJSONObject.isNull("summary_alerts")) {
        break label173;
      }
    }
    label163:
    label173:
    for (mSummaryAlerts = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("summary_alerts"), Alert.CREATOR);; mSummaryAlerts = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("revision")) {
        mRevision = paramJSONObject.optString("revision");
      }
      if (!paramJSONObject.isNull("next_page")) {
        mNextPage = paramJSONObject.optString("next_page");
      }
      if (!paramJSONObject.isNull("theme")) {
        mTheme = paramJSONObject.optString("theme");
      }
      mCount = paramJSONObject.optInt("count");
      mUnreadMessageCount = paramJSONObject.optInt("unread_message_count");
      return;
      mAlerts = Collections.emptyList();
      break;
      mFillerAlerts = Collections.emptyList();
      break label50;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mAlerts = paramParcel.createTypedArrayList(Alert.CREATOR);
    mFillerAlerts = paramParcel.createTypedArrayList(Alert.CREATOR);
    mSummaryAlerts = paramParcel.createTypedArrayList(Alert.CREATOR);
    mRevision = paramParcel.readString();
    mNextPage = paramParcel.readString();
    mTheme = paramParcel.readString();
    mCount = paramParcel.readInt();
    mUnreadMessageCount = paramParcel.readInt();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    JSONArray localJSONArray;
    Iterator localIterator;
    if (mAlerts != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mAlerts.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((Alert)localIterator.next()).writeJSON());
      }
      localJSONObject.put("alerts", localJSONArray);
    }
    if (mFillerAlerts != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mFillerAlerts.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((Alert)localIterator.next()).writeJSON());
      }
      localJSONObject.put("filler_alerts", localJSONArray);
    }
    if (mSummaryAlerts != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mSummaryAlerts.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((Alert)localIterator.next()).writeJSON());
      }
      localJSONObject.put("summary_alerts", localJSONArray);
    }
    if (mRevision != null) {
      localJSONObject.put("revision", mRevision);
    }
    if (mNextPage != null) {
      localJSONObject.put("next_page", mNextPage);
    }
    if (mTheme != null) {
      localJSONObject.put("theme", mTheme);
    }
    localJSONObject.put("count", mCount);
    localJSONObject.put("unread_message_count", mUnreadMessageCount);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(mAlerts);
    paramParcel.writeTypedList(mFillerAlerts);
    paramParcel.writeTypedList(mSummaryAlerts);
    paramParcel.writeString(mRevision);
    paramParcel.writeString(mNextPage);
    paramParcel.writeString(mTheme);
    paramParcel.writeInt(mCount);
    paramParcel.writeInt(mUnreadMessageCount);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._AlertsResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */