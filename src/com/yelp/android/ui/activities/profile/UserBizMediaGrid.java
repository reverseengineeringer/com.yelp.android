package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.Intent;
import android.view.Menu;
import android.view.MenuItem;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.ActivityMediaBrowser;
import java.util.Collections;
import java.util.List;

public class UserBizMediaGrid
  extends ActivityMediaBrowser
{
  public static Intent a(Context paramContext, MediaRequest paramMediaRequest, String paramString, User paramUser)
  {
    paramMediaRequest = a(paramContext, paramString, null, paramMediaRequest, Collections.emptyList(), true);
    paramMediaRequest.setClass(paramContext, UserBizMediaGrid.class);
    paramMediaRequest.putExtra("extra.user", paramUser);
    return paramMediaRequest;
  }
  
  protected void a(Context paramContext, MediaRequest paramMediaRequest, List<? extends Media> paramList, int paramInt)
  {
    startActivityForResult(UserBizMediaViewer.a(paramContext, paramMediaRequest, paramList, paramInt), 1028);
  }
  
  public boolean a()
  {
    return getAppData().m().a((User)getIntent().getParcelableExtra("extra.user"));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ProfileBizPhotosGrid;
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.findItem(2131493896).setVisible(false);
    return super.onPrepareOptionsMenu(paramMenu);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.UserBizMediaGrid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */