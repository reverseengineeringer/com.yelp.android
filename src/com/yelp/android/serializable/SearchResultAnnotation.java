package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONArray;
import org.json.JSONObject;

public class SearchResultAnnotation
  extends _SearchResultAnnotation
{
  public static final JsonParser.DualCreator<SearchResultAnnotation> CREATOR = new cy();
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool3 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    label130:
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    return bool1;
                    bool1 = bool3;
                  } while (paramObject == null);
                  bool1 = bool3;
                } while (getClass() != paramObject.getClass());
                paramObject = (SearchResultAnnotation)paramObject;
                bool1 = bool3;
              } while (getRedVal() != ((SearchResultAnnotation)paramObject).getRedVal());
              bool1 = bool3;
            } while (getBlueVal() != ((SearchResultAnnotation)paramObject).getBlueVal());
            bool1 = bool3;
          } while (getGreenVal() != ((SearchResultAnnotation)paramObject).getGreenVal());
          if (getType() == null) {
            break;
          }
          bool1 = bool3;
        } while (!getType().equals(((SearchResultAnnotation)paramObject).getType()));
        if (getTitle() == null) {
          break label184;
        }
        bool1 = bool3;
      } while (!getTitle().equals(((SearchResultAnnotation)paramObject).getTitle()));
      if (getImagePath() == null) {
        break label193;
      }
      bool1 = bool3;
    } while (!getImagePath().equals(((SearchResultAnnotation)paramObject).getImagePath()));
    label154:
    if (getImageUrl() != null) {
      bool1 = getImageUrl().equals(((SearchResultAnnotation)paramObject).getImageUrl());
    }
    for (;;)
    {
      return bool1;
      if (((SearchResultAnnotation)paramObject).getType() == null) {
        break;
      }
      return false;
      label184:
      if (((SearchResultAnnotation)paramObject).getTitle() == null) {
        break label130;
      }
      return false;
      label193:
      if (((SearchResultAnnotation)paramObject).getImagePath() == null) {
        break label154;
      }
      return false;
      bool1 = bool2;
      if (((SearchResultAnnotation)paramObject).getImageUrl() != null) {
        bool1 = false;
      }
    }
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    if (!paramJSONObject.isNull("title_color"))
    {
      paramJSONObject = paramJSONObject.getJSONArray("title_color");
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
 * Qualified Name:     com.yelp.android.serializable.SearchResultAnnotation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */