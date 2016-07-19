package com.yelp.android.ui.activities.photoviewer;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.text.Html;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.bg;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.addphoto.AddCaptionFragment;
import com.yelp.android.ui.activities.addphoto.AddCaptionFragment.b;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.AlertDialogFragment;
import com.yelp.android.ui.dialogs.e;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.YelpLog;
import java.util.Collections;
import java.util.List;

public class EditPhotoCaption
  extends YelpActivity
  implements AddCaptionFragment.b
{
  private YelpBusiness a;
  private Photo b;
  private String c;
  private AlertDialog d;
  private bg e;
  private final c.a f = new c.a()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      EditPhotoCaption.a(EditPhotoCaption.this).dismiss();
      EditPhotoCaption.c(EditPhotoCaption.this).a(EditPhotoCaption.b(EditPhotoCaption.this));
      new ObjectDirtyEvent(EditPhotoCaption.c(EditPhotoCaption.this), "com.yelp.android.media.update").a(EditPhotoCaption.this);
      finish();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      EditPhotoCaption.a(EditPhotoCaption.this).dismiss();
      AlertDialogFragment.a(null, Html.fromHtml(paramAnonymousYelpException.getMessage(AppData.b())).toString()).show(getSupportFragmentManager(), null);
      YelpLog.remoteError(paramAnonymousYelpException);
    }
  };
  
  public static Intent a(Context paramContext, Photo paramPhoto, YelpBusiness paramYelpBusiness)
  {
    paramContext = new Intent(paramContext, EditPhotoCaption.class);
    paramContext.putExtra("extra.photo", paramPhoto);
    paramContext.putExtra("extra.business", paramYelpBusiness);
    return paramContext;
  }
  
  private void a()
  {
    c();
    AppData.a(EventIri.BusinessPhotoCaptionEditSaved, Collections.singletonMap("photo_id", b.a()));
    e = new bg(b.a(), c, f);
    e.f(new Void[0]);
  }
  
  private void c()
  {
    if (d == null)
    {
      d = new e(this);
      d.setMessage(getString(2131166377));
      d.setCancelable(false);
    }
    d.show();
  }
  
  private Fragment d()
  {
    return AddCaptionFragment.a(b.k(), b.f(), b.g());
  }
  
  public void a(String paramString, List<ShareRequest.ShareType> paramList)
  {
    c = paramString;
    int i = getResources().getInteger(2131492900);
    if (c.length() > i)
    {
      showInfoDialog(getString(2131166341, new Object[] { Integer.valueOf(i) }));
      return;
    }
    a();
  }
  
  public void b() {}
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onBackPressed()
  {
    AppData.a(EventIri.BusinessPhotoCaptionEditCanceled, Collections.singletonMap("photo_id", b.a()));
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    b = ((Photo)localIntent.getParcelableExtra("extra.photo"));
    a = ((YelpBusiness)localIntent.getParcelableExtra("extra.business"));
    if (a != null) {
      setTitle(a.z());
    }
    for (;;)
    {
      if (paramBundle != null) {
        c = paramBundle.getString("saved_caption");
      }
      if (getSupportFragmentManager().a(2131689997) == null) {
        getSupportFragmentManager().a().a(2131689997, d()).a();
      }
      return;
      setTitle(2131165812);
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
    e = ((bg)thawRequest("edit_caption", e, f));
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