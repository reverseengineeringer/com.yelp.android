package com.yelp.android.ui.activities.mediagrid;

import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.MediaPayload;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.photoviewer.DynamicMediaViewer;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class MediaGridFragment
  extends AbstractMediaGridFragment
{
  private final ApiRequest.b<MediaPayload> g = new MediaGridFragment.1(this);
  
  public static MediaGridFragment a(MediaRequest paramMediaRequest, ArrayList<Media> paramArrayList, boolean paramBoolean)
  {
    return a(null, paramMediaRequest, paramArrayList, paramBoolean);
  }
  
  public static MediaGridFragment a(YelpBusiness paramYelpBusiness, MediaRequest paramMediaRequest, ArrayList<Media> paramArrayList, boolean paramBoolean)
  {
    MediaGridFragment localMediaGridFragment = new MediaGridFragment();
    a(localMediaGridFragment, paramYelpBusiness, paramMediaRequest, paramArrayList, paramBoolean);
    return localMediaGridFragment;
  }
  
  public void a(Media paramMedia)
  {
    d.b(Collections.singleton(paramMedia));
    d.notifyDataSetChanged();
  }
  
  protected boolean a()
  {
    return (d.getCount() < e) && (b != null) && (!b.u());
  }
  
  protected ApiRequest.b<MediaPayload> b()
  {
    return g;
  }
  
  public void b(Media paramMedia)
  {
    d.d(paramMedia);
    d.notifyDataSetChanged();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (d.isEmpty())
    {
      H_();
      c();
    }
    while (b != null) {
      return;
    }
    if (a != null)
    {
      d.b(true);
      f = true;
    }
    e = d.getCount();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    do
    {
      return;
    } while (paramIntent == null);
    b = DynamicMediaViewer.b(paramIntent);
    d.a(new ArrayList((List)YelpActivity.IntentData.popData()), true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mediagrid.MediaGridFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */