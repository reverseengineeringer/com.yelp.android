package com.google.android.gms.common.images;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.google.android.gms.internal.iz;
import com.google.android.gms.internal.ja;
import com.google.android.gms.internal.jc;
import com.google.android.gms.internal.jc.a;
import com.google.android.gms.internal.je;

public abstract class a
{
  final a.a LJ;
  protected int LK = 0;
  protected int LL = 0;
  protected boolean LM = false;
  protected ImageManager.OnImageLoadedListener LN;
  private boolean LO = true;
  private boolean LP = false;
  private boolean LQ = true;
  protected int LR;
  
  public a(Uri paramUri, int paramInt)
  {
    LJ = new a.a(paramUri);
    LL = paramInt;
  }
  
  private Drawable a(Context paramContext, jc paramjc, int paramInt)
  {
    Resources localResources = paramContext.getResources();
    if (LR > 0)
    {
      jc.a locala = new jc.a(paramInt, LR);
      Drawable localDrawable = (Drawable)paramjc.get(locala);
      paramContext = localDrawable;
      if (localDrawable == null)
      {
        localDrawable = localResources.getDrawable(paramInt);
        paramContext = localDrawable;
        if ((LR & 0x1) != 0) {
          paramContext = a(localResources, localDrawable);
        }
        paramjc.put(locala, paramContext);
      }
      return paramContext;
    }
    return localResources.getDrawable(paramInt);
  }
  
  protected Drawable a(Resources paramResources, Drawable paramDrawable)
  {
    return ja.a(paramResources, paramDrawable);
  }
  
  protected iz a(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    if (paramDrawable1 != null)
    {
      localDrawable = paramDrawable1;
      if (!(paramDrawable1 instanceof iz)) {}
    }
    for (Drawable localDrawable = ((iz)paramDrawable1).hh();; localDrawable = null) {
      return new iz(localDrawable, paramDrawable2);
    }
  }
  
  void a(Context paramContext, Bitmap paramBitmap, boolean paramBoolean)
  {
    je.f(paramBitmap);
    Bitmap localBitmap = paramBitmap;
    if ((LR & 0x1) != 0) {
      localBitmap = ja.a(paramBitmap);
    }
    paramContext = new BitmapDrawable(paramContext.getResources(), localBitmap);
    if (LN != null) {
      LN.onImageLoaded(LJ.uri, paramContext, true);
    }
    a(paramContext, paramBoolean, false, true);
  }
  
  void a(Context paramContext, jc paramjc)
  {
    if (LQ)
    {
      Drawable localDrawable = null;
      if (LK != 0) {
        localDrawable = a(paramContext, paramjc, LK);
      }
      a(localDrawable, false, true, false);
    }
  }
  
  void a(Context paramContext, jc paramjc, boolean paramBoolean)
  {
    Drawable localDrawable = null;
    if (LL != 0) {
      localDrawable = a(paramContext, paramjc, LL);
    }
    if (LN != null) {
      LN.onImageLoaded(LJ.uri, localDrawable, false);
    }
    a(localDrawable, paramBoolean, false, false);
  }
  
  protected abstract void a(Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3);
  
  public void az(int paramInt)
  {
    LL = paramInt;
  }
  
  protected boolean b(boolean paramBoolean1, boolean paramBoolean2)
  {
    return (LO) && (!paramBoolean2) && ((!paramBoolean1) || (LP));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */