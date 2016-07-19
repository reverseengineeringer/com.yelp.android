package com.yelp.android.ui.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build.VERSION;
import android.widget.ImageView;
import com.bumptech.glide.e;
import com.bumptech.glide.g;
import com.bumptech.glide.i;
import com.bumptech.glide.i.c;
import com.yelp.android.am.h;

public class o
  extends t
{
  private g b;
  private i c;
  
  private o(Context paramContext)
  {
    super(paramContext);
    b = g.a(paramContext);
    c = g.b(paramContext);
  }
  
  private com.bumptech.glide.a a(u paramu, boolean paramBoolean)
  {
    Object localObject1 = paramu.a();
    if (b((Uri)localObject1)) {}
    for (localObject1 = c.h().h().a(localObject1);; localObject1 = c.a(new p(a)).a(localObject1).h())
    {
      Object localObject2 = localObject1;
      if (paramBoolean) {
        localObject2 = ((com.bumptech.glide.a)localObject1).a(new com.bumptech.glide.load.resource.bitmap.d[] { ar.a(a, paramu.f()) });
      }
      return (com.bumptech.glide.a)localObject2;
    }
  }
  
  private com.yelp.android.am.a<com.yelp.android.ae.b> a(final t.b paramb, final int paramInt1, final int paramInt2)
  {
    new com.yelp.android.am.a()
    {
      public void a(com.yelp.android.ae.b paramAnonymousb, com.yelp.android.al.c<? super com.yelp.android.ae.b> paramAnonymousc)
      {
        paramb.a(paramAnonymousb);
      }
      
      public void a(h paramAnonymoush)
      {
        paramAnonymoush.a(paramInt1, paramInt2);
      }
    };
  }
  
  private com.yelp.android.am.b a(ImageView paramImageView, final t.c paramc)
  {
    new com.yelp.android.am.b(paramImageView)
    {
      public void a(Bitmap paramAnonymousBitmap, com.yelp.android.al.c paramAnonymousc)
      {
        super.a(paramAnonymousBitmap, paramAnonymousc);
        paramc.a(paramAnonymousBitmap);
      }
    };
  }
  
  private e b(u paramu)
  {
    t.c localc = paramu.g();
    t.b localb = paramu.h();
    if ((paramu.f() > 0) && (Build.VERSION.SDK_INT >= 18)) {}
    for (boolean bool = true; localb != null; bool = false) {
      return c(paramu);
    }
    if ((localc != null) || (bool)) {
      return a(paramu, bool);
    }
    return c(paramu);
  }
  
  private boolean b(Uri paramUri)
  {
    return (paramUri.getScheme() != null) && (paramUri.getScheme().matches("^file|content$"));
  }
  
  private com.bumptech.glide.c<Uri> c(u paramu)
  {
    paramu = paramu.a();
    if (b(paramu)) {
      return c.h().a(paramu);
    }
    return c.a(new p(a)).a(paramu);
  }
  
  public u.a a(Uri paramUri)
  {
    return new u.a(this, paramUri);
  }
  
  public void a()
  {
    b.i();
  }
  
  public void a(int paramInt)
  {
    b.a(paramInt);
  }
  
  protected void a(u paramu)
  {
    if (paramu.j())
    {
      c.a(paramu.a()).c(Integer.MIN_VALUE, Integer.MIN_VALUE);
      return;
    }
    e locale = b(paramu);
    if ((locale instanceof com.bumptech.glide.c)) {
      ((com.bumptech.glide.c)locale).c();
    }
    int i = paramu.b();
    int j = paramu.c();
    if (((i > 0) || (i == Integer.MIN_VALUE)) && ((j > 0) || (j == Integer.MIN_VALUE))) {
      locale.b(i, j);
    }
    if (paramu.d() != 0) {
      locale.d(paramu.d());
    }
    if (paramu.e() != 0) {
      locale.c(paramu.e());
    }
    ImageView localImageView = paramu.i();
    if ((paramu.g() == null) && (paramu.h() == null))
    {
      locale.a(localImageView);
      return;
    }
    if (paramu.h() != null)
    {
      locale.a(a(paramu.h(), paramu.b(), paramu.c()));
      return;
    }
    locale.a(a(localImageView, paramu.g()));
  }
  
  public static class a
    implements t.a
  {
    public t a(Context paramContext)
    {
      return new o(paramContext, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */