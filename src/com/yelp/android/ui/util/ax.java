package com.yelp.android.ui.util;

import android.app.PendingIntent;
import android.content.Context;
import android.support.v7.widget.bi;
import android.support.v7.widget.ce;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bumptech.glide.d;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.yelp.android.appdata.webrequests.BusinessMediaRequest;
import com.yelp.android.appdata.webrequests.dm;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Video;
import com.yelp.android.serializable.YelpBusiness;
import java.util.ArrayList;
import java.util.List;

public class ax
  extends bi<ce>
{
  private final YelpBusiness a;
  private final List<Media> b;
  private br c;
  private br d;
  private int e;
  private int f;
  private int g;
  private BusinessMediaRequest h;
  private j i;
  private final m<dm> j = new az(this);
  
  public ax(YelpBusiness paramYelpBusiness, Video paramVideo, Context paramContext)
  {
    a = paramYelpBusiness;
    b = new ArrayList(a.getPhotosAndVideosCount());
    f = a.getPhotosAndVideosCount();
    if (paramVideo != null) {
      b.add(paramVideo);
    }
    if (a.getPhotosAndVideosCount() > 0) {
      c(0);
    }
    i = h.c(paramContext);
    g = 0;
  }
  
  public ax(List<? extends Media> paramList, Context paramContext)
  {
    b = new ArrayList(paramList);
    f = b.size();
    a = null;
    i = h.c(paramContext);
    g = 0;
  }
  
  private void c(int paramInt)
  {
    if (paramInt > e) {
      e = paramInt;
    }
    if ((paramInt >= b.size()) && (h == null))
    {
      h = new BusinessMediaRequest(a.getId(), b.size(), 50, j);
      h.execute(new Void[0]);
    }
  }
  
  private void h()
  {
    b.clear();
    e = 0;
  }
  
  private void i()
  {
    if (h != null)
    {
      h.cancel(true);
      h = null;
    }
  }
  
  public int a()
  {
    if (a == null) {
      return f;
    }
    return f + 1;
  }
  
  public int a(int paramInt)
  {
    if ((a != null) && (paramInt == a() - 1)) {
      return 1;
    }
    return 0;
  }
  
  public ce a(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return new bb(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903391, paramViewGroup, false));
    }
    return new ba(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903124, paramViewGroup, false));
  }
  
  public void a(PendingIntent paramPendingIntent, bc parambc)
  {
    c = new br(paramPendingIntent, false, parambc);
    d = new br(paramPendingIntent, true, parambc);
  }
  
  public void a(ce paramce, int paramInt)
  {
    Object localObject;
    if (a(paramInt) == 0)
    {
      if (paramInt >= g) {
        g = (paramInt + 1);
      }
      localObject = (bb)paramce;
      if (paramInt >= b.size()) {
        break label200;
      }
    }
    label95:
    label129:
    label161:
    label167:
    label200:
    for (paramce = (Media)b.get(paramInt);; paramce = null)
    {
      int k;
      if (paramce == null)
      {
        j.setImageResource(2130838258);
        ImageView localImageView = k;
        if ((paramce == null) || (!paramce.isMediaType(Media.MediaType.VIDEO))) {
          break label161;
        }
        k = 0;
        localImageView.setVisibility(k);
        a.setTag(Integer.valueOf(paramInt));
        localObject = a;
        if (paramce != null) {
          break label167;
        }
        paramce = d;
        ((View)localObject).setOnClickListener(paramce);
      }
      do
      {
        return;
        i.a(paramce.getThumbnailUrl()).a(j);
        break;
        k = 8;
        break label95;
        paramce = c;
        break label129;
      } while (a(paramInt) != 1);
      a.setOnClickListener(new ay(this));
      return;
    }
  }
  
  public void a(Media paramMedia)
  {
    int k = 0;
    while (k < b.size())
    {
      Media localMedia = (Media)b.get(k);
      if ((localMedia != null) && (localMedia.getId().equals(paramMedia.getId()))) {
        b.set(k, paramMedia);
      }
      k += 1;
    }
  }
  
  public void a(w paramw)
  {
    if (c != null) {
      c.c = paramw;
    }
    if (d != null) {
      d.c = paramw;
    }
  }
  
  public List<Media> d()
  {
    return b;
  }
  
  public void e()
  {
    i();
    f += 1;
    h();
    c();
    c(0);
  }
  
  public void f()
  {
    i();
    if (f > 0) {
      f -= 1;
    }
    h();
    c();
    if (f > 0) {
      c(0);
    }
  }
  
  public int g()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */