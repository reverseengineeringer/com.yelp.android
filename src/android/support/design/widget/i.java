package android.support.design.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.yelp.android.a.a.c;

abstract class i
{
  static final int[] b = { 16842919, 16842910 };
  static final int[] c = { 16842908, 16842910 };
  static final int[] d = new int[0];
  final View e;
  final m f;
  
  i(View paramView, m paramm)
  {
    e = paramView;
    f = paramm;
  }
  
  Drawable a(int paramInt, ColorStateList paramColorStateList)
  {
    Resources localResources = e.getResources();
    b localb = d();
    localb.a(localResources.getColor(a.c.design_fab_stroke_top_outer_color), localResources.getColor(a.c.design_fab_stroke_top_inner_color), localResources.getColor(a.c.design_fab_stroke_end_inner_color), localResources.getColor(a.c.design_fab_stroke_end_outer_color));
    localb.a(paramInt);
    localb.a(paramColorStateList.getDefaultColor());
    return localb;
  }
  
  abstract void a();
  
  abstract void a(float paramFloat);
  
  abstract void a(int paramInt);
  
  abstract void a(ColorStateList paramColorStateList);
  
  abstract void a(PorterDuff.Mode paramMode);
  
  abstract void a(Drawable paramDrawable, ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int paramInt1, int paramInt2);
  
  abstract void a(int[] paramArrayOfInt);
  
  abstract void b();
  
  abstract void b(float paramFloat);
  
  abstract void c();
  
  b d()
  {
    return new b();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */