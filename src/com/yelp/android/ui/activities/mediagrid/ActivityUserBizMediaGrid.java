package com.yelp.android.ui.activities.mediagrid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.photoviewer.UserBizMediaViewer;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.ArrayList;
import java.util.List;

public class ActivityUserBizMediaGrid
  extends YelpActivity
  implements AbstractMediaGridFragment.a
{
  private MediaGridFragment a;
  
  public static Intent a(Context paramContext, User paramUser, MediaRequest paramMediaRequest, int paramInt)
  {
    return a(paramContext, paramUser, paramMediaRequest, paramContext.getString(paramInt));
  }
  
  public static Intent a(Context paramContext, User paramUser, MediaRequest paramMediaRequest, String paramString)
  {
    return a(paramContext, paramUser, new ArrayList(), paramMediaRequest, paramString);
  }
  
  public static Intent a(Context paramContext, User paramUser, ArrayList<Media> paramArrayList, MediaRequest paramMediaRequest, String paramString)
  {
    ArrayList localArrayList = new ArrayList(paramArrayList);
    localArrayList.subList(Math.min(localArrayList.size(), 200), localArrayList.size()).clear();
    paramArrayList = paramMediaRequest;
    if (paramMediaRequest != null) {
      paramArrayList = paramMediaRequest.c(localArrayList.size());
    }
    paramContext = new Intent(paramContext, ActivityUserBizMediaGrid.class);
    paramContext.putExtra("user", paramUser);
    paramContext.putExtra("media_request", paramArrayList);
    paramContext.putExtra("title", paramString);
    paramContext.putParcelableArrayListExtra("media_list", localArrayList);
    return paramContext;
  }
  
  public void a(YelpBusiness paramYelpBusiness, ArrayList<Media> paramArrayList, MediaRequest paramMediaRequest, int paramInt1, int paramInt2)
  {
    startActivityFromFragment(a, UserBizMediaViewer.a(this, paramMediaRequest, paramArrayList, paramInt1, paramInt2), 1070);
  }
  
  public void a(YelpBusiness paramYelpBusiness, boolean paramBoolean) {}
  
  public boolean a()
  {
    return getAppData().q().a((User)getIntent().getParcelableExtra("user"));
  }
  
  public ViewIri getIri()
  {
    return ViewIri.ProfileBizPhotosGrid;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject = getIntent();
    setTitle(((Intent)localObject).getStringExtra("title"));
    paramBundle = (MediaRequest)((Intent)localObject).getParcelableExtra("media_request");
    localObject = ((Intent)localObject).getParcelableArrayListExtra("media_list");
    a = ((MediaGridFragment)getSupportFragmentManager().a(2131689997));
    if (a == null)
    {
      a = MediaGridFragment.a(paramBundle, (ArrayList)localObject, true);
      getSupportFragmentManager().a().b(2131689997, a).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mediagrid.ActivityUserBizMediaGrid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */