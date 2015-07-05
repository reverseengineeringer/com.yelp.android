package com.yelp.android.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.Checkable;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.ui.activities.ActivityRetryShare;
import java.util.ArrayList;
import java.util.List;

public class z
{
  public static Intent a(Context paramContext, RemoteConfigPreferences paramRemoteConfigPreferences, List<ShareRequest.ShareType> paramList, Class<? extends ActivityRetryShare> paramClass)
  {
    ArrayList localArrayList = new ArrayList(3);
    if (paramRemoteConfigPreferences != null)
    {
      if ((paramRemoteConfigPreferences.i()) || (!paramList.contains(ShareRequest.ShareType.FACEBOOK))) {
        break label77;
      }
      localArrayList.add(ShareRequest.ShareType.FACEBOOK);
      paramList.remove(ShareRequest.ShareType.FACEBOOK);
    }
    while (!localArrayList.isEmpty())
    {
      paramRemoteConfigPreferences = ActivityRetryShare.a(paramContext, localArrayList, paramList);
      paramRemoteConfigPreferences.setClass(paramContext, paramClass);
      return paramRemoteConfigPreferences;
      label77:
      if ((!paramRemoteConfigPreferences.h()) && (paramList.contains(ShareRequest.ShareType.TWITTER)))
      {
        localArrayList.add(ShareRequest.ShareType.TWITTER);
        paramList.remove(ShareRequest.ShareType.TWITTER);
      }
    }
    return null;
  }
  
  public static List<ShareRequest.ShareType> a(Checkable paramCheckable1, Checkable paramCheckable2, Checkable paramCheckable3)
  {
    ArrayList localArrayList = new ArrayList(3);
    if ((paramCheckable1 != null) && (paramCheckable1.isChecked())) {
      localArrayList.add(ShareRequest.ShareType.YELP);
    }
    if ((paramCheckable2 != null) && (paramCheckable2.isChecked())) {
      localArrayList.add(ShareRequest.ShareType.FACEBOOK);
    }
    if ((paramCheckable3 != null) && (paramCheckable3.isChecked())) {
      localArrayList.add(ShareRequest.ShareType.TWITTER);
    }
    return localArrayList;
  }
  
  public static void a(Activity paramActivity, ShareRequest.ShareType paramShareType, boolean paramBoolean)
  {
    paramActivity.getPreferences(0).edit().putBoolean(paramShareType.name(), paramBoolean).commit();
  }
  
  public static void a(RemoteConfigPreferences paramRemoteConfigPreferences, SharedPreferences paramSharedPreferences, Checkable paramCheckable1, Checkable paramCheckable2, Checkable paramCheckable3)
  {
    boolean bool1 = false;
    boolean bool2;
    if (paramRemoteConfigPreferences != null)
    {
      bool2 = paramRemoteConfigPreferences.i();
      bool1 = paramRemoteConfigPreferences.h();
    }
    for (;;)
    {
      if (paramCheckable1 != null) {
        paramCheckable1.setChecked(paramSharedPreferences.getBoolean(ShareRequest.ShareType.YELP.name(), true));
      }
      if (paramCheckable2 != null) {
        paramCheckable2.setChecked(paramSharedPreferences.getBoolean(ShareRequest.ShareType.FACEBOOK.name(), bool2));
      }
      if (paramCheckable3 != null) {
        paramCheckable3.setChecked(paramSharedPreferences.getBoolean(ShareRequest.ShareType.TWITTER.name(), bool1));
      }
      return;
      bool2 = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */