package com.yelp.android.appdata;

import android.annotation.SuppressLint;
import com.yelp.android.util.YelpLog;

@SuppressLint({"InlinedApi"})
public enum PermissionGroup
{
  CAMERA(new String[] { "android.permission.CAMERA" }),  CONTACTS(new String[] { "android.permission.READ_CONTACTS", "android.permission.GET_ACCOUNTS" }),  LOCATION(new String[] { "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION" }),  MICROPHONE(new String[] { "android.permission.RECORD_AUDIO" }),  STORAGE(new String[] { "android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE" });
  
  public final String[] permissions;
  
  private PermissionGroup(String... paramVarArgs)
  {
    permissions = paramVarArgs;
  }
  
  public static PermissionGroup find(String paramString)
  {
    PermissionGroup[] arrayOfPermissionGroup = values();
    int k = arrayOfPermissionGroup.length;
    int i = 0;
    while (i < k)
    {
      PermissionGroup localPermissionGroup = arrayOfPermissionGroup[i];
      String[] arrayOfString = permissions;
      int m = arrayOfString.length;
      int j = 0;
      while (j < m)
      {
        if (arrayOfString[j].equals(paramString)) {
          return localPermissionGroup;
        }
        j += 1;
      }
      i += 1;
    }
    paramString = new IllegalArgumentException("Provided permission does not belong to any of the defined permission groups.");
    YelpLog.remoteError(paramString);
    throw paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.PermissionGroup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */