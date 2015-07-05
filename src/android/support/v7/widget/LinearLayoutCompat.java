package android.support.v7.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ce;
import android.support.v4.view.q;
import android.support.v7.internal.widget.bg;
import android.support.v7.internal.widget.bm;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.yelp.android.g.l;

public class LinearLayoutCompat
  extends ViewGroup
{
  private boolean a = true;
  private int b = -1;
  private int c = 0;
  private int d;
  private int e = 8388659;
  private int f;
  private float g;
  private boolean h;
  private int[] i;
  private int[] j;
  private Drawable k;
  private int l;
  private int m;
  private int n;
  private int o;
  
  public LinearLayoutCompat(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public LinearLayoutCompat(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public LinearLayoutCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = bg.a(paramContext, paramAttributeSet, l.LinearLayoutCompat, paramInt, 0);
    paramInt = paramContext.a(l.LinearLayoutCompat_android_orientation, -1);
    if (paramInt >= 0) {
      setOrientation(paramInt);
    }
    paramInt = paramContext.a(l.LinearLayoutCompat_android_gravity, -1);
    if (paramInt >= 0) {
      setGravity(paramInt);
    }
    boolean bool = paramContext.a(l.LinearLayoutCompat_android_baselineAligned, true);
    if (!bool) {
      setBaselineAligned(bool);
    }
    g = paramContext.a(l.LinearLayoutCompat_android_weightSum, -1.0F);
    b = paramContext.a(l.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
    h = paramContext.a(l.LinearLayoutCompat_measureWithLargestChild, false);
    setDividerDrawable(paramContext.a(l.LinearLayoutCompat_divider));
    n = paramContext.a(l.LinearLayoutCompat_showDividers, 0);
    o = paramContext.d(l.LinearLayoutCompat_dividerPadding, 0);
    paramContext.b();
  }
  
  private void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.layout(paramInt1, paramInt2, paramInt1 + paramInt3, paramInt2 + paramInt4);
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    int i2 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
    int i1 = 0;
    while (i1 < paramInt1)
    {
      View localView = b(i1);
      if (localView.getVisibility() != 8)
      {
        LinearLayoutCompat.LayoutParams localLayoutParams = (LinearLayoutCompat.LayoutParams)localView.getLayoutParams();
        if (width == -1)
        {
          int i3 = height;
          height = localView.getMeasuredHeight();
          measureChildWithMargins(localView, i2, 0, paramInt2, 0);
          height = i3;
        }
      }
      i1 += 1;
    }
  }
  
  private void d(int paramInt1, int paramInt2)
  {
    int i2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
    int i1 = 0;
    while (i1 < paramInt1)
    {
      View localView = b(i1);
      if (localView.getVisibility() != 8)
      {
        LinearLayoutCompat.LayoutParams localLayoutParams = (LinearLayoutCompat.LayoutParams)localView.getLayoutParams();
        if (height == -1)
        {
          int i3 = width;
          width = localView.getMeasuredWidth();
          measureChildWithMargins(localView, paramInt2, 0, i2, 0);
          width = i3;
        }
      }
      i1 += 1;
    }
  }
  
  int a(View paramView)
  {
    return 0;
  }
  
  int a(View paramView, int paramInt)
  {
    return 0;
  }
  
  void a(int paramInt1, int paramInt2)
  {
    f = 0;
    int i2 = 0;
    int i1 = 0;
    int i6 = 0;
    int i9 = 0;
    int i3 = 1;
    float f1 = 0.0F;
    int i15 = getVirtualChildCount();
    int i16 = View.MeasureSpec.getMode(paramInt1);
    int i17 = View.MeasureSpec.getMode(paramInt2);
    int i8 = 0;
    int i5 = 0;
    int i18 = b;
    boolean bool = h;
    int i4 = Integer.MIN_VALUE;
    int i7 = 0;
    View localView;
    int i10;
    int i11;
    label211:
    LinearLayoutCompat.LayoutParams localLayoutParams;
    int i12;
    if (i7 < i15)
    {
      localView = b(i7);
      if (localView == null)
      {
        f += d(i7);
        i10 = i4;
        i11 = i5;
        i5 = i2;
        i4 = i1;
        i2 = i11;
        i1 = i10;
      }
      for (;;)
      {
        i7 += 1;
        i10 = i4;
        i11 = i5;
        i4 = i1;
        i5 = i2;
        i1 = i10;
        i2 = i11;
        break;
        if (localView.getVisibility() != 8) {
          break label211;
        }
        i11 = i7 + a(localView, i7);
        i7 = i4;
        i10 = i5;
        i4 = i1;
        i5 = i2;
        i1 = i7;
        i2 = i10;
        i7 = i11;
      }
      if (c(i7)) {
        f += m;
      }
      localLayoutParams = (LinearLayoutCompat.LayoutParams)localView.getLayoutParams();
      f1 += g;
      if ((i17 == 1073741824) && (height == 0) && (g > 0.0F))
      {
        i5 = f;
        f = Math.max(i5, topMargin + i5 + bottomMargin);
        i11 = 1;
        i10 = i4;
        if ((i18 >= 0) && (i18 == i7 + 1)) {
          c = f;
        }
        if ((i7 < i18) && (g > 0.0F)) {
          throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
        }
      }
      else
      {
        i11 = Integer.MIN_VALUE;
        i10 = i11;
        if (height == 0)
        {
          i10 = i11;
          if (g > 0.0F)
          {
            i10 = 0;
            height = -2;
          }
        }
        if (f1 == 0.0F) {}
        for (i11 = f;; i11 = 0)
        {
          a(localView, i7, paramInt1, 0, paramInt2, i11);
          if (i10 != Integer.MIN_VALUE) {
            height = i10;
          }
          i12 = localView.getMeasuredHeight();
          i10 = f;
          f = Math.max(i10, i10 + i12 + topMargin + bottomMargin + b(localView));
          i10 = i4;
          i11 = i5;
          if (!bool) {
            break;
          }
          i10 = Math.max(i12, i4);
          i11 = i5;
          break;
        }
      }
      i5 = 0;
      if ((i16 == 1073741824) || (width != -1)) {
        break label1671;
      }
      i4 = 1;
      i5 = 1;
    }
    for (;;)
    {
      i8 = leftMargin;
      i8 = rightMargin + i8;
      i12 = localView.getMeasuredWidth() + i8;
      int i14 = Math.max(i2, i12);
      int i13 = bm.a(i1, ce.l(localView));
      if ((i3 != 0) && (width == -1))
      {
        i3 = 1;
        label611:
        if (g <= 0.0F) {
          break label700;
        }
        if (i5 == 0) {
          break label693;
        }
      }
      for (;;)
      {
        i2 = Math.max(i9, i8);
        i1 = i6;
        i7 += a(localView, i7);
        i9 = i2;
        i6 = i1;
        i5 = i14;
        i1 = i10;
        i10 = i13;
        i8 = i4;
        i2 = i11;
        i4 = i10;
        break;
        i3 = 0;
        break label611;
        label693:
        i8 = i12;
      }
      label700:
      if (i5 != 0) {}
      for (;;)
      {
        i1 = Math.max(i6, i8);
        i2 = i9;
        break;
        i8 = i12;
      }
      if ((f > 0) && (c(i15))) {
        f += m;
      }
      if ((bool) && ((i17 == Integer.MIN_VALUE) || (i17 == 0)))
      {
        f = 0;
        i7 = 0;
        if (i7 < i15)
        {
          localView = b(i7);
          if (localView == null) {
            f += d(i7);
          }
          for (;;)
          {
            i7 += 1;
            break;
            if (localView.getVisibility() == 8)
            {
              i7 = a(localView, i7) + i7;
            }
            else
            {
              localLayoutParams = (LinearLayoutCompat.LayoutParams)localView.getLayoutParams();
              i10 = f;
              i11 = topMargin;
              f = Math.max(i10, bottomMargin + (i10 + i4 + i11) + b(localView));
            }
          }
        }
      }
      f += getPaddingTop() + getPaddingBottom();
      i11 = ce.a(Math.max(f, getSuggestedMinimumHeight()), paramInt2, 0);
      i7 = (0xFFFFFF & i11) - f;
      if ((i5 != 0) || ((i7 != 0) && (f1 > 0.0F)))
      {
        if (g > 0.0F) {
          f1 = g;
        }
        f = 0;
        i4 = 0;
        i5 = i3;
        i3 = i6;
        i6 = i7;
        i7 = i4;
        i4 = i2;
        i2 = i5;
        i5 = i6;
        for (;;)
        {
          if (i7 < i15)
          {
            localView = b(i7);
            if (localView.getVisibility() == 8)
            {
              i6 = i3;
              i3 = i4;
              i4 = i6;
              i7 += 1;
              i6 = i3;
              i3 = i4;
              i4 = i6;
            }
            else
            {
              localLayoutParams = (LinearLayoutCompat.LayoutParams)localView.getLayoutParams();
              float f2 = g;
              if (f2 <= 0.0F) {
                break label1656;
              }
              i9 = (int)(i5 * f2 / f1);
              i12 = getChildMeasureSpec(paramInt1, getPaddingLeft() + getPaddingRight() + leftMargin + rightMargin, width);
              if ((height != 0) || (i17 != 1073741824))
              {
                i10 = i9 + localView.getMeasuredHeight();
                i6 = i10;
                if (i10 < 0) {
                  i6 = 0;
                }
                localView.measure(i12, View.MeasureSpec.makeMeasureSpec(i6, 1073741824));
                i1 = bm.a(i1, ce.l(localView) & 0xFF00);
                i6 = i5 - i9;
                i5 = i1;
                f1 -= f2;
                i1 = i6;
              }
            }
          }
        }
      }
      for (;;)
      {
        i9 = leftMargin + rightMargin;
        i10 = localView.getMeasuredWidth() + i9;
        i6 = Math.max(i4, i10);
        if ((i16 != 1073741824) && (width == -1))
        {
          i4 = 1;
          label1285:
          if (i4 == 0) {
            break label1427;
          }
          i4 = i9;
          label1294:
          i4 = Math.max(i3, i4);
          if ((i2 == 0) || (width != -1)) {
            break label1434;
          }
        }
        label1427:
        label1434:
        for (i2 = 1;; i2 = 0)
        {
          i3 = f;
          i9 = localView.getMeasuredHeight();
          i10 = topMargin;
          f = Math.max(i3, bottomMargin + (i9 + i3 + i10) + b(localView));
          i3 = i6;
          i6 = i1;
          i1 = i5;
          i5 = i6;
          break;
          if (i9 > 0) {}
          for (i6 = i9;; i6 = 0)
          {
            localView.measure(i12, View.MeasureSpec.makeMeasureSpec(i6, 1073741824));
            break;
          }
          i4 = 0;
          break label1285;
          i4 = i10;
          break label1294;
        }
        f += getPaddingTop() + getPaddingBottom();
        i5 = i2;
        i2 = i3;
        i3 = i5;
        for (;;)
        {
          if ((i3 == 0) && (i16 != 1073741824)) {}
          for (;;)
          {
            setMeasuredDimension(ce.a(Math.max(i2 + (getPaddingLeft() + getPaddingRight()), getSuggestedMinimumWidth()), paramInt1, i1), i11);
            if (i8 != 0) {
              c(i15, paramInt2);
            }
            return;
            i6 = Math.max(i6, i9);
            if ((!bool) || (i17 == 1073741824)) {
              break;
            }
            i5 = 0;
            if (i5 >= i15) {
              break;
            }
            localView = b(i5);
            if ((localView == null) || (localView.getVisibility() == 8)) {}
            for (;;)
            {
              i5 += 1;
              break;
              if (getLayoutParamsg > 0.0F) {
                localView.measure(View.MeasureSpec.makeMeasureSpec(localView.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i4, 1073741824));
              }
            }
            i2 = i4;
          }
          i4 = i6;
          i5 = i2;
          i2 = i4;
          i4 = i5;
        }
        label1656:
        i6 = i1;
        i1 = i5;
        i5 = i6;
      }
      label1671:
      i4 = i8;
    }
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = getPaddingLeft();
    int i2 = paramInt3 - paramInt1;
    int i3 = getPaddingRight();
    int i4 = getPaddingRight();
    int i5 = getVirtualChildCount();
    paramInt1 = e;
    int i6 = e;
    label83:
    View localView;
    switch (paramInt1 & 0x70)
    {
    default: 
      paramInt1 = getPaddingTop();
      paramInt3 = 0;
      paramInt2 = paramInt1;
      paramInt1 = paramInt3;
      if (paramInt1 < i5)
      {
        localView = b(paramInt1);
        if (localView == null) {
          paramInt2 += d(paramInt1);
        }
      }
      break;
    }
    for (;;)
    {
      paramInt1 += 1;
      break label83;
      paramInt1 = getPaddingTop() + paramInt4 - paramInt2 - f;
      break;
      paramInt1 = getPaddingTop() + (paramInt4 - paramInt2 - f) / 2;
      break;
      if (localView.getVisibility() != 8)
      {
        int i7 = localView.getMeasuredWidth();
        int i8 = localView.getMeasuredHeight();
        LinearLayoutCompat.LayoutParams localLayoutParams = (LinearLayoutCompat.LayoutParams)localView.getLayoutParams();
        paramInt4 = h;
        paramInt3 = paramInt4;
        if (paramInt4 < 0) {
          paramInt3 = i6 & 0x800007;
        }
        switch (q.a(paramInt3, ce.h(this)) & 0x7)
        {
        default: 
          paramInt3 = i1 + leftMargin;
          label257:
          if (c(paramInt1)) {
            paramInt2 = m + paramInt2;
          }
          break;
        }
        for (;;)
        {
          paramInt2 += topMargin;
          a(localView, paramInt3, paramInt2 + a(localView), i7, i8);
          paramInt2 += bottomMargin + i8 + b(localView);
          paramInt1 = a(localView, paramInt1) + paramInt1;
          break;
          paramInt3 = (i2 - i1 - i4 - i7) / 2 + i1 + leftMargin - rightMargin;
          break label257;
          paramInt3 = i2 - i3 - i7 - rightMargin;
          break label257;
          return;
        }
      }
    }
  }
  
  void a(Canvas paramCanvas)
  {
    int i2 = getVirtualChildCount();
    int i1 = 0;
    View localView;
    LinearLayoutCompat.LayoutParams localLayoutParams;
    while (i1 < i2)
    {
      localView = b(i1);
      if ((localView != null) && (localView.getVisibility() != 8) && (c(i1)))
      {
        localLayoutParams = (LinearLayoutCompat.LayoutParams)localView.getLayoutParams();
        a(paramCanvas, localView.getTop() - topMargin - m);
      }
      i1 += 1;
    }
    if (c(i2))
    {
      localView = b(i2 - 1);
      if (localView != null) {
        break label124;
      }
    }
    for (i1 = getHeight() - getPaddingBottom() - m;; i1 = bottomMargin + i1)
    {
      a(paramCanvas, i1);
      return;
      label124:
      localLayoutParams = (LinearLayoutCompat.LayoutParams)localView.getLayoutParams();
      i1 = localView.getBottom();
    }
  }
  
  void a(Canvas paramCanvas, int paramInt)
  {
    k.setBounds(getPaddingLeft() + o, paramInt, getWidth() - getPaddingRight() - o, m + paramInt);
    k.draw(paramCanvas);
  }
  
  void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    measureChildWithMargins(paramView, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  int b(View paramView)
  {
    return 0;
  }
  
  public LinearLayoutCompat.LayoutParams b(AttributeSet paramAttributeSet)
  {
    return new LinearLayoutCompat.LayoutParams(getContext(), paramAttributeSet);
  }
  
  protected LinearLayoutCompat.LayoutParams b(ViewGroup.LayoutParams paramLayoutParams)
  {
    return new LinearLayoutCompat.LayoutParams(paramLayoutParams);
  }
  
  View b(int paramInt)
  {
    return getChildAt(paramInt);
  }
  
  void b(int paramInt1, int paramInt2)
  {
    f = 0;
    int i3 = 0;
    int i2 = 0;
    int i6 = 0;
    int i8 = 0;
    int i1 = 1;
    float f1 = 0.0F;
    int i16 = getVirtualChildCount();
    int i18 = View.MeasureSpec.getMode(paramInt1);
    int i17 = View.MeasureSpec.getMode(paramInt2);
    int i7 = 0;
    int i5 = 0;
    if ((i == null) || (j == null))
    {
      i = new int[4];
      j = new int[4];
    }
    Object localObject = i;
    int[] arrayOfInt = j;
    localObject[3] = -1;
    localObject[2] = -1;
    localObject[1] = -1;
    localObject[0] = -1;
    arrayOfInt[3] = -1;
    arrayOfInt[2] = -1;
    arrayOfInt[1] = -1;
    arrayOfInt[0] = -1;
    boolean bool1 = a;
    boolean bool2 = h;
    int i12;
    int i4;
    int i9;
    label155:
    View localView;
    int i10;
    int i11;
    if (i18 == 1073741824)
    {
      i12 = 1;
      i4 = Integer.MIN_VALUE;
      i9 = 0;
      if (i9 >= i16) {
        break label986;
      }
      localView = b(i9);
      if (localView != null) {
        break label261;
      }
      f += d(i9);
      i10 = i4;
      i11 = i5;
      i5 = i3;
      i4 = i2;
      i3 = i1;
      i2 = i11;
      i1 = i10;
    }
    label261:
    int i13;
    for (;;)
    {
      i9 += 1;
      i10 = i4;
      i11 = i5;
      i4 = i1;
      i5 = i2;
      i1 = i3;
      i2 = i10;
      i3 = i11;
      break label155;
      i12 = 0;
      break;
      if (localView.getVisibility() != 8) {
        break label331;
      }
      i13 = i9 + a(localView, i9);
      i9 = i4;
      i11 = i5;
      i4 = i1;
      i5 = i2;
      i10 = i3;
      i1 = i9;
      i2 = i11;
      i9 = i13;
      i3 = i4;
      i4 = i5;
      i5 = i10;
    }
    label331:
    if (c(i9)) {
      f += l;
    }
    LinearLayoutCompat.LayoutParams localLayoutParams = (LinearLayoutCompat.LayoutParams)localView.getLayoutParams();
    f1 += g;
    if ((i18 == 1073741824) && (width == 0) && (g > 0.0F)) {
      if (i12 != 0)
      {
        f += leftMargin + rightMargin;
        label421:
        if (!bool1) {
          break label727;
        }
        i10 = View.MeasureSpec.makeMeasureSpec(0, 0);
        localView.measure(i10, i10);
        i11 = i5;
        i10 = i4;
        label450:
        i5 = 0;
        if ((i17 == 1073741824) || (height != -1)) {
          break label2365;
        }
        i4 = 1;
        i5 = 1;
      }
    }
    for (;;)
    {
      i7 = topMargin;
      i7 = bottomMargin + i7;
      i13 = localView.getMeasuredHeight() + i7;
      int i14 = bm.a(i2, ce.l(localView));
      if (bool1)
      {
        i15 = localView.getBaseline();
        if (i15 != -1)
        {
          if (h >= 0) {
            break label935;
          }
          i2 = e;
          label546:
          i2 = ((i2 & 0x70) >> 4 & 0xFFFFFFFE) >> 1;
          localObject[i2] = Math.max(localObject[i2], i15);
          arrayOfInt[i2] = Math.max(arrayOfInt[i2], i13 - i15);
        }
      }
      int i15 = Math.max(i3, i13);
      if ((i1 != 0) && (height == -1))
      {
        i3 = 1;
        label619:
        if (g <= 0.0F) {
          break label958;
        }
        if (i5 == 0) {
          break label951;
        }
      }
      for (;;)
      {
        i2 = Math.max(i8, i7);
        i1 = i6;
        i9 += a(localView, i9);
        i8 = i2;
        i6 = i1;
        i5 = i15;
        i1 = i10;
        i10 = i14;
        i7 = i4;
        i2 = i11;
        i4 = i10;
        break;
        i10 = f;
        f = Math.max(i10, leftMargin + i10 + rightMargin);
        break label421;
        label727:
        i11 = 1;
        i10 = i4;
        break label450;
        i11 = Integer.MIN_VALUE;
        i10 = i11;
        if (width == 0)
        {
          i10 = i11;
          if (g > 0.0F)
          {
            i10 = 0;
            width = -2;
          }
        }
        if (f1 == 0.0F)
        {
          i11 = f;
          label789:
          a(localView, i9, paramInt1, i11, paramInt2, 0);
          if (i10 != Integer.MIN_VALUE) {
            width = i10;
          }
          i13 = localView.getMeasuredWidth();
          if (i12 == 0) {
            break label893;
          }
        }
        for (f += leftMargin + i13 + rightMargin + b(localView);; f = Math.max(i10, i10 + i13 + leftMargin + rightMargin + b(localView)))
        {
          i10 = i4;
          i11 = i5;
          if (!bool2) {
            break;
          }
          i10 = Math.max(i13, i4);
          i11 = i5;
          break;
          i11 = 0;
          break label789;
          label893:
          i10 = f;
        }
        label935:
        i2 = h;
        break label546;
        i3 = 0;
        break label619;
        label951:
        i7 = i13;
      }
      label958:
      if (i5 != 0) {}
      for (;;)
      {
        i1 = Math.max(i6, i7);
        i2 = i8;
        break;
        i7 = i13;
      }
      label986:
      if ((f > 0) && (c(i16))) {
        f += l;
      }
      if ((localObject[1] != -1) || (localObject[0] != -1) || (localObject[2] != -1) || (localObject[3] != -1)) {}
      for (i9 = Math.max(i3, Math.max(localObject[3], Math.max(localObject[0], Math.max(localObject[1], localObject[2]))) + Math.max(arrayOfInt[3], Math.max(arrayOfInt[0], Math.max(arrayOfInt[1], arrayOfInt[2]))));; i9 = i3)
      {
        if ((bool2) && ((i18 == Integer.MIN_VALUE) || (i18 == 0)))
        {
          f = 0;
          i3 = 0;
          if (i3 < i16)
          {
            localView = b(i3);
            if (localView == null) {
              f += d(i3);
            }
            for (;;)
            {
              i3 += 1;
              break;
              if (localView.getVisibility() == 8)
              {
                i3 = a(localView, i3) + i3;
              }
              else
              {
                localLayoutParams = (LinearLayoutCompat.LayoutParams)localView.getLayoutParams();
                if (i12 != 0)
                {
                  i10 = f;
                  i11 = leftMargin;
                  f = (rightMargin + (i11 + i4) + b(localView) + i10);
                }
                else
                {
                  i10 = f;
                  i11 = leftMargin;
                  f = Math.max(i10, rightMargin + (i10 + i4 + i11) + b(localView));
                }
              }
            }
          }
        }
        f += getPaddingLeft() + getPaddingRight();
        i13 = ce.a(Math.max(f, getSuggestedMinimumWidth()), paramInt1, 0);
        i3 = (0xFFFFFF & i13) - f;
        if ((i5 != 0) || ((i3 != 0) && (f1 > 0.0F)))
        {
          if (g > 0.0F) {
            f1 = g;
          }
          localObject[3] = -1;
          localObject[2] = -1;
          localObject[1] = -1;
          localObject[0] = -1;
          arrayOfInt[3] = -1;
          arrayOfInt[2] = -1;
          arrayOfInt[1] = -1;
          arrayOfInt[0] = -1;
          f = 0;
          i9 = 0;
          i8 = i6;
          i5 = i2;
          i4 = i3;
          i3 = -1;
          i6 = i9;
          i2 = i8;
          if (i6 < i16)
          {
            localView = b(i6);
            if (localView == null) {
              break label2335;
            }
            if (localView.getVisibility() == 8)
            {
              i8 = i4;
              i4 = i3;
              i3 = i2;
              i2 = i1;
              i1 = i8;
            }
          }
        }
        for (;;)
        {
          i8 = i6 + 1;
          i6 = i4;
          i4 = i1;
          i1 = i2;
          i2 = i3;
          i3 = i6;
          i6 = i8;
          break;
          localLayoutParams = (LinearLayoutCompat.LayoutParams)localView.getLayoutParams();
          float f2 = g;
          if (f2 > 0.0F)
          {
            i9 = (int)(i4 * f2 / f1);
            i8 = i4 - i9;
            i10 = getChildMeasureSpec(paramInt2, getPaddingTop() + getPaddingBottom() + topMargin + bottomMargin, height);
            if ((width != 0) || (i18 != 1073741824))
            {
              i9 += localView.getMeasuredWidth();
              i4 = i9;
              if (i9 < 0) {
                i4 = 0;
              }
              localView.measure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), i10);
              i5 = bm.a(i5, ce.l(localView) & 0xFF000000);
              f1 -= f2;
              i4 = i8;
            }
          }
          for (;;)
          {
            if (i12 != 0)
            {
              f += localView.getMeasuredWidth() + leftMargin + rightMargin + b(localView);
              label1722:
              if ((i17 == 1073741824) || (height != -1)) {
                break label1979;
              }
              i8 = 1;
              label1741:
              i11 = topMargin + bottomMargin;
              i10 = localView.getMeasuredHeight() + i11;
              i9 = Math.max(i3, i10);
              if (i8 == 0) {
                break label1985;
              }
              i3 = i11;
              label1782:
              i3 = Math.max(i2, i3);
              if ((i1 == 0) || (height != -1)) {
                break label1992;
              }
              i1 = 1;
              label1808:
              if (bool1)
              {
                i8 = localView.getBaseline();
                if (i8 != -1) {
                  if (h >= 0) {
                    break label1998;
                  }
                }
              }
            }
            label1979:
            label1985:
            label1992:
            label1998:
            for (i2 = e;; i2 = h)
            {
              i2 = ((i2 & 0x70) >> 4 & 0xFFFFFFFE) >> 1;
              localObject[i2] = Math.max(localObject[i2], i8);
              arrayOfInt[i2] = Math.max(arrayOfInt[i2], i10 - i8);
              i2 = i1;
              i1 = i4;
              i4 = i9;
              break;
              if (i9 > 0) {}
              for (i4 = i9;; i4 = 0)
              {
                localView.measure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), i10);
                break;
              }
              i8 = f;
              f = Math.max(i8, localView.getMeasuredWidth() + i8 + leftMargin + rightMargin + b(localView));
              break label1722;
              i8 = 0;
              break label1741;
              i3 = i10;
              break label1782;
              i1 = 0;
              break label1808;
            }
            f += getPaddingLeft() + getPaddingRight();
            if ((localObject[1] == -1) && (localObject[0] == -1) && (localObject[2] == -1))
            {
              i4 = i3;
              if (localObject[3] == -1) {}
            }
            else
            {
              i4 = Math.max(i3, Math.max(localObject[3], Math.max(localObject[0], Math.max(localObject[1], localObject[2]))) + Math.max(arrayOfInt[3], Math.max(arrayOfInt[0], Math.max(arrayOfInt[1], arrayOfInt[2]))));
            }
            i3 = i1;
            i1 = i5;
            i5 = i3;
            i3 = i2;
            for (;;)
            {
              if ((i5 == 0) && (i17 != 1073741824)) {}
              for (;;)
              {
                setMeasuredDimension(0xFF000000 & i1 | i13, ce.a(Math.max(i3 + (getPaddingTop() + getPaddingBottom()), getSuggestedMinimumHeight()), paramInt2, i1 << 16));
                if (i7 != 0) {
                  d(i16, paramInt1);
                }
                return;
                i5 = Math.max(i6, i8);
                if ((!bool2) || (i18 == 1073741824)) {
                  break;
                }
                i3 = 0;
                if (i3 >= i16) {
                  break;
                }
                localObject = b(i3);
                if ((localObject == null) || (((View)localObject).getVisibility() == 8)) {}
                for (;;)
                {
                  i3 += 1;
                  break;
                  if (getLayoutParamsg > 0.0F) {
                    ((View)localObject).measure(View.MeasureSpec.makeMeasureSpec(i4, 1073741824), View.MeasureSpec.makeMeasureSpec(((View)localObject).getMeasuredHeight(), 1073741824));
                  }
                }
                i3 = i4;
              }
              i3 = i5;
              i4 = i9;
              i5 = i1;
              i1 = i2;
            }
          }
          label2335:
          i8 = i4;
          i4 = i3;
          i3 = i2;
          i2 = i1;
          i1 = i8;
        }
      }
      label2365:
      i4 = i7;
    }
  }
  
  void b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool1 = bm.a(this);
    int i3 = getPaddingTop();
    int i5 = paramInt4 - paramInt2;
    int i6 = getPaddingBottom();
    int i7 = getPaddingBottom();
    int i8 = getVirtualChildCount();
    paramInt2 = e;
    int i9 = e;
    boolean bool2 = a;
    int[] arrayOfInt1 = i;
    int[] arrayOfInt2 = j;
    switch (q.a(paramInt2 & 0x800007, ce.h(this)))
    {
    default: 
      paramInt1 = getPaddingLeft();
      if (bool1) {
        paramInt4 = -1;
      }
      break;
    }
    for (int i1 = i8 - 1;; i1 = 0)
    {
      paramInt2 = 0;
      paramInt3 = paramInt1;
      label127:
      int i10;
      View localView;
      if (paramInt2 < i8)
      {
        i10 = i1 + paramInt4 * paramInt2;
        localView = b(i10);
        if (localView == null)
        {
          paramInt3 += d(i10);
          paramInt1 = paramInt2;
        }
      }
      for (;;)
      {
        paramInt2 = paramInt1 + 1;
        break label127;
        paramInt1 = getPaddingLeft() + paramInt3 - paramInt1 - f;
        break;
        paramInt1 = getPaddingLeft() + (paramInt3 - paramInt1 - f) / 2;
        break;
        if (localView.getVisibility() != 8)
        {
          int i11 = localView.getMeasuredWidth();
          int i12 = localView.getMeasuredHeight();
          LinearLayoutCompat.LayoutParams localLayoutParams = (LinearLayoutCompat.LayoutParams)localView.getLayoutParams();
          if ((bool2) && (height != -1)) {}
          for (int i2 = localView.getBaseline();; i2 = -1)
          {
            int i4 = h;
            paramInt1 = i4;
            if (i4 < 0) {
              paramInt1 = i9 & 0x70;
            }
            switch (paramInt1 & 0x70)
            {
            default: 
              paramInt1 = i3;
              label327:
              if (c(i10)) {
                paramInt3 = l + paramInt3;
              }
              break;
            }
            for (;;)
            {
              paramInt3 += leftMargin;
              a(localView, paramInt3 + a(localView), paramInt1, i11, i12);
              paramInt3 += rightMargin + i11 + b(localView);
              paramInt1 = a(localView, i10) + paramInt2;
              break;
              i4 = i3 + topMargin;
              paramInt1 = i4;
              if (i2 == -1) {
                break label327;
              }
              paramInt1 = i4 + (arrayOfInt1[1] - i2);
              break label327;
              paramInt1 = (i5 - i3 - i7 - i12) / 2 + i3 + topMargin - bottomMargin;
              break label327;
              i4 = i5 - i6 - i12 - bottomMargin;
              paramInt1 = i4;
              if (i2 == -1) {
                break label327;
              }
              paramInt1 = localView.getMeasuredHeight();
              paramInt1 = i4 - (arrayOfInt2[2] - (paramInt1 - i2));
              break label327;
              return;
            }
          }
        }
        paramInt1 = paramInt2;
      }
      paramInt4 = 1;
    }
  }
  
  void b(Canvas paramCanvas)
  {
    int i3 = getVirtualChildCount();
    boolean bool = bm.a(this);
    int i1 = 0;
    View localView;
    LinearLayoutCompat.LayoutParams localLayoutParams;
    if (i1 < i3)
    {
      localView = b(i1);
      if ((localView != null) && (localView.getVisibility() != 8) && (c(i1)))
      {
        localLayoutParams = (LinearLayoutCompat.LayoutParams)localView.getLayoutParams();
        if (!bool) {
          break label92;
        }
        i2 = localView.getRight();
      }
      label92:
      for (int i2 = rightMargin + i2;; i2 = localView.getLeft() - leftMargin - l)
      {
        b(paramCanvas, i2);
        i1 += 1;
        break;
      }
    }
    if (c(i3))
    {
      localView = b(i3 - 1);
      if (localView != null) {
        break label171;
      }
      if (!bool) {
        break label153;
      }
      i1 = getPaddingLeft();
    }
    for (;;)
    {
      b(paramCanvas, i1);
      return;
      label153:
      i1 = getWidth() - getPaddingRight() - l;
      continue;
      label171:
      localLayoutParams = (LinearLayoutCompat.LayoutParams)localView.getLayoutParams();
      if (bool)
      {
        i1 = localView.getLeft() - leftMargin - l;
      }
      else
      {
        i1 = localView.getRight();
        i1 = rightMargin + i1;
      }
    }
  }
  
  void b(Canvas paramCanvas, int paramInt)
  {
    k.setBounds(paramInt, getPaddingTop() + o, l + paramInt, getHeight() - getPaddingBottom() - o);
    k.draw(paramCanvas);
  }
  
  protected boolean c(int paramInt)
  {
    if (paramInt == 0) {
      if ((n & 0x1) == 0) {}
    }
    do
    {
      return true;
      return false;
      if (paramInt != getChildCount()) {
        break;
      }
    } while ((n & 0x4) != 0);
    return false;
    if ((n & 0x2) != 0)
    {
      paramInt -= 1;
      for (;;)
      {
        if (paramInt < 0) {
          break label75;
        }
        if (getChildAt(paramInt).getVisibility() != 8) {
          break;
        }
        paramInt -= 1;
      }
    }
    return false;
    label75:
    return false;
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return paramLayoutParams instanceof LinearLayoutCompat.LayoutParams;
  }
  
  int d(int paramInt)
  {
    return 0;
  }
  
  public int getBaseline()
  {
    int i1 = -1;
    if (b < 0) {
      i1 = super.getBaseline();
    }
    View localView;
    int i2;
    do
    {
      return i1;
      if (getChildCount() <= b) {
        throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
      }
      localView = getChildAt(b);
      i2 = localView.getBaseline();
      if (i2 != -1) {
        break;
      }
    } while (b == 0);
    throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
    i1 = c;
    if (d == 1)
    {
      int i3 = e & 0x70;
      if (i3 != 48) {
        switch (i3)
        {
        }
      }
    }
    for (;;)
    {
      return getLayoutParamstopMargin + i1 + i2;
      i1 = getBottom() - getTop() - getPaddingBottom() - f;
      continue;
      i1 += (getBottom() - getTop() - getPaddingTop() - getPaddingBottom() - f) / 2;
    }
  }
  
  public int getBaselineAlignedChildIndex()
  {
    return b;
  }
  
  public Drawable getDividerDrawable()
  {
    return k;
  }
  
  public int getDividerPadding()
  {
    return o;
  }
  
  public int getDividerWidth()
  {
    return l;
  }
  
  public int getOrientation()
  {
    return d;
  }
  
  public int getShowDividers()
  {
    return n;
  }
  
  int getVirtualChildCount()
  {
    return getChildCount();
  }
  
  public float getWeightSum()
  {
    return g;
  }
  
  protected LinearLayoutCompat.LayoutParams j()
  {
    if (d == 0) {
      return new LinearLayoutCompat.LayoutParams(-2, -2);
    }
    if (d == 1) {
      return new LinearLayoutCompat.LayoutParams(-1, -2);
    }
    return null;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (k == null) {
      return;
    }
    if (d == 1)
    {
      a(paramCanvas);
      return;
    }
    b(paramCanvas);
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(LinearLayoutCompat.class.getName());
    }
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      paramAccessibilityNodeInfo.setClassName(LinearLayoutCompat.class.getName());
    }
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (d == 1)
    {
      a(paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    b(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (d == 1)
    {
      a(paramInt1, paramInt2);
      return;
    }
    b(paramInt1, paramInt2);
  }
  
  public void setBaselineAligned(boolean paramBoolean)
  {
    a = paramBoolean;
  }
  
  public void setBaselineAlignedChildIndex(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= getChildCount())) {
      throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }
    b = paramInt;
  }
  
  public void setDividerDrawable(Drawable paramDrawable)
  {
    boolean bool = false;
    if (paramDrawable == k) {
      return;
    }
    k = paramDrawable;
    if (paramDrawable != null) {
      l = paramDrawable.getIntrinsicWidth();
    }
    for (m = paramDrawable.getIntrinsicHeight();; m = 0)
    {
      if (paramDrawable == null) {
        bool = true;
      }
      setWillNotDraw(bool);
      requestLayout();
      return;
      l = 0;
    }
  }
  
  public void setDividerPadding(int paramInt)
  {
    o = paramInt;
  }
  
  public void setGravity(int paramInt)
  {
    if (e != paramInt)
    {
      if ((0x800007 & paramInt) != 0) {
        break label46;
      }
      paramInt = 0x800003 | paramInt;
    }
    label46:
    for (;;)
    {
      int i1 = paramInt;
      if ((paramInt & 0x70) == 0) {
        i1 = paramInt | 0x30;
      }
      e = i1;
      requestLayout();
      return;
    }
  }
  
  public void setHorizontalGravity(int paramInt)
  {
    paramInt &= 0x800007;
    if ((e & 0x800007) != paramInt)
    {
      e = (paramInt | e & 0xFF7FFFF8);
      requestLayout();
    }
  }
  
  public void setMeasureWithLargestChildEnabled(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void setOrientation(int paramInt)
  {
    if (d != paramInt)
    {
      d = paramInt;
      requestLayout();
    }
  }
  
  public void setShowDividers(int paramInt)
  {
    if (paramInt != n) {
      requestLayout();
    }
    n = paramInt;
  }
  
  public void setVerticalGravity(int paramInt)
  {
    paramInt &= 0x70;
    if ((e & 0x70) != paramInt)
    {
      e = (paramInt | e & 0xFFFFFF8F);
      requestLayout();
    }
  }
  
  public void setWeightSum(float paramFloat)
  {
    g = Math.max(0.0F, paramFloat);
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.LinearLayoutCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */