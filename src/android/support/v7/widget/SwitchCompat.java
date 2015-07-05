package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ba;
import android.support.v4.view.ce;
import android.support.v7.internal.widget.bd;
import android.support.v7.internal.widget.bg;
import android.support.v7.internal.widget.bm;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Animation;
import android.widget.CompoundButton;
import com.yelp.android.g.b;
import com.yelp.android.g.l;
import java.util.List;

public class SwitchCompat
  extends CompoundButton
{
  private static final int[] F = { 16842912 };
  private Layout A;
  private TransformationMethod B;
  private Animation C;
  private final Rect D = new Rect();
  private final bd E;
  private Drawable a;
  private Drawable b;
  private int c;
  private int d;
  private int e;
  private boolean f;
  private CharSequence g;
  private CharSequence h;
  private boolean i;
  private int j;
  private int k;
  private float l;
  private float m;
  private VelocityTracker n = VelocityTracker.obtain();
  private int o;
  private float p;
  private int q;
  private int r;
  private int s;
  private int t;
  private int u;
  private int v;
  private int w;
  private TextPaint x = new TextPaint(1);
  private ColorStateList y;
  private Layout z;
  
  public SwitchCompat(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, b.switchStyle);
  }
  
  public SwitchCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Resources localResources = getResources();
    x.density = getDisplayMetricsdensity;
    paramAttributeSet = bg.a(paramContext, paramAttributeSet, l.SwitchCompat, paramInt, 0);
    a = paramAttributeSet.a(l.SwitchCompat_android_thumb);
    b = paramAttributeSet.a(l.SwitchCompat_track);
    g = paramAttributeSet.b(l.SwitchCompat_android_textOn);
    h = paramAttributeSet.b(l.SwitchCompat_android_textOff);
    i = paramAttributeSet.a(l.SwitchCompat_showText, true);
    c = paramAttributeSet.d(l.SwitchCompat_thumbTextPadding, 0);
    d = paramAttributeSet.d(l.SwitchCompat_switchMinWidth, 0);
    e = paramAttributeSet.d(l.SwitchCompat_switchPadding, 0);
    f = paramAttributeSet.a(l.SwitchCompat_splitTrack, false);
    paramInt = paramAttributeSet.f(l.SwitchCompat_switchTextAppearance, 0);
    if (paramInt != 0) {
      a(paramContext, paramInt);
    }
    E = paramAttributeSet.c();
    paramAttributeSet.b();
    paramContext = ViewConfiguration.get(paramContext);
    k = paramContext.getScaledTouchSlop();
    o = paramContext.getScaledMinimumFlingVelocity();
    refreshDrawableState();
    setChecked(isChecked());
  }
  
  private static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramFloat1 < paramFloat2) {
      return paramFloat2;
    }
    if (paramFloat1 > paramFloat3) {
      return paramFloat3;
    }
    return paramFloat1;
  }
  
  private Layout a(CharSequence paramCharSequence)
  {
    if (B != null) {
      paramCharSequence = B.getTransformation(paramCharSequence, this);
    }
    for (;;)
    {
      return new StaticLayout(paramCharSequence, x, (int)Math.ceil(Layout.getDesiredWidth(paramCharSequence, x)), Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, true);
    }
  }
  
  private void a()
  {
    if (C != null)
    {
      clearAnimation();
      C = null;
    }
  }
  
  private void a(MotionEvent paramMotionEvent)
  {
    paramMotionEvent = MotionEvent.obtain(paramMotionEvent);
    paramMotionEvent.setAction(3);
    super.onTouchEvent(paramMotionEvent);
    paramMotionEvent.recycle();
  }
  
  private void a(boolean paramBoolean)
  {
    float f2 = p;
    if (paramBoolean) {}
    for (float f1 = 1.0F;; f1 = 0.0F)
    {
      C = new de(this, f2, f1 - f2);
      C.setDuration(250L);
      startAnimation(C);
      return;
    }
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    int i3 = getThumbOffset();
    a.getPadding(D);
    int i1 = u;
    int i2 = k;
    i3 = i3 + t - k;
    int i4 = s;
    int i5 = D.left;
    int i6 = D.right;
    int i7 = k;
    int i8 = w;
    int i9 = k;
    return (paramFloat1 > i3) && (paramFloat1 < i4 + i3 + i5 + i6 + i7) && (paramFloat2 > i1 - i2) && (paramFloat2 < i8 + i9);
  }
  
  private void b(MotionEvent paramMotionEvent)
  {
    boolean bool1 = true;
    j = 0;
    int i1;
    boolean bool2;
    float f1;
    if ((paramMotionEvent.getAction() == 1) && (isEnabled()))
    {
      i1 = 1;
      bool2 = isChecked();
      if (i1 == 0) {
        break label135;
      }
      n.computeCurrentVelocity(1000);
      f1 = n.getXVelocity();
      if (Math.abs(f1) <= o) {
        break label126;
      }
      if (!bm.a(this)) {
        break label114;
      }
      if (f1 >= 0.0F) {
        break label108;
      }
    }
    for (;;)
    {
      if (bool1 != bool2)
      {
        playSoundEffect(0);
        setChecked(bool1);
      }
      a(paramMotionEvent);
      return;
      i1 = 0;
      break;
      label108:
      bool1 = false;
      continue;
      label114:
      if (f1 <= 0.0F)
      {
        bool1 = false;
        continue;
        label126:
        bool1 = getTargetCheckedState();
        continue;
        label135:
        bool1 = bool2;
      }
    }
  }
  
  private boolean getTargetCheckedState()
  {
    return p > 0.5F;
  }
  
  private int getThumbOffset()
  {
    if (bm.a(this)) {}
    for (float f1 = 1.0F - p;; f1 = p) {
      return (int)(f1 * getThumbScrollRange() + 0.5F);
    }
  }
  
  private int getThumbScrollRange()
  {
    if (b != null)
    {
      Rect localRect = D;
      b.getPadding(localRect);
      return q - s - left - right;
    }
    return 0;
  }
  
  private void setThumbPosition(float paramFloat)
  {
    p = paramFloat;
    invalidate();
  }
  
  public void a(Context paramContext, int paramInt)
  {
    paramContext = paramContext.obtainStyledAttributes(paramInt, l.SwitchCompatTextAppearance);
    ColorStateList localColorStateList = paramContext.getColorStateList(l.SwitchCompatTextAppearance_android_textColor);
    if (localColorStateList != null)
    {
      y = localColorStateList;
      paramInt = paramContext.getDimensionPixelSize(l.SwitchCompatTextAppearance_android_textSize, 0);
      if ((paramInt != 0) && (paramInt != x.getTextSize()))
      {
        x.setTextSize(paramInt);
        requestLayout();
      }
      if (!paramContext.getBoolean(l.SwitchCompatTextAppearance_textAllCaps, false)) {
        break label107;
      }
    }
    label107:
    for (B = new com.yelp.android.j.a(getContext());; B = null)
    {
      paramContext.recycle();
      return;
      y = getTextColors();
      break;
    }
  }
  
  public void draw(Canvas paramCanvas)
  {
    Object localObject = D;
    int i5 = t;
    int i3 = u;
    int i6 = v;
    int i4 = w;
    int i2 = getThumbOffset() + i5;
    int i1 = i2;
    if (b != null)
    {
      b.getPadding((Rect)localObject);
      i1 = i2 + left;
      b.setBounds(i5, i3, i6, i4);
    }
    if (a != null)
    {
      a.getPadding((Rect)localObject);
      i2 = i1 - left;
      i1 = i1 + s + right;
      a.setBounds(i2, i3, i1, i4);
      localObject = getBackground();
      if (localObject != null) {
        com.yelp.android.a.a.a((Drawable)localObject, i2, i3, i1, i4);
      }
    }
    super.draw(paramCanvas);
  }
  
  public void drawableHotspotChanged(float paramFloat1, float paramFloat2)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      super.drawableHotspotChanged(paramFloat1, paramFloat2);
    }
    if (a != null) {
      com.yelp.android.a.a.a(a, paramFloat1, paramFloat2);
    }
    if (b != null) {
      com.yelp.android.a.a.a(b, paramFloat1, paramFloat2);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    int[] arrayOfInt = getDrawableState();
    if (a != null) {
      a.setState(arrayOfInt);
    }
    if (b != null) {
      b.setState(arrayOfInt);
    }
    invalidate();
  }
  
  public int getCompoundPaddingLeft()
  {
    int i1;
    if (!bm.a(this)) {
      i1 = super.getCompoundPaddingLeft();
    }
    int i2;
    do
    {
      return i1;
      i2 = super.getCompoundPaddingLeft() + q;
      i1 = i2;
    } while (TextUtils.isEmpty(getText()));
    return i2 + e;
  }
  
  public int getCompoundPaddingRight()
  {
    int i1;
    if (bm.a(this)) {
      i1 = super.getCompoundPaddingRight();
    }
    int i2;
    do
    {
      return i1;
      i2 = super.getCompoundPaddingRight() + q;
      i1 = i2;
    } while (TextUtils.isEmpty(getText()));
    return i2 + e;
  }
  
  public boolean getShowText()
  {
    return i;
  }
  
  public boolean getSplitTrack()
  {
    return f;
  }
  
  public int getSwitchMinWidth()
  {
    return d;
  }
  
  public int getSwitchPadding()
  {
    return e;
  }
  
  public CharSequence getTextOff()
  {
    return h;
  }
  
  public CharSequence getTextOn()
  {
    return g;
  }
  
  public Drawable getThumbDrawable()
  {
    return a;
  }
  
  public int getThumbTextPadding()
  {
    return c;
  }
  
  public Drawable getTrackDrawable()
  {
    return b;
  }
  
  public void jumpDrawablesToCurrentState()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      super.jumpDrawablesToCurrentState();
      if (a != null) {
        a.jumpToCurrentState();
      }
      if (b != null) {
        b.jumpToCurrentState();
      }
      if ((C != null) && (C.hasStarted()) && (!C.hasEnded()))
      {
        clearAnimation();
        C = null;
      }
    }
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if (isChecked()) {
      mergeDrawableStates(arrayOfInt, F);
    }
    return arrayOfInt;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    Object localObject2 = D;
    Object localObject1 = b;
    int i3;
    int i4;
    int i5;
    int i6;
    int i2;
    if (localObject1 != null)
    {
      ((Drawable)localObject1).getPadding((Rect)localObject2);
      i3 = u;
      i4 = w;
      i5 = top;
      i6 = bottom;
      localObject2 = a;
      if (localObject1 != null) {
        ((Drawable)localObject1).draw(paramCanvas);
      }
      i2 = paramCanvas.save();
      if (localObject2 != null) {
        ((Drawable)localObject2).draw(paramCanvas);
      }
      if (!getTargetCheckedState()) {
        break label244;
      }
      localObject1 = z;
      label102:
      if (localObject1 != null)
      {
        int[] arrayOfInt = getDrawableState();
        if (y != null) {
          x.setColor(y.getColorForState(arrayOfInt, 0));
        }
        x.drawableState = arrayOfInt;
        if (localObject2 == null) {
          break label253;
        }
        localObject2 = ((Drawable)localObject2).getBounds();
        i1 = left;
      }
    }
    label244:
    label253:
    for (int i1 = right + i1;; i1 = getWidth())
    {
      i1 /= 2;
      int i7 = ((Layout)localObject1).getWidth() / 2;
      i3 = (i3 + i5 + (i4 - i6)) / 2;
      i4 = ((Layout)localObject1).getHeight() / 2;
      paramCanvas.translate(i1 - i7, i3 - i4);
      ((Layout)localObject1).draw(paramCanvas);
      paramCanvas.restoreToCount(i2);
      return;
      ((Rect)localObject2).setEmpty();
      break;
      localObject1 = A;
      break label102;
    }
  }
  
  @TargetApi(14)
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(SwitchCompat.class.getName());
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName(SwitchCompat.class.getName());
      if (!isChecked()) {
        break label59;
      }
    }
    CharSequence localCharSequence2;
    label59:
    for (CharSequence localCharSequence1 = g;; localCharSequence1 = h)
    {
      if (!TextUtils.isEmpty(localCharSequence1))
      {
        localCharSequence2 = paramAccessibilityNodeInfo.getText();
        if (!TextUtils.isEmpty(localCharSequence2)) {
          break;
        }
        paramAccessibilityNodeInfo.setText(localCharSequence1);
      }
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(localCharSequence2).append(' ').append(localCharSequence1);
    paramAccessibilityNodeInfo.setText(localStringBuilder);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    Rect localRect;
    if (a != null)
    {
      localRect = D;
      if (b != null) {
        b.getPadding(localRect);
      }
    }
    else
    {
      if (!bm.a(this)) {
        break label147;
      }
      paramInt3 = getPaddingLeft() + 0;
      paramInt4 = q + paramInt3 + 0 + 0;
      label69:
      switch (getGravity() & 0x70)
      {
      default: 
        paramInt2 = getPaddingTop();
        paramInt1 = r + paramInt2;
      }
    }
    for (;;)
    {
      t = paramInt3;
      u = paramInt2;
      w = paramInt1;
      v = paramInt4;
      return;
      localRect.setEmpty();
      break;
      label147:
      paramInt4 = getWidth() - getPaddingRight() + 0;
      paramInt3 = paramInt4 - q + 0 + 0;
      break label69;
      paramInt2 = (getPaddingTop() + getHeight() - getPaddingBottom()) / 2 - r / 2;
      paramInt1 = r + paramInt2;
      continue;
      paramInt1 = getHeight() - getPaddingBottom();
      paramInt2 = paramInt1 - r;
    }
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    int i4 = 0;
    if (i)
    {
      if (z == null) {
        z = a(g);
      }
      if (A == null) {
        A = a(h);
      }
    }
    Rect localRect = D;
    int i1;
    int i3;
    if (a != null)
    {
      a.getPadding(localRect);
      i2 = a.getIntrinsicWidth() - left - right;
      i1 = a.getIntrinsicHeight();
      if (!i) {
        break label255;
      }
      i3 = Math.max(z.getWidth(), A.getWidth()) + c * 2;
      label133:
      s = Math.max(i3, i2);
      if (b == null) {
        break label261;
      }
      b.getPadding(localRect);
    }
    for (int i2 = b.getIntrinsicHeight();; i2 = i4)
    {
      i3 = left;
      i4 = right;
      i3 = Math.max(d, i3 + s * 2 + i4);
      i1 = Math.max(i2, i1);
      q = i3;
      r = i1;
      super.onMeasure(paramInt1, paramInt2);
      if (getMeasuredHeight() < i1) {
        setMeasuredDimension(ce.k(this), i1);
      }
      return;
      i1 = 0;
      i2 = 0;
      break;
      label255:
      i3 = 0;
      break label133;
      label261:
      localRect.setEmpty();
    }
  }
  
  @TargetApi(14)
  public void onPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onPopulateAccessibilityEvent(paramAccessibilityEvent);
    if (isChecked()) {}
    for (CharSequence localCharSequence = g;; localCharSequence = h)
    {
      if (localCharSequence != null) {
        paramAccessibilityEvent.getText().add(localCharSequence);
      }
      return;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    n.addMovement(paramMotionEvent);
    switch (ba.a(paramMotionEvent))
    {
    }
    for (;;)
    {
      return super.onTouchEvent(paramMotionEvent);
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      if ((isEnabled()) && (a(f1, f2)))
      {
        j = 1;
        l = f1;
        m = f2;
        continue;
        switch (j)
        {
        case 0: 
        default: 
          break;
        case 1: 
          f1 = paramMotionEvent.getX();
          f2 = paramMotionEvent.getY();
          if ((Math.abs(f1 - l) > k) || (Math.abs(f2 - m) > k))
          {
            j = 2;
            getParent().requestDisallowInterceptTouchEvent(true);
            l = f1;
            m = f2;
            return true;
          }
          break;
        case 2: 
          float f3 = paramMotionEvent.getX();
          int i1 = getThumbScrollRange();
          f1 = f3 - l;
          if (i1 != 0) {
            f1 /= i1;
          }
          for (;;)
          {
            f2 = f1;
            if (bm.a(this)) {
              f2 = -f1;
            }
            f1 = a(f2 + p, 0.0F, 1.0F);
            if (f1 != p)
            {
              l = f3;
              setThumbPosition(f1);
            }
            return true;
            if (f1 > 0.0F) {
              f1 = 1.0F;
            } else {
              f1 = -1.0F;
            }
          }
          if (j == 2)
          {
            b(paramMotionEvent);
            super.onTouchEvent(paramMotionEvent);
            return true;
          }
          j = 0;
          n.clear();
        }
      }
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    super.setChecked(paramBoolean);
    paramBoolean = isChecked();
    if (getWindowToken() != null)
    {
      a(paramBoolean);
      return;
    }
    a();
    if (paramBoolean) {}
    for (float f1 = 1.0F;; f1 = 0.0F)
    {
      setThumbPosition(f1);
      return;
    }
  }
  
  public void setShowText(boolean paramBoolean)
  {
    if (i != paramBoolean)
    {
      i = paramBoolean;
      requestLayout();
    }
  }
  
  public void setSplitTrack(boolean paramBoolean)
  {
    f = paramBoolean;
    invalidate();
  }
  
  public void setSwitchMinWidth(int paramInt)
  {
    d = paramInt;
    requestLayout();
  }
  
  public void setSwitchPadding(int paramInt)
  {
    e = paramInt;
    requestLayout();
  }
  
  public void setSwitchTypeface(Typeface paramTypeface)
  {
    if (x.getTypeface() != paramTypeface)
    {
      x.setTypeface(paramTypeface);
      requestLayout();
      invalidate();
    }
  }
  
  public void setTextOff(CharSequence paramCharSequence)
  {
    h = paramCharSequence;
    requestLayout();
  }
  
  public void setTextOn(CharSequence paramCharSequence)
  {
    g = paramCharSequence;
    requestLayout();
  }
  
  public void setThumbDrawable(Drawable paramDrawable)
  {
    a = paramDrawable;
    requestLayout();
  }
  
  public void setThumbResource(int paramInt)
  {
    setThumbDrawable(E.a(paramInt));
  }
  
  public void setThumbTextPadding(int paramInt)
  {
    c = paramInt;
    requestLayout();
  }
  
  public void setTrackDrawable(Drawable paramDrawable)
  {
    b = paramDrawable;
    requestLayout();
  }
  
  public void setTrackResource(int paramInt)
  {
    setTrackDrawable(E.a(paramInt));
  }
  
  public void toggle()
  {
    if (!isChecked()) {}
    for (boolean bool = true;; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
  
  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == a) || (paramDrawable == b);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.SwitchCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */