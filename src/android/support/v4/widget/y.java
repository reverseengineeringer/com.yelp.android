package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.widget.TextView;

public class y
{
  static final d a = new a();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 18)
    {
      a = new c();
      return;
    }
    if (i >= 17)
    {
      a = new b();
      return;
    }
  }
  
  public static void a(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
  {
    a.a(paramTextView, paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
  }
  
  static class a
    implements y.d
  {
    public void a(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
    {
      paramTextView.setCompoundDrawables(paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
    }
  }
  
  static class b
    extends y.a
  {
    public void a(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
    {
      z.a(paramTextView, paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
    }
  }
  
  static class c
    extends y.b
  {
    public void a(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4)
    {
      aa.a(paramTextView, paramDrawable1, paramDrawable2, paramDrawable3, paramDrawable4);
    }
  }
  
  static abstract interface d
  {
    public abstract void a(TextView paramTextView, Drawable paramDrawable1, Drawable paramDrawable2, Drawable paramDrawable3, Drawable paramDrawable4);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */