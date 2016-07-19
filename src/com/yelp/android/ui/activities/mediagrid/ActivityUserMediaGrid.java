package com.yelp.android.ui.activities.mediagrid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.view.Menu;
import android.view.MenuInflater;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.fk.a;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.media.ActivityMediaContributionDelegate;
import com.yelp.android.ui.activities.photoviewer.UserMediaViewer;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.dialogs.DlgAddPhotoCaption;
import com.yelp.android.ui.util.as;
import java.util.ArrayList;
import java.util.List;

public class ActivityUserMediaGrid
  extends YelpActivity
  implements AbstractMediaGridFragment.a
{
  private MediaGridFragment a;
  private Intent b;
  private final ApiRequest.b<fk.a> c = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, fk.a paramAnonymousa)
    {
      if (paramAnonymousa.b()) {
        ActivityUserMediaGrid.a(ActivityUserMediaGrid.this).a(paramAnonymousa.a());
      }
      for (;;)
      {
        hideLoadingDialog();
        paramAnonymousApiRequest = ActivityUserProfile.a();
        paramAnonymousApiRequest.setPackage(getPackageName());
        sendBroadcast(paramAnonymousApiRequest);
        return;
        ActivityUserMediaGrid.a(ActivityUserMediaGrid.this).b(paramAnonymousa.a());
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      hideLoadingDialog();
      disableLoading();
      as.a(2131165866, 1);
    }
  };
  
  public static Intent a(Context paramContext, String paramString, ArrayList<Media> paramArrayList, MediaRequest paramMediaRequest, int paramInt)
  {
    ArrayList localArrayList = new ArrayList(paramArrayList);
    localArrayList.subList(Math.min(localArrayList.size(), 200), localArrayList.size()).clear();
    paramArrayList = paramMediaRequest;
    if (paramMediaRequest != null) {
      paramArrayList = paramMediaRequest.c(localArrayList.size());
    }
    paramContext = new Intent(paramContext, ActivityUserMediaGrid.class);
    paramContext.putExtra("user_id", paramString);
    paramContext.putExtra("media_request", paramArrayList);
    paramContext.putExtra("title", paramInt);
    paramContext.putParcelableArrayListExtra("media_list", localArrayList);
    return paramContext;
  }
  
  public void a(YelpBusiness paramYelpBusiness, ArrayList<Media> paramArrayList, MediaRequest paramMediaRequest, int paramInt1, int paramInt2)
  {
    startActivityFromFragment(a, UserMediaViewer.a(this, paramArrayList, paramInt1), 1070);
  }
  
  public void a(YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    startActivityForResult(ActivityMediaContributionDelegate.a(this), 1041);
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
      return;
      if (paramInt2 == -1)
      {
        b = paramIntent;
        return;
      }
    } while (paramInt2 != 4);
    as.a(getText(2131166342), 1);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = getIntent();
    setTitle(((Intent)localObject).getIntExtra("title", 2131166349));
    paramBundle = (MediaRequest)((Intent)localObject).getParcelableExtra("media_request");
    localObject = ((Intent)localObject).getParcelableArrayListExtra("media_list");
    a = ((MediaGridFragment)getSupportFragmentManager().a(2131689997));
    if (a == null)
    {
      a = MediaGridFragment.a(paramBundle, (ArrayList)localObject, true);
      getSupportFragmentManager().a().b(2131689997, a).a();
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    boolean bool = super.onCreateOptionsMenu(paramMenu);
    String str = getIntent().getStringExtra("user_id");
    if (getAppData().q().a(str))
    {
      getMenuInflater().inflate(2131755050, paramMenu);
      bool = true;
    }
    return bool;
  }
  
  protected void onResume()
  {
    super.onResume();
    if (b != null) {
      DlgAddPhotoCaption.a(b, this, c, getSupportFragmentManager(), "add_photo");
    }
    b = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mediagrid.ActivityUserMediaGrid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */