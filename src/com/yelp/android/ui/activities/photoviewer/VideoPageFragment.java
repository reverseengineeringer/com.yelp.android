package com.yelp.android.ui.activities.photoviewer;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Video;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.util.o;
import com.yelp.android.webimageview.WebImageView;
import com.yelp.android.webimageview.WebImageView.ImageLoadedCallback;
import java.util.HashMap;
import java.util.Map;

public abstract class VideoPageFragment
  extends MediaBaseFragment
{
  protected ImageView b;
  protected Video c;
  protected boolean d;
  private WebImageView e;
  private long g;
  private boolean h;
  private boolean i;
  private am j;
  private aq k;
  private final WebImageView.ImageLoadedCallback l = new ao(this);
  private final View.OnClickListener m = new ap(this);
  
  private void F()
  {
    long l1;
    if (g > 0L)
    {
      l1 = System.currentTimeMillis() - g;
      g = 0L;
    }
    for (;;)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("id", c.getBusinessId());
      localHashMap.put("video_id", c.getId());
      localHashMap.put("video_source", c.getVideoSource());
      localHashMap.put("time_elapsed", Double.valueOf(o.f(l1)));
      AppData.a(EventIri.BusinessVideoPlay, localHashMap);
      return;
      l1 = 0L;
    }
  }
  
  private void G()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("id", c.getBusinessId());
    localHashMap.put("video_id", c.getId());
    localHashMap.put("video_source", c.getVideoSource());
    localHashMap.put("time_played", Double.valueOf(o.f(h())));
    localHashMap.put("video_duration", Double.valueOf(o.f(i())));
    AppData.a(EventIri.BusinessVideoPause, localHashMap);
  }
  
  private void H()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("id", c.getBusinessId());
    localHashMap.put("video_id", c.getId());
    localHashMap.put("video_source", c.getVideoSource());
    localHashMap.put("duration", Double.valueOf(o.f(i())));
    AppData.a(EventIri.BusinessVideoEnd, localHashMap);
  }
  
  protected static Bundle b(Video paramVideo)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("video", paramVideo);
    return localBundle;
  }
  
  protected abstract int a();
  
  public void a(am paramam)
  {
    j = paramam;
  }
  
  protected abstract void b();
  
  protected abstract void c();
  
  protected abstract void e();
  
  protected abstract void f();
  
  protected abstract boolean g();
  
  protected abstract int h();
  
  protected abstract int i();
  
  protected void k()
  {
    i_();
    b.setVisibility(8);
  }
  
  protected void l()
  {
    H();
    p();
    b.setVisibility(0);
    i = false;
  }
  
  protected void m()
  {
    b.setVisibility(8);
    j();
    i = true;
    d = false;
    F();
  }
  
  public final void n()
  {
    if (!h) {
      if (g == 0L) {
        g = System.currentTimeMillis();
      }
    }
    while (g()) {
      return;
    }
    b();
  }
  
  public final void o()
  {
    c();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    k = ((aq)getActivity());
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c = ((Video)getArguments().getParcelable("video"));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = (ViewGroup)super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater = paramLayoutInflater.inflate(a(), paramViewGroup);
    paramLayoutInflater.setOnClickListener(m);
    b = ((ImageView)paramLayoutInflater.findViewById(2131493602));
    e = ((WebImageView)paramViewGroup.findViewById(2131493576));
    e.setVisibility(4);
    e.setImageUrl(c.getThumbnailUrl(), true, l);
    a.bringToFront();
    return paramViewGroup;
  }
  
  public void onPause()
  {
    super.onPause();
    o();
    i = false;
  }
  
  public void onResume()
  {
    super.onResume();
    d = true;
    k();
    p();
  }
  
  public final void p()
  {
    f();
  }
  
  public Video q()
  {
    return c;
  }
  
  protected void r()
  {
    k();
    p();
    n();
  }
  
  protected void s()
  {
    e();
  }
  
  protected void t()
  {
    h = true;
    if ((!d) && (i))
    {
      j();
      b.setVisibility(0);
    }
    k.a(c.getId(), d);
  }
  
  protected void u()
  {
    j();
    b.setVisibility(0);
    G();
  }
  
  protected void v()
  {
    if (g())
    {
      o();
      return;
    }
    b.setVisibility(8);
    if (!i) {
      i_();
    }
    n();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.VideoPageFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */