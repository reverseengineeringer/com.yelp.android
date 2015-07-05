package com.yelp.android.ui.activities.photoviewer;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.view.ViewGroup;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Video;
import com.yelp.android.serializable.YelpBusiness;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ak
  extends FragmentStatePagerAdapter
{
  private final Map<String, VideoPageFragment> a = new HashMap();
  private List<Media> b = new ArrayList();
  private int c = -1;
  private am d;
  private YelpBusiness e;
  
  public ak(FragmentManager paramFragmentManager, YelpBusiness paramYelpBusiness)
  {
    super(paramFragmentManager);
    e = paramYelpBusiness;
  }
  
  public VideoPageFragment a(String paramString)
  {
    return (VideoPageFragment)a.get(paramString);
  }
  
  public Collection<VideoPageFragment> a()
  {
    return a.values();
  }
  
  public void a(int paramInt)
  {
    c = paramInt;
  }
  
  public void a(am paramam)
  {
    d = paramam;
  }
  
  public void a(List<Media> paramList)
  {
    b = paramList;
  }
  
  public boolean b(int paramInt)
  {
    return (e != null) && (paramInt == getCount() - 1);
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    super.destroyItem(paramViewGroup, paramInt, paramObject);
    if (paramInt < b.size())
    {
      paramViewGroup = (Media)b.get(paramInt);
      if ((paramViewGroup != null) && (paramViewGroup.isMediaType(Media.MediaType.VIDEO))) {
        a.remove(paramViewGroup.getId());
      }
    }
  }
  
  public int getCount()
  {
    if (c == -1) {
      return Integer.MAX_VALUE;
    }
    if (e == null) {
      return c;
    }
    return c + 1;
  }
  
  public Fragment getItem(int paramInt)
  {
    if (b(paramInt)) {
      localObject = PhotoPageAddMediaFragment.a(e);
    }
    Video localVideo;
    VideoPageFragment localVideoPageFragment;
    do
    {
      return (Fragment)localObject;
      localObject = null;
      if (paramInt < b.size()) {
        localObject = (Media)b.get(paramInt);
      }
      if ((localObject == null) || (!((Media)localObject).isMediaType(Media.MediaType.VIDEO))) {
        break;
      }
      localVideo = (Video)localObject;
      localVideoPageFragment = (VideoPageFragment)a.get(localVideo.getId());
      localObject = localVideoPageFragment;
    } while (localVideoPageFragment != null);
    switch (al.a[localVideo.getProvider().ordinal()])
    {
    default: 
      localObject = localVideoPageFragment;
    }
    for (;;)
    {
      ((VideoPageFragment)localObject).a(d);
      a.put(localVideo.getId(), localObject);
      return (Fragment)localObject;
      localObject = OoyalaVideoFragment.a(localVideo);
      continue;
      localObject = BrightcoveVideoFragment.a(localVideo);
    }
    Object localObject = PhotoPageFragment.a((Photo)localObject);
    ((PhotoPageFragment)localObject).a(d);
    return (Fragment)localObject;
  }
  
  public int getItemPosition(Object paramObject)
  {
    Object localObject = null;
    if ((paramObject instanceof PhotoPageFragment)) {
      localObject = ((PhotoPageFragment)paramObject).a();
    }
    int i;
    for (;;)
    {
      i = b.indexOf(localObject);
      if ((i != -1) && (localObject != null)) {
        break;
      }
      return -2;
      if ((paramObject instanceof VideoPageFragment)) {
        localObject = ((VideoPageFragment)paramObject).q();
      }
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */