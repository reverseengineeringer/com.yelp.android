package com.yelp.android.ui.util;

import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.bk;
import android.support.v7.widget.bt;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ao;
import com.yelp.android.ui.panels.SpanOfPhotosView;

public class DynamicImageView
  extends FrameLayout
{
  private RecyclerView a;
  private SpanOfPhotosView b;
  private ax c;
  private int d;
  private bc e;
  private final Runnable f = new u(this);
  private final bk g = new v(this);
  
  public DynamicImageView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public DynamicImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public DynamicImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private void a()
  {
    if (c.a() <= d)
    {
      b.setMaxPhotos(d);
      b.setMedia(c.d());
      if (b.getParent() == null)
      {
        removeView(a);
        addView(b);
      }
    }
    while (a.getParent() != null) {
      return;
    }
    removeView(b);
    addView(a);
  }
  
  private void a(Context paramContext)
  {
    a = new RecyclerView(paramContext);
    a.setLayoutManager(new LinearLayoutManager(paramContext, 0, false));
    b = new SpanOfPhotosView(paramContext);
    b.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
  }
  
  public void a(bt parambt)
  {
    a.a(parambt);
  }
  
  public int getNumberScrolled()
  {
    return c.g();
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    d = (paramInt1 / (AppData.b().getResources().getDimensionPixelSize(2131427540) + ao.b));
    post(f);
  }
  
  public void setAdapter(ax paramax)
  {
    c = paramax;
    a.setAdapter(paramax);
    c.a(g);
    e = new be(paramax.d());
    a();
  }
  
  public void setItemSelectedListener(w paramw)
  {
    c.a(paramw);
    b.setItemSelectedListener(paramw);
  }
  
  public void setOnPhotoSelectionIntent(PendingIntent paramPendingIntent)
  {
    if (c != null) {
      c.a(paramPendingIntent, e);
    }
    b.a(paramPendingIntent, e);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.DynamicImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */