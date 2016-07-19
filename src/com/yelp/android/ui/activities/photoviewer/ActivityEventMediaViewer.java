package com.yelp.android.ui.activities.photoviewer;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Media;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ActivityEventMediaViewer
  extends MediaViewer
{
  private String a;
  
  public static Intent a(Context paramContext, String paramString, List<? extends Media> paramList, int paramInt)
  {
    paramContext = a(new Intent(paramContext, ActivityEventMediaViewer.class), paramList, paramInt);
    paramContext.putExtra("extra.event_id", paramString);
    return paramContext;
  }
  
  public static Intent a(Context paramContext, List<? extends Media> paramList, int paramInt)
  {
    return a(new Intent(paramContext, ActivityEventMediaViewer.class), paramList, paramInt);
  }
  
  protected Set<PhotoChrome.DisplayFeature> a()
  {
    HashSet localHashSet = new HashSet();
    localHashSet.add(PhotoChrome.DisplayFeature.USER_PASSPORT);
    return localHashSet;
  }
  
  protected void a(int paramInt)
  {
    Media localMedia = c.e(paramInt);
    HashMap localHashMap = new HashMap();
    if (a != null) {
      localHashMap.put("event_id", a);
    }
    localHashMap.put("photo_id", localMedia.a());
    AppData.a(ViewIri.EventPhoto, localHashMap);
  }
  
  protected void a(Bundle paramBundle)
  {
    a = getIntent().getStringExtra("extra.event_id");
  }
  
  protected a b()
  {
    return new a(getSupportFragmentManager(), null);
  }
  
  public ViewIri getIri()
  {
    return ViewIri.EventPhotoFullScreen;
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    if (a == null) {
      return null;
    }
    return Collections.singletonMap("event_id", a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.ActivityEventMediaViewer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */