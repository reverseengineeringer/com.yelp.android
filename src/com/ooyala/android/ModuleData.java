package com.ooyala.android;

import java.util.Map;

public class ModuleData
{
  protected Map<String, String> _metadata;
  protected String _name;
  protected String _type;
  
  public ModuleData(String paramString1, String paramString2, Map<String, String> paramMap)
  {
    _name = paramString1;
    _type = paramString2;
    _metadata = paramMap;
  }
  
  public Map<String, String> getMetadata()
  {
    return _metadata;
  }
  
  public String getName()
  {
    return _name;
  }
  
  public String getType()
  {
    return _type;
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.ModuleData
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */