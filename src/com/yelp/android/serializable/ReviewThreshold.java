package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONArray;
import org.json.JSONObject;

public class ReviewThreshold
  extends _ReviewThreshold
  implements Comparable<ReviewThreshold>
{
  public static final JsonParser.DualCreator<ReviewThreshold> CREATOR = new cu();
  
  public ReviewThreshold() {}
  
  public ReviewThreshold(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    mTextAtThreshold = paramString;
    mThreshold = paramInt1;
    mRedVal = paramInt2;
    mGreenVal = paramInt3;
    mBlueVal = paramInt4;
  }
  
  public int compareTo(ReviewThreshold paramReviewThreshold)
  {
    if (paramReviewThreshold.getThreshold() == mThreshold) {
      return 0;
    }
    if (paramReviewThreshold.getThreshold() > mThreshold) {
      return 1;
    }
    return -1;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    if (!paramJSONObject.isNull("bold_color"))
    {
      paramJSONObject = paramJSONObject.getJSONArray("bold_color");
      mRedVal = paramJSONObject.getInt(0);
      mGreenVal = paramJSONObject.getInt(1);
      mBlueVal = paramJSONObject.getInt(2);
      return;
    }
    mRedVal = -1;
    mGreenVal = -1;
    mBlueVal = -1;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ReviewThreshold
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */