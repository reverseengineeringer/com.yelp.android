package com.yelp.android.am;

import android.widget.ImageView;
import com.yelp.android.ae.b;
import com.yelp.android.al.c;

public class d
  extends e<b>
{
  private int b;
  private b c;
  
  public d(ImageView paramImageView)
  {
    this(paramImageView, -1);
  }
  
  public d(ImageView paramImageView, int paramInt)
  {
    super(paramImageView);
    b = paramInt;
  }
  
  protected void a(b paramb)
  {
    ((ImageView)a).setImageDrawable(paramb);
  }
  
  public void a(b paramb, c<? super b> paramc)
  {
    Object localObject = paramb;
    if (!paramb.a())
    {
      float f1 = ((ImageView)a).getWidth() / ((ImageView)a).getHeight();
      float f2 = paramb.getIntrinsicWidth() / paramb.getIntrinsicHeight();
      localObject = paramb;
      if (Math.abs(f1 - 1.0F) <= 0.05F)
      {
        localObject = paramb;
        if (Math.abs(f2 - 1.0F) <= 0.05F) {
          localObject = new i(paramb, ((ImageView)a).getWidth());
        }
      }
    }
    super.a(localObject, paramc);
    c = ((b)localObject);
    ((b)localObject).a(b);
    ((b)localObject).start();
  }
  
  public void d()
  {
    if (c != null) {
      c.start();
    }
  }
  
  public void e()
  {
    if (c != null) {
      c.stop();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.am.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */