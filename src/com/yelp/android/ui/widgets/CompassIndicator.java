package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.location.Location;
import android.util.AttributeSet;
import android.view.Display;
import android.view.WindowManager;
import android.widget.ImageView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.k;
import com.yelp.android.appdata.m;

public class CompassIndicator
  extends ImageView
  implements m
{
  private static final double a = Math.toRadians(45.0D);
  private static Bitmap b;
  private double c;
  private final Display d;
  private final Location e;
  private final Matrix f;
  private final Paint g;
  private boolean h;
  
  public CompassIndicator(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CompassIndicator(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public CompassIndicator(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (b == null) {
      b = ((BitmapDrawable)getContext().getResources().getDrawable(2130838179)).getBitmap();
    }
    e = new Location("");
    d = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
    c = NaN.0D;
    f = new Matrix();
    g = new Paint();
    g.setAntiAlias(true);
  }
  
  public void a(double paramDouble)
  {
    if ((Double.isNaN(c)) || (Math.abs(c - paramDouble) >= 5.0D))
    {
      c = paramDouble;
      invalidate();
    }
  }
  
  public void a(double paramDouble1, double paramDouble2, String paramString)
  {
    e.setLatitude(paramDouble1);
    e.setLongitude(paramDouble2);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    int i = 0;
    Location localLocation = AppData.b().n().c();
    if (localLocation == null) {
      return;
    }
    if ((Double.isNaN(c)) || (Math.tan(a) * (e.distanceTo(localLocation) * 1000.0F) < localLocation.getAccuracy()))
    {
      paramCanvas.drawColor(0);
      return;
    }
    switch (d.getRotation())
    {
    }
    for (;;)
    {
      double d1 = (localLocation.bearingTo(e) + 360.0F) % 360.0F;
      double d2 = c;
      double d3 = i;
      f.setRotate((float)((d1 - d2 - d3) % 360.0D), b.getWidth() / 2, b.getHeight() / 2);
      paramCanvas.drawBitmap(b, f, g);
      return;
      i = 90;
      continue;
      i = 180;
      continue;
      i = 270;
    }
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    if ((paramInt == 0) && (!h)) {
      h = AppData.b().t().a(this);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.CompassIndicator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */