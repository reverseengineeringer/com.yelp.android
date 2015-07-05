package com.yelp.android.ui.activities.nearby;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import com.yelp.android.ui.util.ab;

class c
  extends ab
{
  float a = d.getDimension(2131427496);
  float b = a / 2.0F;
  float c = i.getResources().getDimension(2131427370);
  
  c(ActivityNearby paramActivityNearby, View paramView1, View paramView2, View[] paramArrayOfView, Resources paramResources, View paramView3, ImageView paramImageView, Drawable paramDrawable1, Drawable paramVarArgs)
  {
    super(paramView1, paramView2, paramArrayOfView);
  }
  
  protected void a()
  {
    super.a();
    f.setImageDrawable(h);
    f.setOnClickListener(new d(this));
  }
  
  protected void a(float paramFloat)
  {
    super.a(paramFloat);
    float f1 = (c - paramFloat) / c;
    f1 = b - f1 * b;
    float f2 = a;
    e.setPadding(e.getPaddingLeft(), (int)f1, e.getPaddingRight(), (int)(f2 - f1));
    if ((paramFloat != c) && (f.getDrawable() != g))
    {
      f.setImageDrawable(g);
      f.setOnClickListener(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */