package com.yelp.android.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.Checkable;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.ActivityRetryCheckInShare;
import com.yelp.android.ui.activities.ActivityRetryShare;
import java.util.ArrayList;
import java.util.List;

public class p
{
  public static Intent a(Context paramContext, User paramUser, List<ShareRequest.ShareType> paramList, Class<? extends ActivityRetryShare> paramClass)
  {
    ArrayList localArrayList1 = new ArrayList(paramList);
    ArrayList localArrayList2 = new ArrayList(3);
    if ((!paramUser.o()) && (paramList.contains(ShareRequest.ShareType.FACEBOOK)))
    {
      localArrayList2.add(ShareRequest.ShareType.FACEBOOK);
      localArrayList1.remove(ShareRequest.ShareType.FACEBOOK);
    }
    while (!localArrayList2.isEmpty())
    {
      paramUser = ActivityRetryShare.a(paramContext, localArrayList2, localArrayList1);
      paramUser.setClass(paramContext, paramClass);
      return paramUser;
      if ((!paramUser.p()) && (paramList.contains(ShareRequest.ShareType.TWITTER)))
      {
        localArrayList2.add(ShareRequest.ShareType.TWITTER);
        localArrayList1.remove(ShareRequest.ShareType.TWITTER);
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
  
  public static void a(Activity paramActivity, User paramUser, boolean paramBoolean, Checkable paramCheckable1, Checkable paramCheckable2, Checkable paramCheckable3)
  {
    boolean bool3 = true;
    paramActivity = paramActivity.getPreferences(0);
    boolean bool2;
    boolean bool1;
    if (paramUser != null)
    {
      bool2 = paramUser.o();
      bool1 = paramUser.p();
    }
    for (;;)
    {
      if (paramCheckable1 != null) {
        paramCheckable1.setChecked(paramActivity.getBoolean(ShareRequest.ShareType.YELP.name(), true));
      }
      if (paramCheckable2 != null)
      {
        if ((bool2) && (paramActivity.getBoolean(ShareRequest.ShareType.FACEBOOK.name(), paramBoolean)))
        {
          bool2 = true;
          paramCheckable2.setChecked(bool2);
        }
      }
      else if (paramCheckable3 != null) {
        if ((!bool1) || (!paramActivity.getBoolean(ShareRequest.ShareType.TWITTER.name(), paramBoolean))) {
          break label130;
        }
      }
      label130:
      for (paramBoolean = bool3;; paramBoolean = false)
      {
        paramCheckable3.setChecked(paramBoolean);
        return;
        bool2 = false;
        break;
      }
      bool1 = false;
      bool2 = false;
    }
  }
  
  public static boolean a(Activity paramActivity, User paramUser, List<ShareRequest.ShareType> paramList)
  {
    paramUser = a(paramActivity, paramUser, paramList, ActivityRetryCheckInShare.class);
    if (paramUser == null) {
      return false;
    }
    paramActivity.startActivityForResult(paramUser, 1005);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */