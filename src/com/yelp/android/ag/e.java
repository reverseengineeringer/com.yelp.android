package com.yelp.android.ag;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.yelp.android.af.f;

public abstract class e<Z>
  extends k<ImageView, Z>
  implements f
{
  public e(ImageView paramImageView)
  {
    super(paramImageView);
  }
  
  public void a(Drawable paramDrawable)
  {
    ((ImageView)a).setImageDrawable(paramDrawable);
  }
  
  public void a(Exception paramException, Drawable paramDrawable)
  {
    ((ImageView)a).setImageDrawable(paramDrawable);
  }
  
  protected abstract void a(Z paramZ);
  
  public void a(Z paramZ, com.yelp.android.af.e<? super Z> parame)
  {
    if ((parame == null) || (!parame.a(paramZ, this))) {
      a(paramZ);
    }
  }
  
  public Drawable b()
  {
    return ((ImageView)a).getDrawable();
  }
  
  public void b(Drawable paramDrawable)
  {
    ((ImageView)a).setImageDrawable(paramDrawable);
  }
  
  public void c(Drawable paramDrawable)
  {
    ((ImageView)a).setImageDrawable(paramDrawable);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */