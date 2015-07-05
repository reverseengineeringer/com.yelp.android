package com.yelp.android.serializable;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Spanned;
import android.util.Log;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.av.g;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class FeedEntry
  implements Parcelable
{
  public static final String ENTRY_DATA_KEY = "bundle to be passed";
  public static final String ENTRY_DELETED_KEY = "did we delete it?";
  public static final String ENTRY_ID_KEY = "changed entry id";
  public static final int NO_PHOTO_COUNT = -1;
  public static final int NO_RATING = -1;
  public static final int NO_REVIEW_COUNT = -1;
  private static final String TAG = "FeedEntry";
  protected YelpBusiness mBusiness;
  protected User mUser;
  
  protected FeedEntry() {}
  
  protected FeedEntry(Parcel paramParcel)
  {
    mBusiness = ((YelpBusiness)paramParcel.readValue(YelpBusiness.class.getClassLoader()));
    mUser = ((User)paramParcel.readValue(User.class.getClassLoader()));
  }
  
  protected FeedEntry(JSONObject paramJSONObject, ApiRequest<?, ?, ?> paramApiRequest)
  {
    this();
    if (paramApiRequest == null) {}
    for (paramApiRequest = null;; paramApiRequest = ((g)paramApiRequest).getRequestId())
    {
      if (!paramJSONObject.isNull("business"))
      {
        mBusiness = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
        mBusiness.setYelpRequestId(paramApiRequest);
      }
      if (!paramJSONObject.isNull("user")) {
        mUser = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("user")));
      }
      return;
    }
  }
  
  public static ArrayList<FeedEntry> createFeedEntries(JSONArray paramJSONArray, ApiRequest<?, ?, ?> paramApiRequest)
  {
    int j = paramJSONArray.length();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    Object localObject;
    JSONArray localJSONArray;
    if (i < j)
    {
      localObject = paramJSONArray.getJSONObject(i);
      JSONObject localJSONObject;
      if (((JSONObject)localObject).isNull("grouped_items"))
      {
        localJSONObject = paramJSONArray.getJSONObject(i);
        localObject = ((JSONObject)localObject).getString("type");
        localJSONArray = null;
      }
      for (;;)
      {
        try
        {
          FeedEntry.EntryType localEntryType = FeedEntry.EntryType.valueOf(((String)localObject).toUpperCase(Locale.US));
          switch (aq.a[localEntryType.ordinal()])
          {
          default: 
            localObject = null;
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          Log.d("FeedEntry", "Invalid feed entry type: " + (String)localObject + " skipping this entry.");
          continue;
          localObject = new CheckInFeedEntry(localIllegalArgumentException, paramApiRequest);
          continue;
          localObject = new BookmarkFeedEntry(localIllegalArgumentException, paramApiRequest);
          continue;
          localObject = new BizPhotoFeedEntry(localIllegalArgumentException, paramApiRequest);
          continue;
          localObject = new BizPhotoFeedEntry(localJSONArray, paramApiRequest);
          continue;
          localObject = new TipFeedEntry(localIllegalArgumentException, paramApiRequest);
          continue;
          localObject = new ReviewFeedEntry(localIllegalArgumentException, paramApiRequest);
          continue;
          localObject = new EventFeedEntry(localIllegalArgumentException, paramApiRequest);
          continue;
          localObject = new ReviewDraftFeedEntry(localIllegalArgumentException, paramApiRequest);
          continue;
          localObject = new GenericFeedEntry(localIllegalArgumentException, paramApiRequest);
          continue;
        }
        if (localObject != null) {
          localArrayList.add(localObject);
        }
        i += 1;
        break;
        localJSONArray = ((JSONObject)localObject).getJSONArray("grouped_items");
        localJSONObject = localJSONArray.getJSONObject(0);
        localObject = ((JSONObject)localObject).getString("activity_type");
      }
    }
    return localArrayList;
  }
  
  public Spanned getActivitySubtitle(Context paramContext)
  {
    return null;
  }
  
  public YelpBusiness getBusiness()
  {
    return mBusiness;
  }
  
  public String getBusinessId()
  {
    return mBusiness.getId();
  }
  
  public Map<String, Object> getBusinessIriParams()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("business_id", getBusinessId());
    return localHashMap;
  }
  
  public abstract Date getDate();
  
  public abstract FeedEntry.ItemType getEventIriItemType();
  
  abstract int getIconResource();
  
  public String getId()
  {
    return null;
  }
  
  public String getInfoString()
  {
    return mBusiness.getCategoryForBusinessSearchResult();
  }
  
  public abstract LatLng getLocation();
  
  public int getPhotoCount()
  {
    return -1;
  }
  
  public String getPhotoURL(FeedType paramFeedType)
  {
    if (paramFeedType == FeedType.FRIEND) {
      return mUser.getUserPhotoUrl();
    }
    return mBusiness.getPhotoUrl();
  }
  
  public float getRating()
  {
    return mBusiness.getAvgRating();
  }
  
  public int getReviewCount()
  {
    return mBusiness.getReviewCount();
  }
  
  public abstract String getSubTitle(Context paramContext, FeedType paramFeedType);
  
  public int getTextMaxLineCount()
  {
    return 2;
  }
  
  public String getTitle()
  {
    return mBusiness.getDisplayName();
  }
  
  public User getUser()
  {
    return mUser;
  }
  
  public Map<String, Object> getUserIriParams()
  {
    return null;
  }
  
  public boolean isSupported()
  {
    return false;
  }
  
  public void setHeaderIcon(WebImageView paramWebImageView)
  {
    int i = getIconResource();
    paramWebImageView.setImageResource(i);
    if (i == 0)
    {
      paramWebImageView.setVisibility(8);
      return;
    }
    paramWebImageView.setVisibility(0);
  }
  
  public Map<String, Object> setupIriParams(Map<String, Object> paramMap)
  {
    paramMap.put("item_type", getEventIriItemTypeiri);
    paramMap.put("item_id", getId());
    return paramMap;
  }
  
  public void updateContent(Bundle paramBundle) {}
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(mBusiness);
    paramParcel.writeValue(mUser);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.FeedEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */