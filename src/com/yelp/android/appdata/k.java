package com.yelp.android.appdata;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.support.v4.app.Fragment;
import java.util.ArrayList;
import java.util.Map;

public class k
{
  public static Map<PermissionGroup, Boolean> a(String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    com.yelp.android.g.a locala = new com.yelp.android.g.a();
    int i = 0;
    if (i < paramArrayOfString.length)
    {
      PermissionGroup localPermissionGroup = PermissionGroup.find(paramArrayOfString[i]);
      if (paramArrayOfInt[i] == 0) {}
      for (boolean bool = true;; bool = false)
      {
        locala.put(localPermissionGroup, Boolean.valueOf(bool));
        i += 1;
        break;
      }
    }
    return locala;
  }
  
  @TargetApi(23)
  public static boolean a(Activity paramActivity, int paramInt, PermissionGroup... paramVarArgs)
  {
    if (f.b(23)) {}
    do
    {
      return false;
      paramVarArgs = b(paramActivity, paramVarArgs);
    } while (paramVarArgs.length == 0);
    if (a(paramActivity, paramVarArgs)) {
      paramActivity.requestPermissions(paramVarArgs, paramInt);
    }
    for (;;)
    {
      return true;
      paramActivity.requestPermissions(paramVarArgs, paramInt);
    }
  }
  
  @TargetApi(23)
  public static boolean a(Activity paramActivity, String[] paramArrayOfString)
  {
    boolean bool2 = false;
    int j = paramArrayOfString.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (paramActivity.shouldShowRequestPermissionRationale(paramArrayOfString[i])) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public static boolean a(Context paramContext, PermissionGroup paramPermissionGroup)
  {
    paramPermissionGroup = permissions;
    int j = paramPermissionGroup.length;
    int i = 0;
    while (i < j)
    {
      if (!a(paramContext, paramPermissionGroup[i])) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private static boolean a(Context paramContext, String paramString)
  {
    return android.support.v4.app.a.a(paramContext, paramString) == 0;
  }
  
  public static boolean a(Context paramContext, PermissionGroup... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      if (b(paramContext, paramVarArgs[i])) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  @TargetApi(23)
  public static boolean a(Fragment paramFragment, int paramInt, PermissionGroup... paramVarArgs)
  {
    if (f.b(23)) {}
    do
    {
      return false;
      paramVarArgs = b(paramFragment.getContext(), paramVarArgs);
    } while (paramVarArgs.length == 0);
    if (a(paramFragment.getActivity(), paramVarArgs)) {
      paramFragment.requestPermissions(paramVarArgs, paramInt);
    }
    for (;;)
    {
      return true;
      paramFragment.requestPermissions(paramVarArgs, paramInt);
    }
  }
  
  public static boolean b(Context paramContext, PermissionGroup paramPermissionGroup)
  {
    return !a(paramContext, paramPermissionGroup);
  }
  
  private static String[] b(Context paramContext, PermissionGroup[] paramArrayOfPermissionGroup)
  {
    ArrayList localArrayList = new ArrayList();
    int k = paramArrayOfPermissionGroup.length;
    int i = 0;
    while (i < k)
    {
      String[] arrayOfString = permissions;
      int m = arrayOfString.length;
      int j = 0;
      while (j < m)
      {
        String str = arrayOfString[j];
        if (!a(paramContext, str)) {
          localArrayList.add(str);
        }
        j += 1;
      }
      i += 1;
    }
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */