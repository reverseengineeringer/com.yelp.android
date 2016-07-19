package com.yelp.android.ui.activities.photoviewer;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Media;
import com.yelp.android.serializable.Video;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.util.i;
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
  private long f;
  private boolean g;
  private boolean i;
  private a.a j;
  private a k;
  private final WebImageView.ImageLoadedCallback l = new VideoPageFragment.1(this);
  private final View.OnClickListener m = new VideoPageFragment.2(this);
  
  private void H()
  {
    long l1;
    if (f > 0L)
    {
      l1 = System.currentTimeMillis() - f;
      f = 0L;
    }
    for (;;)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("id", c.k());
      localHashMap.put("video_id", c.a());
      localHashMap.put("video_source", c.p());
      localHashMap.put("time_elapsed", Double.valueOf(i.f(l1)));
      AppData.a(EventIri.BusinessVideoPlay, localHashMap);
      return;
      l1 = 0L;
    }
  }
  
  private void I()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("id", c.k());
    localHashMap.put("video_id", c.a());
    localHashMap.put("video_source", c.p());
    localHashMap.put("time_played", Double.valueOf(i.f(i())));
    localHashMap.put("video_duration", Double.valueOf(i.f(j())));
    AppData.a(EventIri.BusinessVideoPause, localHashMap);
  }
  
  private void J()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("id", c.k());
    localHashMap.put("video_id", c.a());
    localHashMap.put("video_source", c.p());
    localHashMap.put("duration", Double.valueOf(i.f(j())));
    AppData.a(EventIri.BusinessVideoEnd, localHashMap);
  }
  
  protected static Bundle b(Video paramVideo)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("video", paramVideo);
    return localBundle;
  }
  
  protected abstract int a();
  
  public void a(a.a parama)
  {
    j = parama;
  }
  
  protected abstract void b();
  
  protected abstract void c();
  
  protected abstract void f();
  
  protected abstract void g();
  
  protected abstract boolean h();
  
  protected abstract int i();
  
  protected abstract int j();
  
  public Media k()
  {
    return s();
  }
  
  protected void m()
  {
    H_();
    b.setVisibility(8);
  }
  
  protected void n()
  {
    J();
    r();
    b.setVisibility(0);
    i = false;
  }
  
  protected void o()
  {
    b.setVisibility(8);
    l();
    i = true;
    d = false;
    H();
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    k = ((a)getActivity());
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
    b = ((ImageView)paramLayoutInflater.findViewById(2131690313));
    e = ((WebImageView)paramViewGroup.findViewById(2131690286));
    e.setVisibility(4);
    e.setImageUrl(c.f(), true, l);
    a.bringToFront();
    return paramViewGroup;
  }
  
  public void onPause()
  {
    super.onPause();
    q();
    i = false;
  }
  
  public void onResume()
  {
    super.onResume();
    d = true;
    m();
    r();
  }
  
  public final void p()
  {
    if (!g) {
      if (f == 0L) {
        f = System.currentTimeMillis();
      }
    }
    while (h()) {
      return;
    }
    b();
  }
  
  public final void q()
  {
    c();
  }
  
  public final void r()
  {
    g();
  }
  
  public Video s()
  {
    return c;
  }
  
  protected void t()
  {
    m();
    r();
    p();
  }
  
  protected void u()
  {
    f();
  }
  
  protected void v()
  {
    g = true;
    if ((!d) && (i))
    {
      l();
      b.setVisibility(0);
    }
    k.a(c.a(), d);
  }
  
  protected void w()
  {
    l();
    b.setVisibility(0);
    I();
  }
  
  protected void x()
  {
    if (h())
    {
      q();
      return;
    }
    b.setVisibility(8);
    if (!i) {
      H_();
    }
    p();
  }
  
  public static abstract interface a
  {
    public abstract void a(String paramString, boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.VideoPageFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */