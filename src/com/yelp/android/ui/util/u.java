package com.yelp.android.ui.util;

import android.content.res.Resources.NotFoundException;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.support.v4.content.d;
import android.widget.ImageView;
import com.yelp.android.util.o;

public class u
{
  private static final o<u> a = new o();
  private t b;
  private Uri c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  private t.c i;
  private t.b j;
  private ImageView k;
  private boolean l;
  
  private u(a parama)
  {
    b = a.a(parama);
    c = a.b(parama);
    d = a.c(parama);
    e = a.d(parama);
    f = a.e(parama);
    g = a.f(parama);
    h = a.g(parama);
    i = a.h(parama);
    j = a.i(parama);
    k = a.j(parama);
    l = a.k(parama);
    a.a(this);
  }
  
  private void k()
  {
    b.a(this);
  }
  
  public Uri a()
  {
    return c;
  }
  
  public int b()
  {
    return d;
  }
  
  public int c()
  {
    return e;
  }
  
  public int d()
  {
    return f;
  }
  
  public int e()
  {
    return g;
  }
  
  public int f()
  {
    return h;
  }
  
  public t.c g()
  {
    return i;
  }
  
  public t.b h()
  {
    return j;
  }
  
  public ImageView i()
  {
    return k;
  }
  
  public boolean j()
  {
    return l;
  }
  
  public static class a
  {
    private t a;
    private Uri b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private t.c h;
    private t.b i;
    private ImageView j;
    private boolean k = false;
    
    protected a(t paramt, Uri paramUri)
    {
      if (paramUri == null) {
        throw new IllegalArgumentException("URI cannot be null.");
      }
      a = paramt;
      b = paramUri;
    }
    
    private boolean b(int paramInt1, int paramInt2)
    {
      return ((paramInt1 > 0) || (paramInt1 == Integer.MIN_VALUE)) && ((paramInt2 > 0) || (paramInt2 == Integer.MIN_VALUE));
    }
    
    private boolean c(int paramInt)
    {
      boolean bool = false;
      try
      {
        Drawable localDrawable = d.a(a.b(), paramInt);
        if (localDrawable != null) {
          bool = true;
        }
        return bool;
      }
      catch (Resources.NotFoundException localNotFoundException) {}
      return false;
    }
    
    public a a(int paramInt)
    {
      if (!c(paramInt)) {
        throw new IllegalArgumentException("Drawable res ID must be valid.");
      }
      e = paramInt;
      return this;
    }
    
    public a a(int paramInt1, int paramInt2)
    {
      if (!b(paramInt1, paramInt2)) {
        throw new IllegalArgumentException("Width and height must be > 0 or SIZE_ORIGINAL.");
      }
      c = paramInt1;
      d = paramInt2;
      return this;
    }
    
    public a a(t.c paramc)
    {
      if (paramc == null) {
        throw new IllegalArgumentException("OnImageLoadedListener cannot be null.");
      }
      h = paramc;
      return this;
    }
    
    public void a()
    {
      k = true;
      u.a(new u(this, null));
    }
    
    public void a(ImageView paramImageView)
    {
      if (paramImageView == null) {
        throw new IllegalArgumentException("View cannot be null.");
      }
      j = paramImageView;
      u.a(new u(this, null));
    }
    
    public void a(t.b paramb)
    {
      if (paramb == null) {
        throw new IllegalArgumentException("ImageLoaderTarget cannot be null.");
      }
      if (!b(c, d)) {
        throw new IllegalArgumentException("Width and height must be > 0 or SIZE_ORIGINAL.");
      }
      i = paramb;
      u.a(new u(this, null));
    }
    
    public a b(int paramInt)
    {
      if (!c(paramInt)) {
        throw new IllegalArgumentException("Drawable res ID must be valid.");
      }
      f = paramInt;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */