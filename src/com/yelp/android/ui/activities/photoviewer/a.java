package com.yelp.android.ui.activities.photoviewer;

import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.view.ViewGroup;
import com.crashlytics.android.core.e;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.PhotoAdsResponse;
import com.yelp.android.serializable.Video;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public class a
  extends com.yelp.android.ui.util.l
{
  private static AtomicInteger a = new AtomicInteger();
  private final Map<String, VideoPageFragment> b = new HashMap();
  private a c;
  private Map<Media, Integer> d;
  private ArrayList<Media> e = new ArrayList();
  private List<Media> f = new ArrayList();
  private List<Integer> g = new LinkedList();
  private YelpBusiness h;
  private boolean i = false;
  private int j = -1;
  
  public a(android.support.v4.app.l paraml, YelpBusiness paramYelpBusiness)
  {
    super(paraml);
    h = paramYelpBusiness;
  }
  
  private void i()
  {
    if (e.size() != d.size()) {
      YelpLog.remoteError("PhotoPagerAdapter", "Modifying the media list resulted in not having a unique identifier for every item", new IllegalStateException("Modifying the media list resulted in not having a unique identifier for every item"));
    }
  }
  
  public int a(Object paramObject)
  {
    int m = -2;
    int k;
    if ((paramObject instanceof PhotoPageAddMediaFragment)) {
      k = e.size();
    }
    int n;
    do
    {
      do
      {
        do
        {
          return k;
          paramObject = ((MediaBaseFragment)paramObject).k();
          n = e.indexOf(paramObject);
          k = m;
        } while (n == -1);
        k = m;
      } while (paramObject == null);
      if (!((Media)paramObject).a(Media.MediaType.AD)) {
        break;
      }
      k = m;
    } while (i);
    return n;
  }
  
  public Parcelable a()
  {
    StringBuilder localStringBuilder = new StringBuilder(100);
    if (h != null)
    {
      localStringBuilder.append("Business Id: ");
      localStringBuilder.append(h.aD());
    }
    localStringBuilder.append(" mAdCount: ");
    localStringBuilder.append(g.size());
    localStringBuilder.append(" mAdIndices: ");
    localStringBuilder.append(g);
    localStringBuilder.append(" mMediaList size: ");
    localStringBuilder.append(f.size());
    localStringBuilder.append(" mMediaList: ");
    localStringBuilder.append(f);
    localStringBuilder.append(" mPagerItems size: ");
    localStringBuilder.append(e.size());
    localStringBuilder.append(" mPagerItems: ");
    localStringBuilder.append(e);
    ec.a(localStringBuilder.toString());
    return super.a();
  }
  
  public Fragment a(int paramInt)
  {
    if (h(paramInt))
    {
      localObject = PhotoPageAddMediaFragment.a(h);
      return (Fragment)localObject;
    }
    if (paramInt < e.size()) {}
    for (Object localObject = (Media)e.get(paramInt);; localObject = null)
    {
      if (localObject != null)
      {
        if (((Media)localObject).a(Media.MediaType.AD)) {
          return PhotoPageAdFragment.a((PhotoAdsResponse)localObject);
        }
        if (((Media)localObject).a(Media.MediaType.PHOTO))
        {
          localObject = PhotoPageFragment.a((Photo)localObject);
          ((PhotoPageFragment)localObject).a(c);
          return (Fragment)localObject;
        }
        if (((Media)localObject).a(Media.MediaType.VIDEO))
        {
          Video localVideo = (Video)localObject;
          VideoPageFragment localVideoPageFragment = (VideoPageFragment)b.get(localVideo.a());
          localObject = localVideoPageFragment;
          if (localVideoPageFragment != null) {
            break;
          }
          switch (a.1.a[localVideo.c().ordinal()])
          {
          }
          for (localObject = BrightcoveVideoFragment.a(localVideo);; localObject = OoyalaVideoFragment.a(localVideo))
          {
            ((VideoPageFragment)localObject).a(c);
            b.put(localVideo.a(), localObject);
            return (Fragment)localObject;
          }
        }
        return PhotoPageFragment.a(null);
      }
      return PhotoPageFragment.a(null);
    }
  }
  
  public VideoPageFragment a(String paramString)
  {
    return (VideoPageFragment)b.get(paramString);
  }
  
  public void a(int paramInt, Media paramMedia)
  {
    ec.a("Setting media at index: " + paramInt + " to: " + paramMedia);
    d.remove(e.get(paramInt));
    d.put(paramMedia, Integer.valueOf(paramInt));
    f.set(paramInt, paramMedia);
    Iterator localIterator = g.iterator();
    int k = paramInt;
    if (localIterator.hasNext())
    {
      if (paramInt < ((Integer)localIterator.next()).intValue()) {
        break label144;
      }
      k += 1;
    }
    label144:
    for (;;)
    {
      break;
      e.set(k, paramMedia);
      i();
      return;
    }
  }
  
  public void a(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    super.a(paramViewGroup, paramInt, paramObject);
    if (paramInt < e.size())
    {
      paramViewGroup = (Media)e.get(paramInt);
      if ((paramViewGroup != null) && (paramViewGroup.a(Media.MediaType.VIDEO))) {
        b.remove(paramViewGroup.a());
      }
    }
  }
  
  public void a(Media paramMedia)
  {
    ec.a("Adding media to end of list: " + paramMedia);
    d.put(paramMedia, Integer.valueOf(a.getAndIncrement()));
    f.add(paramMedia);
    e.add(paramMedia);
    i();
  }
  
  public void a(a parama)
  {
    c = parama;
  }
  
  public void a(List<Media> paramList)
  {
    ec.a("Setting media list to: " + paramList);
    f.addAll(paramList);
    e.addAll(paramList);
    d = new HashMap();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      Media localMedia = (Media)paramList.next();
      d.put(localMedia, Integer.valueOf(a.getAndIncrement()));
    }
    i();
  }
  
  public int b()
  {
    int m = j;
    int k;
    if (m == -1) {
      k = 1000;
    }
    do
    {
      return k;
      k = m;
    } while (h == null);
    return m + 1;
  }
  
  public void b(int paramInt, Media paramMedia)
  {
    ec.a("Adding photo ad at index: " + paramInt + " to: " + paramMedia);
    g.add(Integer.valueOf(paramInt));
    d.put(paramMedia, Integer.valueOf(a.getAndIncrement()));
    if (paramInt >= e.size()) {
      e.add(paramMedia);
    }
    for (;;)
    {
      i();
      return;
      e.add(paramInt, paramMedia);
    }
  }
  
  public boolean b(Media paramMedia)
  {
    ec.a("Removing media: " + paramMedia);
    d.remove(paramMedia);
    boolean bool = f.remove(paramMedia);
    e.remove(paramMedia);
    i();
    return bool;
  }
  
  public int d()
  {
    return f.size();
  }
  
  public long d(int paramInt)
  {
    if (paramInt >= e.size()) {
      return a.getAndIncrement();
    }
    Integer localInteger = (Integer)d.get(e.get(paramInt));
    if (localInteger == null)
    {
      YelpLog.remoteError(this, "Object in media list does not have a unique id.");
      return a.getAndIncrement();
    }
    return localInteger.longValue();
  }
  
  public Media e(int paramInt)
  {
    if (paramInt < e.size()) {
      return (Media)e.get(paramInt);
    }
    return new LoadingItem();
  }
  
  public Collection<VideoPageFragment> e()
  {
    return b.values();
  }
  
  public void f()
  {
    i = true;
    c();
  }
  
  public void f(int paramInt)
  {
    ec.a("Removing photo ad at position: " + paramInt);
    g.remove(Integer.valueOf(paramInt));
    d.remove(e.remove(paramInt));
    i();
  }
  
  public List<Media> g()
  {
    return Collections.unmodifiableList(f);
  }
  
  public void g(int paramInt)
  {
    j = paramInt;
  }
  
  public boolean h(int paramInt)
  {
    return (h != null) && (paramInt == b() - 1);
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */