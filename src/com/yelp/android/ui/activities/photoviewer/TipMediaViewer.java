package com.yelp.android.ui.activities.photoviewer;

import android.content.Context;
import android.content.Intent;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.Photo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

public class TipMediaViewer
  extends MediaViewer
{
  public static Intent a(Context paramContext, Photo paramPhoto)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramPhoto != null) {
      localArrayList.add(paramPhoto);
    }
    return a(new Intent(paramContext, TipMediaViewer.class), localArrayList, 0);
  }
  
  protected Set<PhotoChrome.DisplayFeature> a()
  {
    return Collections.emptySet();
  }
  
  protected a b()
  {
    return new a(getSupportFragmentManager(), null);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.UserPhotosFullscreen;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    return Collections.emptyMap();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.TipMediaViewer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */