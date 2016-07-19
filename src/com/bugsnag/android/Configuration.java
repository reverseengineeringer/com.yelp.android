package com.bugsnag.android;

import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;

class Configuration
{
  final String apiKey;
  String appVersion;
  final Collection<BeforeNotify> beforeNotifyTasks = new LinkedList();
  String buildUUID;
  String context;
  String endpoint = "https://notify.bugsnag.com";
  String[] filters = { "password" };
  String[] ignoreClasses;
  MetaData metaData = new MetaData();
  String[] notifyReleaseStages = null;
  String[] projectPackages;
  String releaseStage;
  boolean sendThreads = true;
  
  Configuration(String paramString)
  {
    apiKey = paramString;
  }
  
  void beforeNotify(BeforeNotify paramBeforeNotify)
  {
    beforeNotifyTasks.add(paramBeforeNotify);
  }
  
  String getNotifyEndpoint()
  {
    return endpoint;
  }
  
  boolean inProject(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    String[] arrayOfString;
    int j;
    int i;
    if (projectPackages != null)
    {
      arrayOfString = projectPackages;
      j = arrayOfString.length;
      i = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      if (i < j)
      {
        String str = arrayOfString[i];
        if ((str != null) && (paramString.startsWith(str))) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      i += 1;
    }
  }
  
  boolean shouldIgnoreClass(String paramString)
  {
    if (ignoreClasses == null) {
      return false;
    }
    return Arrays.asList(ignoreClasses).contains(paramString);
  }
  
  boolean shouldNotifyForReleaseStage(String paramString)
  {
    if (notifyReleaseStages == null) {
      return true;
    }
    return Arrays.asList(notifyReleaseStages).contains(paramString);
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.Configuration
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */