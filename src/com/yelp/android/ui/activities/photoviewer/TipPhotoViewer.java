package com.yelp.android.ui.activities.photoviewer;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.serializable.Photo;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

public class TipPhotoViewer
  extends ActivityMediaViewer
{
  public static Intent a(Context paramContext, Photo paramPhoto)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramPhoto != null) {
      localArrayList.add(paramPhoto);
    }
    YelpActivity.IntentData.setData(localArrayList);
    paramContext = new Intent(paramContext, TipPhotoViewer.class);
    paramContext.putExtra("extra.media_index", 0);
    return paramContext;
  }
  
  protected boolean d()
  {
    return false;
  }
  
  protected boolean e()
  {
    return false;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.UserPhotosFullscreen;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return Collections.emptyMap();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.TipPhotoViewer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */