package com.yelp.android.ui.activities.reviews;

import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import java.util.Map;
import java.util.TreeMap;

public enum PhotoPromptType
{
  REVIEW(2131166665, "review"),  TIP(2131166666, "quicktip");
  
  private static final String INTENT_KEY = "photoprompt_type";
  private String mSource;
  private int mTitleText;
  
  private PhotoPromptType(int paramInt, String paramString)
  {
    mTitleText = paramInt;
    mSource = paramString;
  }
  
  public static PhotoPromptType getType(Intent paramIntent)
  {
    return (PhotoPromptType)paramIntent.getSerializableExtra("photoprompt_type");
  }
  
  public Map<String, Object> getAdditionalParametersForIri()
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("source", mSource);
    return localTreeMap;
  }
  
  public int getTitleText()
  {
    return mTitleText;
  }
  
  public void putType(Intent paramIntent)
  {
    paramIntent.putExtra("photoprompt_type", this);
  }
  
  public void trackAddPhotoIri()
  {
    AppData.a(EventIri.ProfilePhotoPromptAddPhoto, "source", mSource);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.PhotoPromptType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */