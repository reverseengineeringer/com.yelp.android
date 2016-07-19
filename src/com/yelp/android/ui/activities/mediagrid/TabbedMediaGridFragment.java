package com.yelp.android.ui.activities.mediagrid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.MediaRequest;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.MediaCategory;
import com.yelp.android.serializable.MediaPayload;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.photoviewer.DynamicMediaViewer;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.YelpActivity.IntentData;
import com.yelp.android.ui.util.av;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class TabbedMediaGridFragment
  extends AbstractMediaGridFragment
  implements MediaTabsView.a
{
  private a g;
  private YelpActivity i;
  private MediaTabsView j;
  private View k;
  private ArrayList<MediaCategory> l;
  private int m = -1;
  private final ApiRequest.b<MediaPayload> n = new TabbedMediaGridFragment.2(this);
  
  public static TabbedMediaGridFragment a(YelpBusiness paramYelpBusiness, MediaRequest paramMediaRequest, ArrayList<Media> paramArrayList)
  {
    TabbedMediaGridFragment localTabbedMediaGridFragment = new TabbedMediaGridFragment();
    a(localTabbedMediaGridFragment, paramYelpBusiness, paramMediaRequest, paramArrayList, false);
    return localTabbedMediaGridFragment;
  }
  
  private void a(ArrayList<MediaCategory> paramArrayList)
  {
    Collections.sort(paramArrayList, new TabbedMediaGridFragment.1(this));
    if (paramArrayList.size() > 1)
    {
      j.a(paramArrayList, f());
      j.setVisibility(0);
      k.setVisibility(0);
      i.removeToolbarElevation();
    }
  }
  
  private MediaRequest b(MediaCategory paramMediaCategory)
  {
    return g.a(a, paramMediaCategory, b());
  }
  
  private MediaCategory f()
  {
    return (MediaCategory)l.get(m);
  }
  
  public void a(MediaCategory paramMediaCategory)
  {
    if (paramMediaCategory == f())
    {
      c.smoothScrollToPositionFromTop(0, 0, av.d);
      return;
    }
    c.smoothScrollToPositionFromTop(0, 0, 0);
    m = l.indexOf(paramMediaCategory);
    e = paramMediaCategory.c();
    if (b != null) {
      b.a(true);
    }
    b = b(paramMediaCategory);
    d.clear();
    if (paramMediaCategory.b() > 0) {
      d.a(paramMediaCategory.a(), true);
    }
    for (;;)
    {
      c();
      return;
      H_();
    }
  }
  
  protected boolean a()
  {
    return (b != null) && (!b.u()) && ((m == -1) || (d.getCount() < f().c()));
  }
  
  protected ApiRequest.b<MediaPayload> b()
  {
    return n;
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle != null)
    {
      m = paramBundle.getInt("current_category");
      l = paramBundle.getParcelableArrayList("media_categories");
      a(l);
      j.setMediaTabClickListener(this);
      if (b != null) {
        break label121;
      }
      m = 0;
      l.add(MediaCategory.a(d.b()));
      if (a != null)
      {
        d.b(true);
        f = true;
      }
      e = d.getCount();
    }
    label121:
    while (j.a())
    {
      return;
      l = new ArrayList();
      break;
    }
    H_();
    c();
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
    paramIntent = (List)YelpActivity.IntentData.popData();
    f().b(paramIntent);
    d.a(f().a(), true);
  }
  
  public void onAttach(Context paramContext)
  {
    super.onAttach(paramContext);
    try
    {
      g = ((a)paramContext);
      i = ((YelpActivity)paramContext);
      return;
    }
    catch (ClassCastException localClassCastException)
    {
      throw new ClassCastException(paramContext.toString() + " must implement TabbedMediaRequestCreator and ToolbarElevationListener");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    j = ((MediaTabsView)paramLayoutInflater.findViewById(2131690282));
    k = paramLayoutInflater.findViewById(2131690285);
    return paramLayoutInflater;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("current_category", m);
    paramBundle.putParcelableArrayList("media_categories", l);
  }
  
  public static abstract interface a
  {
    public abstract MediaRequest a(YelpBusiness paramYelpBusiness, MediaCategory paramMediaCategory, ApiRequest.b<MediaPayload> paramb);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mediagrid.TabbedMediaGridFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */