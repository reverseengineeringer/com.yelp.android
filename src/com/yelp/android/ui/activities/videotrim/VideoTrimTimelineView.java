package com.yelp.android.ui.activities.videotrim;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import com.yelp.android.serializable.LocalVideo;
import com.yelp.android.ui.util.ImageInputHelper;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.Timer;
import java.util.TreeMap;

@TargetApi(14)
public class VideoTrimTimelineView
  extends View
  implements p
{
  private final Drawable a;
  private LocalVideo b;
  private BetterMediaPlayer c;
  private m d;
  private final TreeMap<Integer, l> e;
  private final Paint f = new Paint();
  private final NinePatchDrawable g;
  private final int h;
  private NinePatchDrawable i;
  private final NinePatchDrawable j;
  private final NinePatchDrawable k;
  private final int l;
  private final int m;
  private float n;
  private float o;
  private VideoTrimTimelineView.TouchState p;
  private int q;
  private int r;
  private int s;
  private int t;
  private int u;
  private float v;
  private float w;
  private float x;
  private float y;
  private Timer z;
  
  public VideoTrimTimelineView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    f.setColor(-12303292);
    f.setStyle(Paint.Style.FILL);
    paramContext = paramContext.getResources();
    paramAttributeSet = new Rect();
    k = ((NinePatchDrawable)paramContext.getDrawable(2130838518));
    j = ((NinePatchDrawable)paramContext.getDrawable(2130838519));
    i = j;
    j.getPadding(paramAttributeSet);
    l = left;
    m = top;
    Rect localRect = new Rect();
    g = ((NinePatchDrawable)paramContext.getDrawable(2130838517));
    g.getPadding(localRect);
    h = (top + top);
    a = paramContext.getDrawable(2130838516);
    p = VideoTrimTimelineView.TouchState.NONE;
    d = new m(2000, this);
    e = new TreeMap();
  }
  
  private void c()
  {
    q = getTrimBegin();
    c.seekTo(q);
  }
  
  private void d()
  {
    q = getTrimEnd();
    c.seekTo(q);
  }
  
  public void a()
  {
    if (z != null) {
      z.cancel();
    }
    if (c != null)
    {
      c.setOnSeekCompleteListener(null);
      c = null;
    }
  }
  
  public void a(int paramInt, Bitmap paramBitmap)
  {
    int i2 = (int)(y - x);
    int i1 = (int)(2000.0F * v) + 1;
    if (paramInt + 2000 > b.getDuration()) {
      i1 = (int)((b.getDuration() - paramInt) * v);
    }
    if (i1 <= 0) {
      return;
    }
    paramBitmap = ImageInputHelper.a(paramBitmap, i1, i2, true);
    do
    {
      e.put(Integer.valueOf(paramInt), new l(paramBitmap, paramInt * v, x, i2));
      i1 = paramInt - 2000;
      if (i1 < 0) {
        break;
      }
      paramInt = i1;
    } while (e.get(Integer.valueOf(i1)) == null);
  }
  
  public void a(BetterMediaPlayer paramBetterMediaPlayer)
  {
    c = paramBetterMediaPlayer;
    c();
    if (z != null) {
      z.cancel();
    }
    z = new Timer();
    z.schedule(new r(this), 33L, 33L);
  }
  
  public void b()
  {
    if (c == null) {
      return;
    }
    if (p == VideoTrimTimelineView.TouchState.LEFT_HANDLE)
    {
      s = ((int)(s - n));
      if (t - s < 3000) {
        s = (t - 3000);
      }
      if (t - s > 12000) {
        s = (t - 12000);
      }
      if (s < 0) {
        s = 0;
      }
      if (r + s < 0) {
        s = (-r);
      }
      c();
    }
    for (;;)
    {
      n = 0.0F;
      q = c.getCurrentPosition();
      if ((q > r + t + 100) || (q < r + s - 100) || (q > b.getDuration() - 100)) {
        c();
      }
      d.a(r + s + (int)(getWidth() / v));
      postInvalidate();
      return;
      if (p == VideoTrimTimelineView.TouchState.RIGHT_HANDLE)
      {
        t = ((int)(t - n));
        if (t - s < 3000) {
          t = (s + 3000);
        }
        if (t - s > 12000) {
          t = (s + 12000);
        }
        if (t > u) {
          t = u;
        }
        if (r + t > b.getDuration()) {
          t = (b.getDuration() - r);
        }
        d();
      }
      else if (p == VideoTrimTimelineView.TouchState.PAN)
      {
        r = ((int)(r + n));
        if (r + t > b.getDuration()) {
          r = (b.getDuration() - t);
        }
        if (r + s < 0) {
          r = (-s);
        }
      }
    }
  }
  
  public int getTrimBegin()
  {
    return r + s;
  }
  
  public int getTrimEnd()
  {
    return r + t;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (c == null) {
      return;
    }
    super.onDraw(paramCanvas);
    paramCanvas.translate(-r * v + w, 0.0F);
    float f1 = x;
    float f2 = b.getDuration();
    paramCanvas.drawRect(0.0F, f1, v * f2, y, f);
    int i1 = -2;
    while ((i1 - 2) * 2000 <= u)
    {
      int i2 = r;
      Object localObject = e.floorEntry(Integer.valueOf(i2 + i1 * 2000));
      if ((localObject != null) && (((Map.Entry)localObject).getValue() != null))
      {
        localObject = (l)((Map.Entry)localObject).getValue();
        paramCanvas.drawBitmap(((l)localObject).a(), ((l)localObject).b(), f);
      }
      i1 += 1;
    }
    paramCanvas.translate(r * v, 0.0F);
    a.setBounds((int)-w, (int)x, (int)(s * v), (int)y);
    a.draw(paramCanvas);
    a.setBounds((int)(t * v), (int)x, getWidth(), (int)y);
    a.draw(paramCanvas);
    i.setBounds((int)(s * v - l), (int)x - m, (int)(t * v + l), (int)y + m);
    i.draw(paramCanvas);
    paramCanvas.translate((q - r) * v, 0.0F);
    g.draw(paramCanvas);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    w = (l * 2);
    float f1 = h;
    f1 = paramInt2 - f1 * 2.0F;
    float f2 = f1 / 1.3333334F / 2000.0F;
    float f3 = (paramInt1 - w * 2.0F) / 12000.0F;
    float f4 = f3 * 2000.0F * 1.3333334F;
    if (f1 < f4)
    {
      v = f2;
      f1 = (paramInt2 - f1) / 2.0F;
    }
    for (u = ((int)((paramInt1 - w * 2.0F) / v));; u = 12000)
    {
      x = f1;
      y = (paramInt2 - f1);
      f1 = (int)((y - x) / g.getIntrinsicHeight() * g.getIntrinsicWidth()) / 2;
      g.setBounds((int)-f1, (int)x - h, (int)f1, (int)y + h);
      f1 = y;
      f2 = x;
      Iterator localIterator = e.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        l locall = (l)localEntry.getValue();
        if (locall != null) {
          locall.a(((Integer)localEntry.getKey()).intValue() * v, x, f1 - f2);
        }
      }
      v = f3;
      f1 = (paramInt2 - f4) / 2.0F;
    }
  }
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i2 = 0;
    float f1 = paramMotionEvent.getX();
    switch (paramMotionEvent.getAction())
    {
    }
    for (;;)
    {
      n += (o - f1) / v;
      o = f1;
      return true;
      float f2 = s;
      float f3 = v;
      float f4 = w;
      float f5 = l / 2;
      float f6 = t;
      float f7 = v;
      float f8 = w;
      float f9 = l / 2;
      if (Math.abs(f1 - (f2 * f3 + f4 - f5)) <= l * 2) {}
      for (int i1 = 1;; i1 = 0)
      {
        if (Math.abs(f1 - (f6 * f7 + f8 + f9)) <= l * 2) {
          i2 = 1;
        }
        o = f1;
        if (i1 == 0) {
          break label203;
        }
        p = VideoTrimTimelineView.TouchState.LEFT_HANDLE;
        break;
      }
      label203:
      if (i2 != 0)
      {
        p = VideoTrimTimelineView.TouchState.RIGHT_HANDLE;
      }
      else
      {
        p = VideoTrimTimelineView.TouchState.PAN;
        continue;
        p = VideoTrimTimelineView.TouchState.NONE;
        if (t - s <= 3100) {
          i = k;
        } else {
          i = j;
        }
      }
    }
  }
  
  public void setLocalVideo(LocalVideo paramLocalVideo)
  {
    b = paramLocalVideo;
    r = 0;
    s = 0;
    t = Math.min(b.getDuration(), 12000);
    d.a(b);
    e.clear();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.VideoTrimTimelineView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */