package com.yelp.android.ui.activities.photoviewer;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.gw;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Media;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import com.yelp.android.ui.dialogs.DlgAddPhotoCaption;
import com.yelp.android.ui.util.cr;
import java.util.List;

public class UserMediaViewer
  extends ActivityMediaViewer
{
  private Intent a;
  private final m<gw> b = new an(this);
  
  public static Intent b(Context paramContext, List<? extends Media> paramList, int paramInt)
  {
    YelpActivity.IntentData.setData(paramList);
    paramContext = new Intent(paramContext, UserMediaViewer.class);
    paramContext.putExtra("extra.media_index", paramInt);
    return paramContext;
  }
  
  protected boolean b()
  {
    return false;
  }
  
  protected boolean d()
  {
    return false;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.UserPhotosFullscreen;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1037)
    {
      if (paramInt2 != -1) {
        break label25;
      }
      a = paramIntent;
    }
    label25:
    while (paramInt2 != 4) {
      return;
    }
    cr.a(getText(2131166312), 1);
  }
  
  protected void onPostResume()
  {
    super.onPostResume();
    if (a != null) {
      DlgAddPhotoCaption.a(a, this, b, getSupportFragmentManager(), "dialog_add_photo");
    }
    a = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.UserMediaViewer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */