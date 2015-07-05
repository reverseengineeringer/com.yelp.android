package com.facebook.internal;

import java.util.Map;

public class Utility$FetchedAppSettings
{
  private Map<String, Map<String, Utility.DialogFeatureConfig>> dialogConfigMap;
  private String nuxContent;
  private boolean nuxEnabled;
  private boolean supportsAttribution;
  private boolean supportsImplicitLogging;
  
  private Utility$FetchedAppSettings(boolean paramBoolean1, boolean paramBoolean2, String paramString, boolean paramBoolean3, Map<String, Map<String, Utility.DialogFeatureConfig>> paramMap)
  {
    supportsAttribution = paramBoolean1;
    supportsImplicitLogging = paramBoolean2;
    nuxContent = paramString;
    nuxEnabled = paramBoolean3;
    dialogConfigMap = paramMap;
  }
  
  public Map<String, Map<String, Utility.DialogFeatureConfig>> getDialogConfigurations()
  {
    return dialogConfigMap;
  }
  
  public String getNuxContent()
  {
    return nuxContent;
  }
  
  public boolean getNuxEnabled()
  {
    return nuxEnabled;
  }
  
  public boolean supportsAttribution()
  {
    return supportsAttribution;
  }
  
  public boolean supportsImplicitLogging()
  {
    return supportsImplicitLogging;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.Utility.FetchedAppSettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */