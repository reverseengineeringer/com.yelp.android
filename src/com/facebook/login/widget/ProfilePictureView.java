package com.facebook.login.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.facebook.FacebookException;
import com.facebook.LoggingBehavior;
import com.facebook.internal.j;
import com.facebook.internal.k;
import com.facebook.internal.k.a;
import com.facebook.internal.k.b;
import com.facebook.internal.l;
import com.facebook.internal.n;
import com.facebook.internal.u;
import com.facebook.o.b;
import com.facebook.o.c;
import com.facebook.o.h;

public class ProfilePictureView
  extends FrameLayout
{
  public static final String a = ProfilePictureView.class.getSimpleName();
  private String b;
  private int c = 0;
  private int d = 0;
  private boolean e = true;
  private Bitmap f;
  private ImageView g;
  private int h = -1;
  private k i;
  private a j;
  private Bitmap k = null;
  
  public ProfilePictureView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
    a(paramAttributeSet);
  }
  
  public ProfilePictureView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
    a(paramAttributeSet);
  }
  
  private void a(Context paramContext)
  {
    removeAllViews();
    g = new ImageView(paramContext);
    paramContext = new FrameLayout.LayoutParams(-1, -1);
    g.setLayoutParams(paramContext);
    g.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
    addView(g);
  }
  
  private void a(AttributeSet paramAttributeSet)
  {
    paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, o.h.com_facebook_profile_picture_view);
    setPresetSize(paramAttributeSet.getInt(o.h.com_facebook_profile_picture_view_com_facebook_preset_size, -1));
    e = paramAttributeSet.getBoolean(o.h.com_facebook_profile_picture_view_com_facebook_is_cropped, true);
    paramAttributeSet.recycle();
  }
  
  private void a(l paraml)
  {
    Bitmap localBitmap;
    Exception localException;
    if (paraml.a() == i)
    {
      i = null;
      localBitmap = paraml.c();
      localException = paraml.b();
      if (localException == null) {
        break label92;
      }
      paraml = j;
      if (paraml == null) {
        break label76;
      }
      paraml.a(new FacebookException("Error in downloading profile picture for profileId: " + getProfileId(), localException));
    }
    label76:
    label92:
    do
    {
      do
      {
        return;
        n.a(LoggingBehavior.REQUESTS, 6, a, localException.toString());
        return;
      } while (localBitmap == null);
      setImageBitmap(localBitmap);
    } while (!paraml.d());
    b(false);
  }
  
  private void a(boolean paramBoolean)
  {
    boolean bool = c();
    if ((b == null) || (b.length() == 0) || ((d == 0) && (c == 0))) {
      b();
    }
    while ((!bool) && (!paramBoolean)) {
      return;
    }
    b(true);
  }
  
  private void b()
  {
    if (i != null) {
      j.b(i);
    }
    if (k == null)
    {
      if (a()) {}
      for (int m = o.c.com_facebook_profile_picture_blank_square;; m = o.c.com_facebook_profile_picture_blank_portrait)
      {
        setImageBitmap(BitmapFactory.decodeResource(getResources(), m));
        return;
      }
    }
    c();
    setImageBitmap(Bitmap.createScaledBitmap(k, d, c, false));
  }
  
  private void b(boolean paramBoolean)
  {
    k localk = new k.a(getContext(), k.a(b, d, c)).a(paramBoolean).a(this).a(new k.b()
    {
      public void a(l paramAnonymousl)
      {
        ProfilePictureView.a(ProfilePictureView.this, paramAnonymousl);
      }
    }).a();
    if (i != null) {
      j.b(i);
    }
    i = localk;
    j.a(localk);
  }
  
  private int c(boolean paramBoolean)
  {
    int m;
    switch (h)
    {
    default: 
      return 0;
    case -2: 
      m = o.b.com_facebook_profilepictureview_preset_size_small;
    }
    for (;;)
    {
      return getResources().getDimensionPixelSize(m);
      m = o.b.com_facebook_profilepictureview_preset_size_normal;
      continue;
      m = o.b.com_facebook_profilepictureview_preset_size_large;
      continue;
      if (!paramBoolean) {
        break;
      }
      m = o.b.com_facebook_profilepictureview_preset_size_normal;
    }
  }
  
  private boolean c()
  {
    boolean bool = false;
    int m = getHeight();
    int i1 = getWidth();
    if ((i1 < 1) || (m < 1)) {
      return false;
    }
    int n = c(false);
    if (n != 0) {
      m = n;
    }
    for (;;)
    {
      if (n <= m)
      {
        if (a()) {}
        for (m = n;; m = 0)
        {
          if ((n != d) || (m != c)) {
            bool = true;
          }
          d = n;
          c = m;
          return bool;
        }
      }
      if (a()) {}
      for (n = m;; n = 0) {
        break;
      }
      n = i1;
    }
  }
  
  private void setImageBitmap(Bitmap paramBitmap)
  {
    if ((g != null) && (paramBitmap != null))
    {
      f = paramBitmap;
      g.setImageBitmap(paramBitmap);
    }
  }
  
  public final boolean a()
  {
    return e;
  }
  
  public final a getOnErrorListener()
  {
    return j;
  }
  
  public final int getPresetSize()
  {
    return h;
  }
  
  public final String getProfileId()
  {
    return b;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    i = null;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    a(false);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i2 = 1;
    ViewGroup.LayoutParams localLayoutParams = getLayoutParams();
    int i4 = 0;
    int i5 = View.MeasureSpec.getSize(paramInt2);
    int i3 = View.MeasureSpec.getSize(paramInt1);
    int i1 = i5;
    int m = i4;
    int n = paramInt2;
    if (View.MeasureSpec.getMode(paramInt2) != 1073741824)
    {
      i1 = i5;
      m = i4;
      n = paramInt2;
      if (height == -2)
      {
        i1 = c(true);
        n = View.MeasureSpec.makeMeasureSpec(i1, 1073741824);
        m = 1;
      }
    }
    if ((View.MeasureSpec.getMode(paramInt1) != 1073741824) && (width == -2))
    {
      paramInt2 = c(true);
      paramInt1 = View.MeasureSpec.makeMeasureSpec(paramInt2, 1073741824);
      m = i2;
    }
    for (;;)
    {
      if (m != 0)
      {
        setMeasuredDimension(paramInt2, i1);
        measureChildren(paramInt1, n);
        return;
      }
      super.onMeasure(paramInt1, n);
      return;
      paramInt2 = i3;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (paramParcelable.getClass() != Bundle.class) {
      super.onRestoreInstanceState(paramParcelable);
    }
    do
    {
      return;
      paramParcelable = (Bundle)paramParcelable;
      super.onRestoreInstanceState(paramParcelable.getParcelable("ProfilePictureView_superState"));
      b = paramParcelable.getString("ProfilePictureView_profileId");
      h = paramParcelable.getInt("ProfilePictureView_presetSize");
      e = paramParcelable.getBoolean("ProfilePictureView_isCropped");
      d = paramParcelable.getInt("ProfilePictureView_width");
      c = paramParcelable.getInt("ProfilePictureView_height");
      setImageBitmap((Bitmap)paramParcelable.getParcelable("ProfilePictureView_bitmap"));
    } while (!paramParcelable.getBoolean("ProfilePictureView_refresh"));
    a(true);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    Parcelable localParcelable = super.onSaveInstanceState();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("ProfilePictureView_superState", localParcelable);
    localBundle.putString("ProfilePictureView_profileId", b);
    localBundle.putInt("ProfilePictureView_presetSize", h);
    localBundle.putBoolean("ProfilePictureView_isCropped", e);
    localBundle.putParcelable("ProfilePictureView_bitmap", f);
    localBundle.putInt("ProfilePictureView_width", d);
    localBundle.putInt("ProfilePictureView_height", c);
    if (i != null) {}
    for (boolean bool = true;; bool = false)
    {
      localBundle.putBoolean("ProfilePictureView_refresh", bool);
      return localBundle;
    }
  }
  
  public final void setCropped(boolean paramBoolean)
  {
    e = paramBoolean;
    a(false);
  }
  
  public final void setDefaultProfilePicture(Bitmap paramBitmap)
  {
    k = paramBitmap;
  }
  
  public final void setOnErrorListener(a parama)
  {
    j = parama;
  }
  
  public final void setPresetSize(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Must use a predefined preset size");
    }
    h = paramInt;
    requestLayout();
  }
  
  public final void setProfileId(String paramString)
  {
    boolean bool = false;
    if ((u.a(b)) || (!b.equalsIgnoreCase(paramString)))
    {
      b();
      bool = true;
    }
    b = paramString;
    a(bool);
  }
  
  public static abstract interface a
  {
    public abstract void a(FacebookException paramFacebookException);
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.widget.ProfilePictureView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */