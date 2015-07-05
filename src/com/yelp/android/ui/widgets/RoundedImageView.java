package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.yelp.android.bf.e;

public class RoundedImageView
  extends ImageView
{
  private static int a;
  
  public RoundedImageView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public RoundedImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0);
    a();
  }
  
  public RoundedImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private static Bitmap a(Drawable paramDrawable)
  {
    if ((paramDrawable instanceof BitmapDrawable)) {
      return ((BitmapDrawable)paramDrawable).getBitmap();
    }
    int i = paramDrawable.getIntrinsicWidth();
    int j = paramDrawable.getIntrinsicHeight();
    if ((i == -1) || (j == -1)) {
      return null;
    }
    Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    paramDrawable.setBounds(0, 0, localCanvas.getWidth(), localCanvas.getHeight());
    paramDrawable.draw(localCanvas);
    return localBitmap;
  }
  
  private void a()
  {
    a = (int)getResources().getDimension(e.corner_radius);
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
    {
      super.setImageBitmap(null);
      return;
    }
    super.setImageDrawable(new ai(paramBitmap, a));
  }
  
  public void setImageDrawable(Drawable paramDrawable)
  {
    if (paramDrawable == null)
    {
      super.setImageDrawable(null);
      return;
    }
    Bitmap localBitmap = a(paramDrawable);
    if (localBitmap == null)
    {
      super.setImageDrawable(paramDrawable);
      return;
    }
    super.setImageDrawable(new ai(localBitmap, a));
  }
  
  public void setImageResource(int paramInt)
  {
    Bitmap localBitmap2 = BitmapFactory.decodeResource(getResources(), paramInt);
    Bitmap localBitmap1 = localBitmap2;
    if (localBitmap2 == null)
    {
      localBitmap2 = a(getResources().getDrawable(paramInt));
      localBitmap1 = localBitmap2;
      if (localBitmap2 == null)
      {
        super.setImageResource(paramInt);
        return;
      }
    }
    setImageBitmap(localBitmap1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.RoundedImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */