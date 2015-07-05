package com.yelp.android.serializable;

import com.yelp.android.util.YelpLog;
import org.json.JSONArray;
import org.json.JSONException;

final class dv
  implements ba<YelpBookmark>
{
  public YelpBookmark a(JSONArray paramJSONArray, int paramInt)
  {
    try
    {
      paramJSONArray = new YelpBookmark(paramJSONArray.getJSONObject(paramInt));
      return paramJSONArray;
    }
    catch (JSONException paramJSONArray)
    {
      YelpLog.e("YelpBookmark", "Exception creating Bookmark", paramJSONArray);
    }
    return null;
  }
  
  public YelpBookmark[] a(int paramInt)
  {
    return new YelpBookmark[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */