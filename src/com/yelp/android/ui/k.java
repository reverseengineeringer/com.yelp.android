package com.yelp.android.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.v7.app.ActionBarActivity;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import com.yelp.android.ui.activities.ActivityConfig;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.nearby.ActivityNearby;

public class k
{
  public static void a(ActionBarActivity paramActionBarActivity, Menu paramMenu)
  {
    paramActionBarActivity.getMenuInflater().inflate(2131755027, paramMenu);
  }
  
  public static void a(Object paramObject, Menu paramMenu)
  {
    paramMenu.setGroupVisible(2131494151, false);
    paramMenu = paramMenu.findItem(2131494150);
    if (paramMenu != null) {
      paramMenu.setVisible(paramObject instanceof p);
    }
  }
  
  private static boolean a(Activity paramActivity, int paramInt)
  {
    boolean bool1 = true;
    switch (paramInt)
    {
    default: 
      bool1 = false;
    }
    do
    {
      return bool1;
      bool1 = paramActivity.getIntent().getBooleanExtra("yelp:external_request", false);
      boolean bool2 = paramActivity.isTaskRoot();
      Object localObject = paramActivity.getIntent().getStringExtra("yelp:return_to_biz_id");
      if ((bool1) && (!TextUtils.isEmpty((CharSequence)localObject)))
      {
        localObject = ActivityBusinessPage.a(paramActivity, (String)localObject);
        ((Intent)localObject).putExtra("yelp:external_request", true);
        ((Intent)localObject).addFlags(67108864);
        paramActivity.startActivity((Intent)localObject);
      }
      for (;;)
      {
        paramActivity.finish();
        return true;
        if ((bool2) || (bool1)) {
          paramActivity.startActivity(ActivityNearby.a(paramActivity));
        }
      }
      localObject = new Intent();
      ((Intent)localObject).setClass(paramActivity, ActivityConfig.class);
      paramActivity.startActivity((Intent)localObject);
      return true;
    } while (!(paramActivity instanceof p));
    ((p)paramActivity).a_();
    return true;
  }
  
  public static boolean a(Activity paramActivity, MenuItem paramMenuItem)
  {
    return a(paramActivity, paramMenuItem.getItemId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */