package com.yelp.parcelgen;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class JsonParser<E>
{
  public static final int ARRAY_TYPE = 2;
  public static final int OBJECT_TYPE = 1;
  
  public int getElementType()
  {
    return 1;
  }
  
  public E make(JSONArray paramJSONArray, int paramInt)
  {
    try
    {
      if (getElementType() == 1) {
        return (E)parse(paramJSONArray.getJSONObject(paramInt));
      }
      paramJSONArray = parse(paramJSONArray.getJSONArray(paramInt));
      return paramJSONArray;
    }
    catch (JSONException paramJSONArray) {}
    return null;
  }
  
  public E parse(JSONArray paramJSONArray)
  {
    if (getElementType() != 2) {
      throw new UnsupportedOperationException("This JsonParser requires you to call parse(JSONObject): " + getClass().getCanonicalName());
    }
    throw new UnsupportedOperationException("Must implement parse(JSONArray): " + getClass().getCanonicalName());
  }
  
  public E parse(JSONObject paramJSONObject)
  {
    if (getElementType() != 1) {
      throw new UnsupportedOperationException("This JsonParser requires you to call parse(JSONArray): " + getClass().getCanonicalName());
    }
    throw new UnsupportedOperationException("Must implement parse(JSONObject): " + getClass().getCanonicalName());
  }
}

/* Location:
 * Qualified Name:     com.yelp.parcelgen.JsonParser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */