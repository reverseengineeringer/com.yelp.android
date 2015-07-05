package com.yelp.android.services;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.widget.ListAdapter;
import com.yelp.android.analytics.h;
import com.yelp.android.appdata.AppData;
import com.yelp.android.av.a;
import java.util.Collections;
import java.util.List;

public class l
{
  private static final Intent a = new Intent("android.intent.action.SEND").setType("text/plain").addCategory("android.intent.category.DEFAULT");
  
  public static Dialog a(Activity paramActivity, q paramq, int paramInt)
  {
    Object localObject = a(paramActivity);
    localObject = new n(paramActivity, paramActivity.getPackageManager(), (List)localObject);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramActivity);
    localBuilder.setTitle(paramInt);
    localBuilder.setAdapter((ListAdapter)localObject, new m(paramActivity, (n)localObject, paramq));
    return localBuilder.create();
  }
  
  public static List<ResolveInfo> a(Activity paramActivity)
  {
    List localList = paramActivity.getPackageManager().queryIntentActivities(a, 0);
    Collections.sort(localList, Collections.reverseOrder(new p(paramActivity.getPackageManager())));
    return localList;
  }
  
  private static void b(Context paramContext, n paramn, int paramInt, q paramq)
  {
    paramn = getItemactivityInfo;
    o localo = new o(paramn);
    ComponentName localComponentName = new ComponentName(applicationInfo.packageName, name);
    Intent localIntent = new Intent(a);
    localIntent.setComponent(localComponentName);
    localIntent.setType("text/plain");
    paramq.a(paramContext, localo, localIntent);
    paramq = paramq.a();
    AppData.b().k().a(paramq.a("app_id", applicationInfo.packageName).a());
    paramContext.startActivity(localIntent);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */