package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.Region.Op;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ai;
import android.support.v4.view.t;
import android.support.v7.internal.widget.g;
import android.support.v7.internal.widget.o;
import android.support.v7.internal.widget.p;
import android.support.v7.internal.widget.r;
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
import android.view.animation.Transformation;
import android.widget.CompoundButton;
import com.yelp.android.j.a.a;
import com.yelp.android.j.a.k;
import java.util.List;

public class SwitchCompat
  extends CompoundButton
{
  private static final int[] F = { 16842912 };
  private Layout A;
  private TransformationMethod B;
  private a C;
  private final Rect D = new Rect();
  private final o E;
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
    this(paramContext, paramAttributeSet, a.a.switchStyle);
  }
  
  public SwitchCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Resources localResources = getResources();
    x.density = getDisplayMetricsdensity;
    paramAttributeSet = p.a(paramContext, paramAttributeSet, a.k.SwitchCompat, paramInt, 0);
    a = paramAttributeSet.a(a.k.SwitchCompat_android_thumb);
    if (a != null) {
      a.setCallback(this);
    }
    b = paramAttributeSet.a(a.k.SwitchCompat_track);
    if (b != null) {
      b.setCallback(this);
    }
    g = paramAttributeSet.c(a.k.SwitchCompat_android_textOn);
    h = paramAttributeSet.c(a.k.SwitchCompat_android_textOff);
    i = paramAttributeSet.a(a.k.SwitchCompat_showText, true);
    c = paramAttributeSet.e(a.k.SwitchCompat_thumbTextPadding, 0);
    d = paramAttributeSet.e(a.k.SwitchCompat_switchMinWidth, 0);
    e = paramAttributeSet.e(a.k.SwitchCompat_switchPadding, 0);
    f = paramAttributeSet.a(a.k.SwitchCompat_splitTrack, false);
    paramInt = paramAttributeSet.g(a.k.SwitchCompat_switchTextAppearance, 0);
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
    TextPaint localTextPaint;
    if (B != null)
    {
      paramCharSequence = B.getTransformation(paramCharSequence, this);
      localTextPaint = x;
      if (paramCharSequence == null) {
        break label62;
      }
    }
    label62:
    for (int i1 = (int)Math.ceil(Layout.getDesiredWidth(paramCharSequence, x));; i1 = 0)
    {
      return new StaticLayout(paramCharSequence, localTextPaint, i1, Layout.Alignment.ALIGN_NORMAL, 1.0F, 0.0F, true);
      break;
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
  
  private void a(int paramInt1, int paramInt2)
  {
    Typeface localTypeface = null;
    switch (paramInt1)
    {
    }
    for (;;)
    {
      a(localTypeface, paramInt2);
      return;
      localTypeface = Typeface.SANS_SERIF;
      continue;
      localTypeface = Typeface.SERIF;
      continue;
      localTypeface = Typeface.MONOSPACE;
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
      C = new a(f2, f1, null);
      C.setDuration(250L);
      startAnimation(C);
      return;
    }
  }
  
  private boolean a(float paramFloat1, float paramFloat2)
  {
    if (a == null) {}
    int i3;
    int i1;
    int i2;
    int i4;
    int i5;
    int i6;
    int i7;
    int i8;
    int i9;
    do
    {
      return false;
      i3 = getThumbOffset();
      a.getPadding(D);
      i1 = u;
      i2 = k;
      i3 = i3 + t - k;
      i4 = s;
      i5 = D.left;
      i6 = D.right;
      i7 = k;
      i8 = w;
      i9 = k;
    } while ((paramFloat1 <= i3) || (paramFloat1 >= i4 + i3 + i5 + i6 + i7) || (paramFloat2 <= i1 - i2) || (paramFloat2 >= i8 + i9));
    return true;
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
      if (!r.a(this)) {
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
    if (r.a(this)) {}
    for (float f1 = 1.0F - p;; f1 = p) {
      return (int)(f1 * getThumbScrollRange() + 0.5F);
    }
  }
  
  private int getThumbScrollRange()
  {
    if (b != null)
    {
      Rect localRect2 = D;
      b.getPadding(localRect2);
      if (a != null) {}
      for (Rect localRect1 = g.a(a);; localRect1 = g.a) {
        return q - s - left - right - left - right;
      }
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
    paramContext = paramContext.obtainStyledAttributes(paramInt, a.k.TextAppearance);
    ColorStateList localColorStateList = paramContext.getColorStateList(a.k.TextAppearance_android_textColor);
    if (localColorStateList != null)
    {
      y = localColorStateList;
      paramInt = paramContext.getDimensionPixelSize(a.k.TextAppearance_android_textSize, 0);
      if ((paramInt != 0) && (paramInt != x.getTextSize()))
      {
        x.setTextSize(paramInt);
        requestLayout();
      }
      a(paramContext.getInt(a.k.TextAppearance_android_typeface, -1), paramContext.getInt(a.k.TextAppearance_android_textStyle, -1));
      if (!paramContext.getBoolean(a.k.TextAppearance_textAllCaps, false)) {
        break label127;
      }
    }
    label127:
    for (B = new com.yelp.android.n.a(getContext());; B = null)
    {
      paramContext.recycle();
      return;
      y = getTextColors();
      break;
    }
  }
  
  public void a(Typeface paramTypeface, int paramInt)
  {
    boolean bool = false;
    if (paramInt > 0)
    {
      int i1;
      if (paramTypeface == null)
      {
        paramTypeface = Typeface.defaultFromStyle(paramInt);
        setSwitchTypeface(paramTypeface);
        if (paramTypeface == null) {
          break label88;
        }
        i1 = paramTypeface.getStyle();
        label31:
        paramInt = (i1 ^ 0xFFFFFFFF) & paramInt;
        paramTypeface = x;
        if ((paramInt & 0x1) != 0) {
          bool = true;
        }
        paramTypeface.setFakeBoldText(bool);
        paramTypeface = x;
        if ((paramInt & 0x2) == 0) {
          break label94;
        }
      }
      label88:
      label94:
      for (float f1 = -0.25F;; f1 = 0.0F)
      {
        paramTypeface.setTextSkewX(f1);
        return;
        paramTypeface = Typeface.create(paramTypeface, paramInt);
        break;
        i1 = 0;
        break label31;
      }
    }
    x.setFakeBoldText(false);
    x.setTextSkewX(0.0F);
    setSwitchTypeface(paramTypeface);
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = D;
    int i2 = t;
    int i5 = u;
    int i7 = v;
    int i6 = w;
    int i8 = i2 + getThumbOffset();
    Object localObject;
    int i9;
    label147:
    int i4;
    int i3;
    if (a != null)
    {
      localObject = g.a(a);
      if (b == null) {
        break label348;
      }
      b.getPadding(localRect);
      i9 = left;
      if ((localObject == null) || (((Rect)localObject).isEmpty())) {
        break label328;
      }
      i1 = i2;
      if (left > left) {
        i1 = i2 + (left - left);
      }
      if (top <= top) {
        break label322;
      }
      i2 = top - top + i5;
      i4 = i7;
      if (right > right) {
        i4 = i7 - (right - right);
      }
      if (bottom <= bottom) {
        break label315;
      }
      i3 = i6 - (bottom - bottom);
      label209:
      b.setBounds(i1, i2, i4, i3);
    }
    label315:
    label322:
    label328:
    label348:
    for (int i1 = i9 + i8;; i1 = i8)
    {
      if (a != null)
      {
        a.getPadding(localRect);
        i2 = i1 - left;
        i1 = i1 + s + right;
        a.setBounds(i2, i5, i1, i6);
        localObject = getBackground();
        if (localObject != null) {
          com.yelp.android.d.a.a((Drawable)localObject, i2, i5, i1, i6);
        }
      }
      super.draw(paramCanvas);
      return;
      localObject = g.a;
      break;
      i3 = i6;
      break label209;
      i2 = i5;
      break label147;
      i3 = i6;
      i4 = i5;
      i1 = i2;
      i2 = i4;
      i4 = i7;
      break label209;
    }
  }
  
  public void drawableHotspotChanged(float paramFloat1, float paramFloat2)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      super.drawableHotspotChanged(paramFloat1, paramFloat2);
    }
    if (a != null) {
      com.yelp.android.d.a.a(a, paramFloat1, paramFloat2);
    }
    if (b != null) {
      com.yelp.android.d.a.a(b, paramFloat1, paramFloat2);
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
    if (!r.a(this)) {
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
    if (r.a(this)) {
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
      if ((C != null) && (!C.hasEnded()))
      {
        clearAnimation();
        setThumbPosition(C.b);
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
    Object localObject1 = D;
    Object localObject3 = b;
    int i3;
    int i4;
    int i5;
    int i6;
    Object localObject2;
    label151:
    int i2;
    if (localObject3 != null)
    {
      ((Drawable)localObject3).getPadding((Rect)localObject1);
      i3 = u;
      i4 = w;
      i5 = top;
      i6 = bottom;
      localObject2 = a;
      if (localObject3 != null)
      {
        if ((!f) || (localObject2 == null)) {
          break label322;
        }
        Rect localRect = g.a((Drawable)localObject2);
        ((Drawable)localObject2).copyBounds((Rect)localObject1);
        left += left;
        right -= right;
        i1 = paramCanvas.save();
        paramCanvas.clipRect((Rect)localObject1, Region.Op.DIFFERENCE);
        ((Drawable)localObject3).draw(paramCanvas);
        paramCanvas.restoreToCount(i1);
      }
      i2 = paramCanvas.save();
      if (localObject2 != null) {
        ((Drawable)localObject2).draw(paramCanvas);
      }
      if (!getTargetCheckedState()) {
        break label331;
      }
      localObject1 = z;
      label180:
      if (localObject1 != null)
      {
        localObject3 = getDrawableState();
        if (y != null) {
          x.setColor(y.getColorForState((int[])localObject3, 0));
        }
        x.drawableState = ((int[])localObject3);
        if (localObject2 == null) {
          break label340;
        }
        localObject2 = ((Drawable)localObject2).getBounds();
        i1 = left;
      }
    }
    label322:
    label331:
    label340:
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
      ((Rect)localObject1).setEmpty();
      break;
      ((Drawable)localObject3).draw(paramCanvas);
      break label151;
      localObject1 = A;
      break label180;
    }
  }
  
  @TargetApi(14)
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName("android.widget.Switch");
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName("android.widget.Switch");
      if (!isChecked()) {
        break label57;
      }
    }
    CharSequence localCharSequence2;
    label57:
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
    int i1 = 0;
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    Rect localRect1;
    Rect localRect2;
    if (a != null)
    {
      localRect1 = D;
      if (b != null)
      {
        b.getPadding(localRect1);
        localRect2 = g.a(a);
        paramInt2 = Math.max(0, left - left);
      }
    }
    for (paramInt1 = Math.max(0, right - right);; paramInt1 = i1)
    {
      if (r.a(this))
      {
        paramInt3 = getPaddingLeft() + paramInt2;
        paramInt4 = q + paramInt3 - paramInt2 - paramInt1;
        label113:
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
        localRect1.setEmpty();
        break;
        paramInt4 = getWidth() - getPaddingRight() - paramInt1;
        paramInt3 = paramInt1 + (paramInt2 + (paramInt4 - q));
        break label113;
        paramInt2 = (getPaddingTop() + getHeight() - getPaddingBottom()) / 2 - r / 2;
        paramInt1 = r + paramInt2;
        continue;
        paramInt1 = getHeight() - getPaddingBottom();
        paramInt2 = paramInt1 - r;
      }
      paramInt2 = 0;
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
        break label303;
      }
      i3 = Math.max(z.getWidth(), A.getWidth()) + c * 2;
      label133:
      s = Math.max(i3, i2);
      if (b == null) {
        break label309;
      }
      b.getPadding(localRect);
    }
    for (int i2 = b.getIntrinsicHeight();; i2 = i4)
    {
      int i6 = left;
      int i5 = right;
      i4 = i5;
      i3 = i6;
      if (a != null)
      {
        localRect = g.a(a);
        i3 = Math.max(i6, left);
        i4 = Math.max(i5, right);
      }
      i3 = Math.max(d, i4 + (i3 + s * 2));
      i1 = Math.max(i2, i1);
      q = i3;
      r = i1;
      super.onMeasure(paramInt1, paramInt2);
      if (getMeasuredHeight() < i1) {
        setMeasuredDimension(ai.k(this), i1);
      }
      return;
      i1 = 0;
      i2 = 0;
      break;
      label303:
      i3 = 0;
      break label133;
      label309:
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
    switch (t.a(paramMotionEvent))
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
            if (r.a(this)) {
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
    if ((getWindowToken() != null) && (ai.D(this)))
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
  
  private class a
    extends Animation
  {
    final float a;
    final float b;
    final float c;
    
    private a(float paramFloat1, float paramFloat2)
    {
      a = paramFloat1;
      b = paramFloat2;
      c = (paramFloat2 - paramFloat1);
    }
    
    protected void applyTransformation(float paramFloat, Transformation paramTransformation)
    {
      SwitchCompat.a(SwitchCompat.this, a + c * paramFloat);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.SwitchCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */