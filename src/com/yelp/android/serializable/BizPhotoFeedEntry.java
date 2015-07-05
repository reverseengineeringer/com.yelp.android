package com.yelp.android.serializable;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.Html;
import android.text.Spanned;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.android.util.StringUtils;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class BizPhotoFeedEntry
  extends FeedEntry
{
  public static final Parcelable.Creator<BizPhotoFeedEntry> CREATOR = new j();
  public static String PHOTO_REMOVED = "photo_removed";
  private final Date mDateModified;
  public ArrayList<Photo> mPhotos;
  private final String mUserName;
  
  protected BizPhotoFeedEntry(Parcel paramParcel)
  {
    super(paramParcel);
    mUserName = paramParcel.readString();
    long l = paramParcel.readLong();
    if (l != -1L) {}
    for (Date localDate = new Date(l);; localDate = null)
    {
      mDateModified = localDate;
      mPhotos = paramParcel.createTypedArrayList(Photo.CREATOR);
      initializePhotosBusinessId();
      return;
    }
  }
  
  public BizPhotoFeedEntry(JSONArray paramJSONArray, ApiRequest<?, ?, ?> paramApiRequest)
  {
    super(paramJSONArray.getJSONObject(0), paramApiRequest);
    paramApiRequest = paramJSONArray.getJSONObject(0);
    mUserName = mUser.getUserName();
    mDateModified = JsonUtil.parseTimestamp(paramApiRequest, "timestamp");
    paramApiRequest = new JSONArray();
    while (i < paramJSONArray.length())
    {
      paramApiRequest.put(paramJSONArray.getJSONObject(i).getJSONObject("business_photo"));
      i += 1;
    }
    mPhotos = JsonUtil.parseJsonList(paramApiRequest, Photo.CREATOR);
    initializePhotosBusinessId();
  }
  
  public BizPhotoFeedEntry(JSONObject paramJSONObject, ApiRequest<?, ?, ?> paramApiRequest)
  {
    super(paramJSONObject, paramApiRequest);
    if (paramJSONObject.isNull("user"))
    {
      mUserName = paramJSONObject.getString("user_name");
      mDateModified = JsonUtil.parseTimestamp(paramJSONObject, "time_modified");
      mPhotos = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("photos"), Photo.CREATOR);
    }
    for (;;)
    {
      initializePhotosBusinessId();
      return;
      mUserName = mUser.getUserName();
      mPhotos = JsonUtil.parseJsonList(paramJSONObject.getJSONObject("business").getJSONArray("photos"), Photo.CREATOR);
      mDateModified = JsonUtil.parseTimestamp(paramJSONObject, "timestamp");
    }
  }
  
  private void initializePhotosBusinessId()
  {
    Iterator localIterator = mPhotos.iterator();
    while (localIterator.hasNext())
    {
      Photo localPhoto = (Photo)localIterator.next();
      if (mBusinessId == null) {
        mBusinessId = getId();
      }
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Spanned getActivitySubtitle(Context paramContext)
  {
    return Html.fromHtml(StringUtils.a(paramContext, 2131623964, mPhotos.size(), new Object[] { "<b>" + getBusiness().getDisplayName() + "</b>" }));
  }
  
  public Map<String, Object> getBusinessIriParams()
  {
    Map localMap = super.getBusinessIriParams();
    setupIriParams(localMap);
    return localMap;
  }
  
  public Date getDate()
  {
    return mDateModified;
  }
  
  public FeedEntry.ItemType getEventIriItemType()
  {
    return FeedEntry.ItemType.BusinessPhoto;
  }
  
  public int getIconResource()
  {
    return 2130838252;
  }
  
  public String getId()
  {
    return mBusiness.getId();
  }
  
  public String getInfoString()
  {
    return null;
  }
  
  public LatLng getLocation()
  {
    return mBusiness.getLatLng();
  }
  
  public ArrayList<Photo> getMedia()
  {
    return mPhotos;
  }
  
  public float getRating()
  {
    return -1.0F;
  }
  
  public String getSubTitle(Context paramContext, FeedType paramFeedType)
  {
    if (paramFeedType == FeedType.ME) {
      return StringUtils.a(paramContext, 2131623961, mPhotos.size(), new Object[0]);
    }
    return StringUtils.a(paramContext, 2131623967, mPhotos.size(), new Object[] { mUserName });
  }
  
  public Map<String, Object> getUserIriParams()
  {
    HashMap localHashMap = new HashMap();
    if (mPhotos.size() > 0) {
      localHashMap.put("user_id", ((Photo)mPhotos.get(0)).getUserId());
    }
    setupIriParams(localHashMap);
    return localHashMap;
  }
  
  public boolean isSupported()
  {
    return true;
  }
  
  public void setPhotos(ArrayList<Photo> paramArrayList)
  {
    mPhotos = paramArrayList;
  }
  
  public Map<String, Object> setupIriParams(Map<String, Object> paramMap)
  {
    paramMap.put("item_type", "photo");
    if (mPhotos.size() > 0) {
      paramMap.put("item_id", ((Photo)mPhotos.get(0)).getId());
    }
    return paramMap;
  }
  
  public void updateContent(Bundle paramBundle)
  {
    if (paramBundle.containsKey(PHOTO_REMOVED))
    {
      paramBundle = (Photo)paramBundle.getParcelable(PHOTO_REMOVED);
      mPhotos.remove(paramBundle);
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(mUserName);
    if (mDateModified != null) {}
    for (long l = mDateModified.getTime();; l = -1L)
    {
      paramParcel.writeLong(l);
      paramParcel.writeTypedList(mPhotos);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.BizPhotoFeedEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */