package com.brightcove.player.model;

import android.util.Log;
import com.brightcove.player.util.ErrorUtil;
import java.io.Serializable;
import java.util.Map;

public abstract class MetadataObject
  implements Serializable
{
  public static final String TAG = MetadataObject.class.getSimpleName();
  protected Map<String, Object> properties;
  
  public MetadataObject(Map<String, Object> paramMap)
  {
    if (paramMap == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("propertiesRequired"));
    }
    properties = paramMap;
  }
  
  public Integer getIntegerProperty(String paramString)
  {
    if (properties.containsKey(paramString)) {
      try
      {
        Object localObject = properties.get(paramString);
        if (localObject == null) {
          break label146;
        }
        if ((localObject instanceof Integer))
        {
          localObject = (Integer)localObject;
          paramString = (String)localObject;
        }
        else
        {
          int i = Integer.parseInt(localObject.toString());
          paramString = Integer.valueOf(i);
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        Log.e(TAG, "Error converting value of <" + properties.get(paramString) + "> for key '" + paramString + "'");
        return null;
      }
    }
    Log.w(TAG, "Could not find property with name '" + paramString + "'");
    return null;
    label146:
    paramString = null;
    return paramString;
  }
  
  public Map<String, Object> getProperties()
  {
    return properties;
  }
  
  public String getStringProperty(String paramString)
  {
    if (properties.containsKey(paramString))
    {
      paramString = properties.get(paramString);
      if ((paramString instanceof String)) {
        return (String)paramString;
      }
      return null;
    }
    return null;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MetadataObject");
    localStringBuilder.append("{properties: ").append(properties.size());
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.model.MetadataObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */