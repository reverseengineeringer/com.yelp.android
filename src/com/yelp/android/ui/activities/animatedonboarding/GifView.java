package com.yelp.android.ui.activities.animatedonboarding;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import com.yelp.android.b.a;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import pl.droidsonroids.gif.GifImageView;
import pl.droidsonroids.gif.a;
import pl.droidsonroids.gif.c;

public class GifView
  extends FrameLayout
{
  private c a;
  private GifImageView b;
  private Handler c;
  private Runnable d;
  private c e;
  private GifImageView f;
  private ArrayList<b> g;
  private int h;
  private boolean i;
  private a j = new GifView.2(this);
  
  public GifView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, b.a.GifView, 0, 0);
    try
    {
      a = new c(getResources(), paramAttributeSet.getResourceId(1, 0));
      e = new c(getResources(), paramAttributeSet.getResourceId(2, 0));
      paramAttributeSet.recycle();
      paramContext = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130903266, this, true);
      b = ((GifImageView)paramContext.findViewById(2131690322));
      f = ((GifImageView)paramContext.findViewById(2131690321));
      b.setImageDrawable(a);
      a.stop();
      f.setImageDrawable(e);
      e.stop();
      g = new ArrayList();
      c = new Handler();
      h = 1;
      i = false;
      a.a(j);
      e.a(j);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        YelpLog.remoteError(localException);
      }
    }
  }
  
  private void d()
  {
    int k = g.size();
    int m = g.size();
    h = (((b)g.get(g.size() - 1)).a() * (m * k));
    i = true;
    if (!a())
    {
      d = new GifView.1(this);
      c.post(d);
    }
  }
  
  public void a(int paramInt)
  {
    a.b(paramInt);
    e.b(e.d() - paramInt);
  }
  
  public void a(b paramb)
  {
    if (!g.isEmpty())
    {
      b localb = (b)g.get(g.size() - 1);
      if ((localb.a(paramb)) || (localb.c() != paramb.b())) {
        return;
      }
    }
    paramb.a(a.d());
    g.add(paramb);
    d();
  }
  
  public boolean a()
  {
    return (a.isPlaying()) || (e.isPlaying());
  }
  
  public void b()
  {
    if (a != null)
    {
      a.stop();
      a.a();
    }
    if (e != null)
    {
      e.stop();
      e.a();
    }
  }
  
  public void c()
  {
    a.stop();
    e.stop();
    g.clear();
  }
  
  public int getJobListSize()
  {
    return g.size();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.animatedonboarding.GifView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */