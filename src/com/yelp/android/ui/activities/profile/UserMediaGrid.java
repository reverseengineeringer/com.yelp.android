package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import android.view.Menu;
import android.view.MenuItem;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.appdata.webrequests.UserPhotoRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.gw;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Photo;
import com.yelp.android.ui.activities.ActivityMediaBrowser;
import com.yelp.android.ui.activities.media.ActivityMediaContributionDelegate;
import com.yelp.android.ui.dialogs.DlgAddPhotoCaption;
import com.yelp.android.ui.util.cr;
import java.util.List;

public class UserMediaGrid
  extends ActivityMediaBrowser
{
  private Intent a;
  private final m<gw> b = new v(this);
  
  public static Intent a(Context paramContext, String paramString, UserPhotoRequest paramUserPhotoRequest, List<Photo> paramList)
  {
    paramUserPhotoRequest = ActivityMediaBrowser.a(paramContext, paramContext.getText(2131166330), null, paramUserPhotoRequest, paramList, true);
    paramUserPhotoRequest.setClass(paramContext, UserMediaGrid.class);
    paramUserPhotoRequest.putExtra("user_id_extra", paramString);
    return paramUserPhotoRequest;
  }
  
  protected void a(Context paramContext, MediaRequest paramMediaRequest, List<? extends Media> paramList, int paramInt)
  {
    startActivityForResult(UserBizMediaViewer.a(paramContext, paramMediaRequest, paramList, paramInt), 1028);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.UserPhotosGrid;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    do
    {
      do
      {
        return;
        if (paramInt2 == -1)
        {
          a = paramIntent;
          return;
        }
      } while (paramInt2 != 4);
      cr.a(getText(2131166312), 1);
      return;
    } while ((paramInt2 != -1) || (!paramIntent.getBooleanExtra("photo_added", false)));
    finish();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131493896)
    {
      startActivityForResult(ActivityMediaContributionDelegate.a(this), 1037);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    if (a != null) {
      DlgAddPhotoCaption.a(a, this, b, getSupportFragmentManager(), "dialog_add_photo");
    }
    a = null;
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    MenuItem localMenuItem = paramMenu.findItem(2131493896);
    String str = getIntent().getStringExtra("user_id_extra");
    localMenuItem.setVisible(getAppData().m().a(str));
    return super.onPrepareOptionsMenu(paramMenu);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.UserMediaGrid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */