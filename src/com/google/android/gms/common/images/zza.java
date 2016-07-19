package com.google.android.gms.common.images;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.widget.ImageView;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.internal.jd;
import com.google.android.gms.internal.je;
import com.google.android.gms.internal.jf;
import com.google.android.gms.internal.jg;
import com.google.android.gms.internal.jg.a;
import java.lang.ref.WeakReference;

public abstract class zza
{
  final zza zzajO;
  protected int zzajP = 0;
  protected int zzajQ = 0;
  protected boolean zzajR = false;
  protected ImageManager.OnImageLoadedListener zzajS;
  private boolean zzajT = true;
  private boolean zzajU = false;
  private boolean zzajV = true;
  protected int zzajW;
  
  public zza(Uri paramUri, int paramInt)
  {
    zzajO = new zza(paramUri);
    zzajQ = paramInt;
  }
  
  private Drawable zza(Context paramContext, jg paramjg, int paramInt)
  {
    Resources localResources = paramContext.getResources();
    if (zzajW > 0)
    {
      jg.a locala = new jg.a(paramInt, zzajW);
      Drawable localDrawable = (Drawable)paramjg.get(locala);
      paramContext = localDrawable;
      if (localDrawable == null)
      {
        localDrawable = localResources.getDrawable(paramInt);
        paramContext = localDrawable;
        if ((zzajW & 0x1) != 0) {
          paramContext = zza(localResources, localDrawable);
        }
        paramjg.put(locala, paramContext);
      }
      return paramContext;
    }
    return localResources.getDrawable(paramInt);
  }
  
  protected Drawable zza(Resources paramResources, Drawable paramDrawable)
  {
    return je.a(paramResources, paramDrawable);
  }
  
  protected jd zza(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    if (paramDrawable1 != null)
    {
      localDrawable = paramDrawable1;
      if (!(paramDrawable1 instanceof jd)) {}
    }
    for (Drawable localDrawable = ((jd)paramDrawable1).b();; localDrawable = null) {
      return new jd(localDrawable, paramDrawable2);
    }
  }
  
  void zza(Context paramContext, Bitmap paramBitmap, boolean paramBoolean)
  {
    zzb.zzv(paramBitmap);
    Bitmap localBitmap = paramBitmap;
    if ((zzajW & 0x1) != 0) {
      localBitmap = je.a(paramBitmap);
    }
    paramContext = new BitmapDrawable(paramContext.getResources(), localBitmap);
    if (zzajS != null) {
      zzajS.onImageLoaded(zzajO.uri, paramContext, true);
    }
    zza(paramContext, paramBoolean, false, true);
  }
  
  void zza(Context paramContext, jg paramjg)
  {
    if (zzajV)
    {
      Drawable localDrawable = null;
      if (zzajP != 0) {
        localDrawable = zza(paramContext, paramjg, zzajP);
      }
      zza(localDrawable, false, true, false);
    }
  }
  
  void zza(Context paramContext, jg paramjg, boolean paramBoolean)
  {
    Drawable localDrawable = null;
    if (zzajQ != 0) {
      localDrawable = zza(paramContext, paramjg, zzajQ);
    }
    if (zzajS != null) {
      zzajS.onImageLoaded(zzajO.uri, localDrawable, false);
    }
    zza(localDrawable, paramBoolean, false, false);
  }
  
  protected abstract void zza(Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3);
  
  protected boolean zzb(boolean paramBoolean1, boolean paramBoolean2)
  {
    return (zzajT) && (!paramBoolean2) && ((!paramBoolean1) || (zzajU));
  }
  
  public void zzbM(int paramInt)
  {
    zzajQ = paramInt;
  }
  
  static final class zza
  {
    public final Uri uri;
    
    public zza(Uri paramUri)
    {
      uri = paramUri;
    }
    
    public boolean equals(Object paramObject)
    {
      if (!(paramObject instanceof zza)) {
        return false;
      }
      if (this == paramObject) {
        return true;
      }
      return zzw.equal(uri, uri);
    }
    
    public int hashCode()
    {
      return zzw.hashCode(new Object[] { uri });
    }
  }
  
  public static final class zzb
    extends zza
  {
    private WeakReference<ImageView> zzajX;
    
    public zzb(ImageView paramImageView, int paramInt)
    {
      super(paramInt);
      zzb.zzv(paramImageView);
      zzajX = new WeakReference(paramImageView);
    }
    
    public zzb(ImageView paramImageView, Uri paramUri)
    {
      super(0);
      zzb.zzv(paramImageView);
      zzajX = new WeakReference(paramImageView);
    }
    
    private void zza(ImageView paramImageView, Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    {
      if ((!paramBoolean2) && (!paramBoolean3)) {}
      for (int i = 1; (i != 0) && ((paramImageView instanceof jf)); i = 0)
      {
        int j = ((jf)paramImageView).a();
        if ((zzajQ == 0) || (j != zzajQ)) {
          break;
        }
        return;
      }
      paramBoolean1 = zzb(paramBoolean1, paramBoolean2);
      if ((zzajR) && (paramDrawable != null)) {
        paramDrawable = paramDrawable.getConstantState().newDrawable();
      }
      for (;;)
      {
        Object localObject = paramDrawable;
        if (paramBoolean1) {
          localObject = zza(paramImageView.getDrawable(), paramDrawable);
        }
        paramImageView.setImageDrawable((Drawable)localObject);
        if ((paramImageView instanceof jf))
        {
          paramDrawable = (jf)paramImageView;
          if (!paramBoolean3) {
            break label171;
          }
          paramImageView = zzajO.uri;
          label133:
          paramDrawable.a(paramImageView);
          if (i == 0) {
            break label176;
          }
        }
        label171:
        label176:
        for (i = zzajQ;; i = 0)
        {
          paramDrawable.a(i);
          if (!paramBoolean1) {
            break;
          }
          ((jd)localObject).a(250);
          return;
          paramImageView = null;
          break label133;
        }
      }
    }
    
    public boolean equals(Object paramObject)
    {
      if (!(paramObject instanceof zzb)) {
        return false;
      }
      if (this == paramObject) {
        return true;
      }
      Object localObject = (zzb)paramObject;
      paramObject = (ImageView)zzajX.get();
      localObject = (ImageView)zzajX.get();
      if ((localObject != null) && (paramObject != null) && (zzw.equal(localObject, paramObject))) {}
      for (boolean bool = true;; bool = false) {
        return bool;
      }
    }
    
    public int hashCode()
    {
      return 0;
    }
    
    protected void zza(Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    {
      ImageView localImageView = (ImageView)zzajX.get();
      if (localImageView != null) {
        zza(localImageView, paramDrawable, paramBoolean1, paramBoolean2, paramBoolean3);
      }
    }
  }
  
  public static final class zzc
    extends zza
  {
    private WeakReference<ImageManager.OnImageLoadedListener> zzajY;
    
    public zzc(ImageManager.OnImageLoadedListener paramOnImageLoadedListener, Uri paramUri)
    {
      super(0);
      zzb.zzv(paramOnImageLoadedListener);
      zzajY = new WeakReference(paramOnImageLoadedListener);
    }
    
    public boolean equals(Object paramObject)
    {
      if (!(paramObject instanceof zzc)) {
        return false;
      }
      if (this == paramObject) {
        return true;
      }
      paramObject = (zzc)paramObject;
      ImageManager.OnImageLoadedListener localOnImageLoadedListener1 = (ImageManager.OnImageLoadedListener)zzajY.get();
      ImageManager.OnImageLoadedListener localOnImageLoadedListener2 = (ImageManager.OnImageLoadedListener)zzajY.get();
      if ((localOnImageLoadedListener2 != null) && (localOnImageLoadedListener1 != null) && (zzw.equal(localOnImageLoadedListener2, localOnImageLoadedListener1)) && (zzw.equal(zzajO, zzajO))) {}
      for (boolean bool = true;; bool = false) {
        return bool;
      }
    }
    
    public int hashCode()
    {
      return zzw.hashCode(new Object[] { zzajO });
    }
    
    protected void zza(Drawable paramDrawable, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    {
      if (!paramBoolean2)
      {
        ImageManager.OnImageLoadedListener localOnImageLoadedListener = (ImageManager.OnImageLoadedListener)zzajY.get();
        if (localOnImageLoadedListener != null) {
          localOnImageLoadedListener.onImageLoaded(zzajO.uri, paramDrawable, paramBoolean3);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.images.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */