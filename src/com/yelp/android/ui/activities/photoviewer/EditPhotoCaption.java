package com.yelp.android.ui.activities.photoviewer;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.av.i;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.addphoto.AddCaptionFragment;
import com.yelp.android.ui.activities.addphoto.g;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.Collections;
import java.util.List;

public class EditPhotoCaption
  extends YelpActivity
  implements g
{
  private YelpBusiness a;
  private Photo b;
  private String c;
  private AlertDialog d;
  private com.yelp.android.appdata.webrequests.bn e;
  private final i f = new s(this);
  
  public static Intent a(Context paramContext, Photo paramPhoto, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, EditPhotoCaption.class);
    paramContext.putExtra("extra.photo", paramPhoto);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    return paramContext;
  }
  
  private void b()
  {
    c();
    AppData.a(EventIri.BusinessPhotoCaptionEditSaved, Collections.singletonMap("photo_id", b.getId()));
    e = new com.yelp.android.appdata.webrequests.bn(b.getId(), c, f);
    e.execute(new Void[0]);
  }
  
  private void c()
  {
    if (d == null)
    {
      d = new com.yelp.android.ui.dialogs.bn(this);
      d.setMessage(getString(2131166354));
      d.setCancelable(false);
    }
    d.show();
  }
  
  private Fragment d()
  {
    return AddCaptionFragment.a(b.getBusinessId(), b.getThumbnailUrl(), b.getCaption());
  }
  
  public void a() {}
  
  public void a(String paramString, List<ShareRequest.ShareType> paramList)
  {
    c = paramString;
    int i = getResources().getInteger(2131558423);
    if (c.length() > i)
    {
      showInfoDialog(getString(2131166307, new Object[] { Integer.valueOf(i) }));
      return;
    }
    b();
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onBackPressed()
  {
    AppData.a(EventIri.BusinessPhotoCaptionEditCanceled, Collections.singletonMap("photo_id", b.getId()));
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    b = ((Photo)localIntent.getParcelableExtra("extra.photo"));
    a = ((YelpBusiness)localIntent.getParcelableExtra("extra.business"));
    if (a != null) {
      setTitle(a.getDisplayName());
    }
    for (;;)
    {
      if (paramBundle != null) {
        c = paramBundle.getString("saved_caption");
      }
      if (getSupportFragmentManager().findFragmentById(2131493332) == null) {
        getSupportFragmentManager().beginTransaction().add(2131493332, d()).commit();
      }
      return;
      setTitle(2131165733);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    if (d != null) {
      d.dismiss();
    }
    freezeRequest("edit_caption", e);
  }
  
  public void onResume()
  {
    super.onResume();
    e = ((com.yelp.android.appdata.webrequests.bn)thawRequest("edit_caption", e, f));
    if (e != null) {
      c();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("saved_caption", c);
  }
  
  public void onYesNoDialogSelection(boolean paramBoolean, int paramInt)
  {
    if (paramBoolean) {
      a(c, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.EditPhotoCaption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */