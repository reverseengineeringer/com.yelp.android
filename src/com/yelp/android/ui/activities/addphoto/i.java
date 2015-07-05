package com.yelp.android.ui.activities.addphoto;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.c;
import com.bumptech.glide.h;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.serializable.IdentifiableMedia;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Media.MediaType;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Photo.TempPhoto;
import com.yelp.android.serializable.Video;
import com.yelp.android.ui.util.PhotoConfig.Aspect;
import com.yelp.android.ui.util.PhotoConfig.Size;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.RemoteImageExceptionCallback;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class i
  extends au<IdentifiableMedia>
{
  private static final IdentifiableMedia a = new MediaStub();
  private Integer b;
  private int c;
  private int d;
  private final View.OnClickListener e;
  private final l f;
  private final com.yelp.android.analytics.d g;
  private boolean h;
  private final com.bumptech.glide.j i;
  private List<Photo> j = new ArrayList();
  private List<Video> k = new ArrayList();
  
  public i(Context paramContext, l paraml, View.OnClickListener paramOnClickListener, Pair<EventIri, Map<String, Object>> paramPair)
  {
    i = h.c(paramContext);
    f = paraml;
    e = paramOnClickListener;
    if (e == null)
    {
      h = true;
      g = null;
      return;
    }
    g = new j(this, (EventIri)first, (Map)second);
    h = false;
  }
  
  public static i a(Context paramContext, View.OnClickListener paramOnClickListener, EventIri paramEventIri, Map<String, Object> paramMap, String paramString)
  {
    return new i(paramContext, new l(paramEventIri, paramMap, paramString, null), paramOnClickListener, Pair.create(paramEventIri, paramMap));
  }
  
  private String a(Media paramMedia, PhotoConfig.Size paramSize)
  {
    Object localObject = null;
    if (paramMedia.isMediaType(Media.MediaType.PHOTO)) {
      paramSize = ((Photo)paramMedia).getCustomUrl(paramSize, PhotoConfig.Aspect.Square);
    }
    do
    {
      return paramSize;
      paramSize = (PhotoConfig.Size)localObject;
    } while (!paramMedia.isMediaType(Media.MediaType.VIDEO));
    return ((Video)paramMedia).getThumbnailUrl();
  }
  
  private void a(Media paramMedia, View paramView1, View paramView2)
  {
    paramView2 = paramView2.findViewById(2131494096);
    if (paramMedia.isMediaType(Media.MediaType.PHOTO))
    {
      paramView2.setVisibility(8);
      return;
    }
    if (paramMedia.isMediaType(Media.MediaType.VIDEO))
    {
      paramView2.setVisibility(0);
      return;
    }
    paramMedia = paramView1.findViewById(2131493917);
    paramMedia.setOnClickListener(g);
    paramMedia.bringToFront();
  }
  
  private void a(Media paramMedia, ImageView paramImageView)
  {
    if ((paramMedia.isMediaType(Media.MediaType.PHOTO)) || (paramMedia.isMediaType(Media.MediaType.VIDEO)))
    {
      paramImageView.setOnClickListener(f);
      return;
    }
    paramImageView.setOnClickListener(e);
  }
  
  private void a(Media paramMedia, TextView paramTextView, ImageView paramImageView)
  {
    paramMedia = paramMedia.getCaption();
    if (paramTextView != null) {
      if (!TextUtils.isEmpty(paramMedia)) {
        break label39;
      }
    }
    label39:
    for (int m = 8;; m = 0)
    {
      paramTextView.setVisibility(m);
      paramTextView.setText(paramMedia);
      paramImageView.setContentDescription(paramMedia);
      return;
    }
  }
  
  private void a(Media paramMedia, PhotoConfig.Size paramSize, ImageView paramImageView)
  {
    ViewGroup.LayoutParams localLayoutParams = paramImageView.getLayoutParams();
    i.a(a(paramMedia, paramSize)).a(RemoteImageExceptionCallback.INSTANCE).a(width, height).a(paramImageView);
  }
  
  private boolean d()
  {
    return !h;
  }
  
  public View a(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
    {
      int n = 2130903343;
      int m = n;
      if (3 == getItemViewType(paramInt))
      {
        m = n;
        if (d()) {
          m = 2130903344;
        }
      }
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(m, paramViewGroup, false);
      paramViewGroup = new k(2);
      paramViewGroup.a(paramView, new int[] { 2131493914, 2131493916 });
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      paramInt += (paramInt - 1) / 2;
      paramViewGroup = (k)paramView.getTag();
      a(paramInt, paramView, paramView.findViewById(2131493914), a[0], b[0], PhotoConfig.Size.Px_120);
      a(paramInt + 1, paramView, paramView.findViewById(2131493916), a[1], b[1], PhotoConfig.Size.Px_120);
      return paramView;
    }
  }
  
  public Photo a(int paramInt)
  {
    return null;
  }
  
  public void a(int paramInt, View paramView1, View paramView2, WebImageView paramWebImageView, TextView paramTextView, PhotoConfig.Size paramSize)
  {
    IdentifiableMedia localIdentifiableMedia = c(paramInt);
    a(localIdentifiableMedia, paramView1, paramView2);
    a(localIdentifiableMedia, paramSize, paramWebImageView);
    a(localIdentifiableMedia, paramWebImageView);
    a(localIdentifiableMedia, paramTextView, paramWebImageView);
    paramWebImageView.setTag(2131492906, Integer.valueOf(paramInt));
    paramWebImageView.setTag(2131492907, a());
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("extra.media_list", new ArrayList(a()));
    paramBundle.putBoolean("extra.remove_extra", h);
  }
  
  public void a(IdentifiableMedia paramIdentifiableMedia)
  {
    int m = cr.a(a(), paramIdentifiableMedia);
    if (m >= 0)
    {
      a().set(m, paramIdentifiableMedia);
      notifyDataSetChanged();
    }
  }
  
  public void a(Photo paramPhoto)
  {
    c += 1;
    f_();
    super.c(paramPhoto);
  }
  
  public void a(File paramFile, String paramString1, String paramString2)
  {
    paramFile = new Photo.TempPhoto(String.valueOf(Uri.fromFile(paramFile.getAbsoluteFile())), paramString1);
    paramFile.setTempId(paramString2);
    a(paramFile);
    notifyDataSetChanged();
  }
  
  public void a_(List<Photo> paramList)
  {
    j = paramList;
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public View b(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int m;
    if (paramView == null)
    {
      int n = 2130903345;
      m = n;
      if (getItemViewType(paramInt) == 1)
      {
        m = n;
        if (d()) {
          m = 2130903348;
        }
      }
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(m, paramViewGroup, false);
      paramViewGroup = new k(1);
      paramViewGroup.a((ViewGroup)paramView, 0);
      paramView.setTag(paramViewGroup);
    }
    for (;;)
    {
      m = paramInt / 2;
      paramViewGroup = (k)paramView.getTag();
      a(paramInt + m, paramView, paramView, a[0], b[0], PhotoConfig.Size.Large);
      return paramView;
    }
  }
  
  public List<Photo> b()
  {
    return j;
  }
  
  public void b(int paramInt)
  {
    c = paramInt;
    int m = paramInt;
    if (d()) {
      m = paramInt + 1;
    }
    d = m;
    if ((c == 0) && (m == 2))
    {
      b = Integer.valueOf(1);
      return;
    }
    if ((c == 0) && (m == 1))
    {
      b = Integer.valueOf(0);
      return;
    }
    b = Integer.valueOf(m / 3 * 2 + m % 3);
  }
  
  public void b(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      a(paramBundle.getParcelableArrayList("extra.media_list"));
      h = paramBundle.getBoolean("extra.remove_extra");
    }
  }
  
  public void b(List<Video> paramList)
  {
    k = paramList;
  }
  
  public IdentifiableMedia c(int paramInt)
  {
    List localList = a();
    if (paramInt < localList.size()) {
      return (IdentifiableMedia)localList.get(paramInt);
    }
    return a;
  }
  
  public List<Video> c()
  {
    return k;
  }
  
  public void f_()
  {
    b(c);
  }
  
  public int getCount()
  {
    if (b == null) {
      return super.getCount();
    }
    return b.intValue();
  }
  
  public int getItemViewType(int paramInt)
  {
    int n = 1;
    int i1 = getCount();
    int m;
    if (paramInt == i1 - 1)
    {
      m = 1;
      if (m == 0) {
        break label92;
      }
      if ((!d()) || (i1 != 1)) {
        break label44;
      }
      m = 3;
    }
    label44:
    label63:
    do
    {
      do
      {
        return m;
        m = 0;
        break;
        if (!d()) {
          break label63;
        }
        m = n;
      } while (d % 3 == 2);
      if (d % 3 == 2) {
        return 0;
      }
      if (!d()) {
        break label92;
      }
      m = n;
    } while (paramInt % 2 == 0);
    return 3;
    label92:
    if (paramInt % 2 == 0) {
      return 0;
    }
    return 2;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    switch (getItemViewType(paramInt))
    {
    default: 
      return a(paramInt, paramView, paramViewGroup);
    }
    return b(paramInt, paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return 4;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.addphoto.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */