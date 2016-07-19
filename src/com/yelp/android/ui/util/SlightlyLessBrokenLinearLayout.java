package com.yelp.android.ui.util;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import com.yelp.android.b.a;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class SlightlyLessBrokenLinearLayout
  extends LinearLayout
{
  private static final int CLICKABLE = 16384;
  private static final int[] DESCENDANT_FOCUSABILITY_FLAGS = { 131072, 262144, 393216 };
  private static final int[] DRAWING_CACHE_QUALITY_FLAGS;
  private static final int DUPLICATE_PARENT_STATE = 4194304;
  private static final int FADING_EDGE_NONE = 0;
  private static final int FITS_SYSTEM_WINDOWS = 2;
  private static final int FOCUSABLE = 1;
  private static final int FOCUSABLE_IN_TOUCH_MODE = 262144;
  private static final int LONG_CLICKABLE = 2097152;
  private static final int SAVE_DISABLED = 65536;
  private static final int SCROLLBARS_NONE = 0;
  private static final int SCROLLBARS_STYLE_MASK = 50331648;
  private static final int SCROLLBARS_VERTICAL = 512;
  private static final int[] VISIBILITY_FLAGS = { 0, 4, 8 };
  
  static
  {
    DRAWING_CACHE_QUALITY_FLAGS = new int[] { 0, 524288, 1048576 };
  }
  
  public SlightlyLessBrokenLinearLayout(Context paramContext)
  {
    this(paramContext, null, 0);
  }
  
  public SlightlyLessBrokenLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public SlightlyLessBrokenLinearLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, b.a.FakeView, paramInt, paramInt);
    int i16 = localTypedArray.getIndexCount();
    int i4 = 0;
    int i3 = 0;
    int i2 = 0;
    int i1 = 0;
    int i6 = 0;
    int i = -1;
    int n = -1;
    int m = -1;
    int k = -1;
    int j = -1;
    paramAttributeSet = null;
    int i5 = 0;
    if (i5 < i16)
    {
      int i17 = localTypedArray.getIndex(i5);
      int i7 = i4;
      int i8 = i3;
      int i9 = i2;
      int i10 = i1;
      paramInt = i6;
      int i11 = i;
      int i12 = n;
      int i13 = m;
      int i14 = k;
      int i15 = j;
      Object localObject1 = paramAttributeSet;
      switch (i17)
      {
      default: 
        localObject1 = paramAttributeSet;
        i15 = j;
        i14 = k;
        i13 = m;
        i12 = n;
        i11 = i;
        paramInt = i6;
        i10 = i1;
        i9 = i2;
        i8 = i3;
        i7 = i4;
      }
      for (;;)
      {
        i5 += 1;
        i4 = i7;
        i3 = i8;
        i2 = i9;
        i1 = i10;
        i6 = paramInt;
        i = i11;
        n = i12;
        m = i13;
        k = i14;
        j = i15;
        paramAttributeSet = (AttributeSet)localObject1;
        break;
        localObject1 = localTypedArray.getDrawable(i17);
        i7 = i4;
        i8 = i3;
        i9 = i2;
        i10 = i1;
        paramInt = i6;
        i11 = i;
        i12 = n;
        i13 = m;
        i14 = k;
        i15 = j;
        continue;
        i11 = localTypedArray.getDimensionPixelSize(i17, -1);
        i7 = i4;
        i8 = i3;
        i9 = i2;
        i10 = i1;
        paramInt = i6;
        i12 = n;
        i13 = m;
        i14 = k;
        i15 = j;
        localObject1 = paramAttributeSet;
        continue;
        i15 = localTypedArray.getDimensionPixelSize(i17, -1);
        i7 = i4;
        i8 = i3;
        i9 = i2;
        i10 = i1;
        paramInt = i6;
        i11 = i;
        i12 = n;
        i13 = m;
        i14 = k;
        localObject1 = paramAttributeSet;
        continue;
        i14 = localTypedArray.getDimensionPixelSize(i17, -1);
        i7 = i4;
        i8 = i3;
        i9 = i2;
        i10 = i1;
        paramInt = i6;
        i11 = i;
        i12 = n;
        i13 = m;
        i15 = j;
        localObject1 = paramAttributeSet;
        continue;
        i13 = localTypedArray.getDimensionPixelSize(i17, -1);
        i7 = i4;
        i8 = i3;
        i9 = i2;
        i10 = i1;
        paramInt = i6;
        i11 = i;
        i12 = n;
        i14 = k;
        i15 = j;
        localObject1 = paramAttributeSet;
        continue;
        i12 = localTypedArray.getDimensionPixelSize(i17, -1);
        i7 = i4;
        i8 = i3;
        i9 = i2;
        i10 = i1;
        paramInt = i6;
        i11 = i;
        i13 = m;
        i14 = k;
        i15 = j;
        localObject1 = paramAttributeSet;
        continue;
        i9 = localTypedArray.getDimensionPixelOffset(i17, 0);
        i7 = i4;
        i8 = i3;
        i10 = i1;
        paramInt = i6;
        i11 = i;
        i12 = n;
        i13 = m;
        i14 = k;
        i15 = j;
        localObject1 = paramAttributeSet;
        continue;
        i8 = localTypedArray.getDimensionPixelOffset(i17, 0);
        i7 = i4;
        i9 = i2;
        i10 = i1;
        paramInt = i6;
        i11 = i;
        i12 = n;
        i13 = m;
        i14 = k;
        i15 = j;
        localObject1 = paramAttributeSet;
        continue;
        setId(localTypedArray.getResourceId(i17, -1));
        i7 = i4;
        i8 = i3;
        i9 = i2;
        i10 = i1;
        paramInt = i6;
        i11 = i;
        i12 = n;
        i13 = m;
        i14 = k;
        i15 = j;
        localObject1 = paramAttributeSet;
        continue;
        setTag(localTypedArray.getText(i17));
        i7 = i4;
        i8 = i3;
        i9 = i2;
        i10 = i1;
        paramInt = i6;
        i11 = i;
        i12 = n;
        i13 = m;
        i14 = k;
        i15 = j;
        localObject1 = paramAttributeSet;
        continue;
        i7 = i4;
        i8 = i3;
        i9 = i2;
        i10 = i1;
        paramInt = i6;
        i11 = i;
        i12 = n;
        i13 = m;
        i14 = k;
        i15 = j;
        localObject1 = paramAttributeSet;
        if (localTypedArray.getBoolean(i17, false))
        {
          paramInt = i6 | 0x2;
          i7 = i4;
          i8 = i3;
          i9 = i2;
          i10 = i1;
          i11 = i;
          i12 = n;
          i13 = m;
          i14 = k;
          i15 = j;
          localObject1 = paramAttributeSet;
          continue;
          i7 = i4;
          i8 = i3;
          i9 = i2;
          i10 = i1;
          paramInt = i6;
          i11 = i;
          i12 = n;
          i13 = m;
          i14 = k;
          i15 = j;
          localObject1 = paramAttributeSet;
          if (localTypedArray.getBoolean(i17, false))
          {
            paramInt = i6 | 0x1;
            i7 = i4;
            i8 = i3;
            i9 = i2;
            i10 = i1;
            i11 = i;
            i12 = n;
            i13 = m;
            i14 = k;
            i15 = j;
            localObject1 = paramAttributeSet;
            continue;
            i7 = i4;
            i8 = i3;
            i9 = i2;
            i10 = i1;
            paramInt = i6;
            i11 = i;
            i12 = n;
            i13 = m;
            i14 = k;
            i15 = j;
            localObject1 = paramAttributeSet;
            if (localTypedArray.getBoolean(i17, false))
            {
              paramInt = i6 | 0x40001;
              i7 = i4;
              i8 = i3;
              i9 = i2;
              i10 = i1;
              i11 = i;
              i12 = n;
              i13 = m;
              i14 = k;
              i15 = j;
              localObject1 = paramAttributeSet;
              continue;
              i7 = i4;
              i8 = i3;
              i9 = i2;
              i10 = i1;
              paramInt = i6;
              i11 = i;
              i12 = n;
              i13 = m;
              i14 = k;
              i15 = j;
              localObject1 = paramAttributeSet;
              if (localTypedArray.getBoolean(i17, false))
              {
                paramInt = i6 | 0x4000;
                i7 = i4;
                i8 = i3;
                i9 = i2;
                i10 = i1;
                i11 = i;
                i12 = n;
                i13 = m;
                i14 = k;
                i15 = j;
                localObject1 = paramAttributeSet;
                continue;
                i7 = i4;
                i8 = i3;
                i9 = i2;
                i10 = i1;
                paramInt = i6;
                i11 = i;
                i12 = n;
                i13 = m;
                i14 = k;
                i15 = j;
                localObject1 = paramAttributeSet;
                if (localTypedArray.getBoolean(i17, false))
                {
                  paramInt = i6 | 0x200000;
                  i7 = i4;
                  i8 = i3;
                  i9 = i2;
                  i10 = i1;
                  i11 = i;
                  i12 = n;
                  i13 = m;
                  i14 = k;
                  i15 = j;
                  localObject1 = paramAttributeSet;
                  continue;
                  i7 = i4;
                  i8 = i3;
                  i9 = i2;
                  i10 = i1;
                  paramInt = i6;
                  i11 = i;
                  i12 = n;
                  i13 = m;
                  i14 = k;
                  i15 = j;
                  localObject1 = paramAttributeSet;
                  if (!localTypedArray.getBoolean(i17, true))
                  {
                    paramInt = i6 | 0x10000;
                    i7 = i4;
                    i8 = i3;
                    i9 = i2;
                    i10 = i1;
                    i11 = i;
                    i12 = n;
                    i13 = m;
                    i14 = k;
                    i15 = j;
                    localObject1 = paramAttributeSet;
                    continue;
                    i7 = i4;
                    i8 = i3;
                    i9 = i2;
                    i10 = i1;
                    paramInt = i6;
                    i11 = i;
                    i12 = n;
                    i13 = m;
                    i14 = k;
                    i15 = j;
                    localObject1 = paramAttributeSet;
                    if (localTypedArray.getBoolean(i17, false))
                    {
                      paramInt = i6 | 0x400000;
                      i7 = i4;
                      i8 = i3;
                      i9 = i2;
                      i10 = i1;
                      i11 = i;
                      i12 = n;
                      i13 = m;
                      i14 = k;
                      i15 = j;
                      localObject1 = paramAttributeSet;
                      continue;
                      i17 = localTypedArray.getInt(i17, 0);
                      i7 = i4;
                      i8 = i3;
                      i9 = i2;
                      i10 = i1;
                      paramInt = i6;
                      i11 = i;
                      i12 = n;
                      i13 = m;
                      i14 = k;
                      i15 = j;
                      localObject1 = paramAttributeSet;
                      if (i17 != 0)
                      {
                        paramInt = i6 | VISIBILITY_FLAGS[i17];
                        i7 = i4;
                        i8 = i3;
                        i9 = i2;
                        i10 = i1;
                        i11 = i;
                        i12 = n;
                        i13 = m;
                        i14 = k;
                        i15 = j;
                        localObject1 = paramAttributeSet;
                        continue;
                        i17 = localTypedArray.getInt(i17, 0);
                        i7 = i4;
                        i8 = i3;
                        i9 = i2;
                        i10 = i1;
                        paramInt = i6;
                        i11 = i;
                        i12 = n;
                        i13 = m;
                        i14 = k;
                        i15 = j;
                        localObject1 = paramAttributeSet;
                        if (i17 != 0)
                        {
                          paramInt = i6 | DRAWING_CACHE_QUALITY_FLAGS[i17];
                          i7 = i4;
                          i8 = i3;
                          i9 = i2;
                          i10 = i1;
                          i11 = i;
                          i12 = n;
                          i13 = m;
                          i14 = k;
                          i15 = j;
                          localObject1 = paramAttributeSet;
                          continue;
                          final Object localObject2 = getMethodSafely(getClass(), "setContentDescription", new Class[] { CharSequence.class });
                          i7 = i4;
                          i8 = i3;
                          i9 = i2;
                          i10 = i1;
                          paramInt = i6;
                          i11 = i;
                          i12 = n;
                          i13 = m;
                          i14 = k;
                          i15 = j;
                          localObject1 = paramAttributeSet;
                          if (localObject2 != null)
                          {
                            safeInvoke(this, (Method)localObject2, new Object[] { localTypedArray.getString(i17) });
                            i7 = i4;
                            i8 = i3;
                            i9 = i2;
                            i10 = i1;
                            paramInt = i6;
                            i11 = i;
                            i12 = n;
                            i13 = m;
                            i14 = k;
                            i15 = j;
                            localObject1 = paramAttributeSet;
                            continue;
                            i7 = i4;
                            i8 = i3;
                            i9 = i2;
                            i10 = i1;
                            paramInt = i6;
                            i11 = i;
                            i12 = n;
                            i13 = m;
                            i14 = k;
                            i15 = j;
                            localObject1 = paramAttributeSet;
                            if (!localTypedArray.getBoolean(i17, true))
                            {
                              paramInt = i6 & 0xF7FFFFFF;
                              i7 = i4;
                              i8 = i3;
                              i9 = i2;
                              i10 = i1;
                              i11 = i;
                              i12 = n;
                              i13 = m;
                              i14 = k;
                              i15 = j;
                              localObject1 = paramAttributeSet;
                              continue;
                              i7 = i4;
                              i8 = i3;
                              i9 = i2;
                              i10 = i1;
                              paramInt = i6;
                              i11 = i;
                              i12 = n;
                              i13 = m;
                              i14 = k;
                              i15 = j;
                              localObject1 = paramAttributeSet;
                              if (!localTypedArray.getBoolean(i17, true))
                              {
                                paramInt = i6 & 0xEFFFFFFF;
                                i7 = i4;
                                i8 = i3;
                                i9 = i2;
                                i10 = i1;
                                i11 = i;
                                i12 = n;
                                i13 = m;
                                i14 = k;
                                i15 = j;
                                localObject1 = paramAttributeSet;
                                continue;
                                i17 = localTypedArray.getInt(i17, 0);
                                i7 = i4;
                                i8 = i3;
                                i9 = i2;
                                i10 = i1;
                                paramInt = i6;
                                i11 = i;
                                i12 = n;
                                i13 = m;
                                i14 = k;
                                i15 = j;
                                localObject1 = paramAttributeSet;
                                if (i17 != 0)
                                {
                                  paramInt = i6 | i17;
                                  i7 = i4;
                                  i8 = i3;
                                  i9 = i2;
                                  i10 = i1;
                                  i11 = i;
                                  i12 = n;
                                  i13 = m;
                                  i14 = k;
                                  i15 = j;
                                  localObject1 = paramAttributeSet;
                                  continue;
                                  i17 = localTypedArray.getInt(i17, 0);
                                  i7 = i4;
                                  i8 = i3;
                                  i9 = i2;
                                  i10 = i1;
                                  paramInt = i6;
                                  i11 = i;
                                  i12 = n;
                                  i13 = m;
                                  i14 = k;
                                  i15 = j;
                                  localObject1 = paramAttributeSet;
                                  if (i17 != 0)
                                  {
                                    paramInt = i6 | i17;
                                    i7 = i4;
                                    i8 = i3;
                                    i9 = i2;
                                    i10 = i1;
                                    i11 = i;
                                    i12 = n;
                                    i13 = m;
                                    i14 = k;
                                    i15 = j;
                                    localObject1 = paramAttributeSet;
                                    continue;
                                    i4 = localTypedArray.getInt(i17, 0);
                                    i7 = i4;
                                    i8 = i3;
                                    i9 = i2;
                                    i10 = i1;
                                    paramInt = i6;
                                    i11 = i;
                                    i12 = n;
                                    i13 = m;
                                    i14 = k;
                                    i15 = j;
                                    localObject1 = paramAttributeSet;
                                    if (i4 != 0)
                                    {
                                      paramInt = i6 | 0x3000000 & i4;
                                      i7 = i4;
                                      i8 = i3;
                                      i9 = i2;
                                      i10 = i1;
                                      i11 = i;
                                      i12 = n;
                                      i13 = m;
                                      i14 = k;
                                      i15 = j;
                                      localObject1 = paramAttributeSet;
                                      continue;
                                      i1 = 1;
                                      i7 = i4;
                                      i8 = i3;
                                      i9 = i2;
                                      i10 = i1;
                                      paramInt = i6;
                                      i11 = i;
                                      i12 = n;
                                      i13 = m;
                                      i14 = k;
                                      i15 = j;
                                      localObject1 = paramAttributeSet;
                                      if (localTypedArray.getBoolean(i17, false))
                                      {
                                        setScrollContainer(true);
                                        i7 = i4;
                                        i8 = i3;
                                        i9 = i2;
                                        i10 = i1;
                                        paramInt = i6;
                                        i11 = i;
                                        i12 = n;
                                        i13 = m;
                                        i14 = k;
                                        i15 = j;
                                        localObject1 = paramAttributeSet;
                                        continue;
                                        i7 = i4;
                                        i8 = i3;
                                        i9 = i2;
                                        i10 = i1;
                                        paramInt = i6;
                                        i11 = i;
                                        i12 = n;
                                        i13 = m;
                                        i14 = k;
                                        i15 = j;
                                        localObject1 = paramAttributeSet;
                                        if (localTypedArray.getBoolean(i17, false))
                                        {
                                          paramInt = i6 | 0x4000000;
                                          i7 = i4;
                                          i8 = i3;
                                          i9 = i2;
                                          i10 = i1;
                                          i11 = i;
                                          i12 = n;
                                          i13 = m;
                                          i14 = k;
                                          i15 = j;
                                          localObject1 = paramAttributeSet;
                                          continue;
                                          setNextFocusLeftId(localTypedArray.getResourceId(i17, -1));
                                          i7 = i4;
                                          i8 = i3;
                                          i9 = i2;
                                          i10 = i1;
                                          paramInt = i6;
                                          i11 = i;
                                          i12 = n;
                                          i13 = m;
                                          i14 = k;
                                          i15 = j;
                                          localObject1 = paramAttributeSet;
                                          continue;
                                          setNextFocusRightId(localTypedArray.getResourceId(i17, -1));
                                          i7 = i4;
                                          i8 = i3;
                                          i9 = i2;
                                          i10 = i1;
                                          paramInt = i6;
                                          i11 = i;
                                          i12 = n;
                                          i13 = m;
                                          i14 = k;
                                          i15 = j;
                                          localObject1 = paramAttributeSet;
                                          continue;
                                          setNextFocusUpId(localTypedArray.getResourceId(i17, -1));
                                          i7 = i4;
                                          i8 = i3;
                                          i9 = i2;
                                          i10 = i1;
                                          paramInt = i6;
                                          i11 = i;
                                          i12 = n;
                                          i13 = m;
                                          i14 = k;
                                          i15 = j;
                                          localObject1 = paramAttributeSet;
                                          continue;
                                          setNextFocusDownId(localTypedArray.getResourceId(i17, -1));
                                          i7 = i4;
                                          i8 = i3;
                                          i9 = i2;
                                          i10 = i1;
                                          paramInt = i6;
                                          i11 = i;
                                          i12 = n;
                                          i13 = m;
                                          i14 = k;
                                          i15 = j;
                                          localObject1 = paramAttributeSet;
                                          continue;
                                          setMinimumWidth(localTypedArray.getDimensionPixelSize(i17, 0));
                                          i7 = i4;
                                          i8 = i3;
                                          i9 = i2;
                                          i10 = i1;
                                          paramInt = i6;
                                          i11 = i;
                                          i12 = n;
                                          i13 = m;
                                          i14 = k;
                                          i15 = j;
                                          localObject1 = paramAttributeSet;
                                          continue;
                                          setMinimumHeight(localTypedArray.getDimensionPixelSize(i17, 0));
                                          i7 = i4;
                                          i8 = i3;
                                          i9 = i2;
                                          i10 = i1;
                                          paramInt = i6;
                                          i11 = i;
                                          i12 = n;
                                          i13 = m;
                                          i14 = k;
                                          i15 = j;
                                          localObject1 = paramAttributeSet;
                                          continue;
                                          localObject1 = getMethodSafely(Context.class, "isRestricted", new Class[0]);
                                          if ((localObject1 != null) && (Boolean.valueOf(String.valueOf(safeInvoke(paramContext, (Method)localObject1, new Object[0]))).booleanValue())) {
                                            throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                                          }
                                          localObject2 = localTypedArray.getString(i17);
                                          i7 = i4;
                                          i8 = i3;
                                          i9 = i2;
                                          i10 = i1;
                                          paramInt = i6;
                                          i11 = i;
                                          i12 = n;
                                          i13 = m;
                                          i14 = k;
                                          i15 = j;
                                          localObject1 = paramAttributeSet;
                                          if (localObject2 != null)
                                          {
                                            setOnClickListener(new View.OnClickListener()
                                            {
                                              private Method c;
                                              
                                              /* Error */
                                              public void onClick(android.view.View paramAnonymousView)
                                              {
                                                // Byte code:
                                                //   0: aload_0
                                                //   1: getfield 36	com/yelp/android/ui/util/SlightlyLessBrokenLinearLayout$1:c	Ljava/lang/reflect/Method;
                                                //   4: ifnonnull +33 -> 37
                                                //   7: aload_0
                                                //   8: aload_0
                                                //   9: getfield 20	com/yelp/android/ui/util/SlightlyLessBrokenLinearLayout$1:b	Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;
                                                //   12: invokevirtual 40	com/yelp/android/ui/util/SlightlyLessBrokenLinearLayout:getContext	()Landroid/content/Context;
                                                //   15: invokevirtual 44	java/lang/Object:getClass	()Ljava/lang/Class;
                                                //   18: aload_0
                                                //   19: getfield 22	com/yelp/android/ui/util/SlightlyLessBrokenLinearLayout$1:a	Ljava/lang/String;
                                                //   22: iconst_1
                                                //   23: anewarray 46	java/lang/Class
                                                //   26: dup
                                                //   27: iconst_0
                                                //   28: ldc 48
                                                //   30: aastore
                                                //   31: invokevirtual 52	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
                                                //   34: putfield 36	com/yelp/android/ui/util/SlightlyLessBrokenLinearLayout$1:c	Ljava/lang/reflect/Method;
                                                //   37: aload_0
                                                //   38: getfield 36	com/yelp/android/ui/util/SlightlyLessBrokenLinearLayout$1:c	Ljava/lang/reflect/Method;
                                                //   41: aload_0
                                                //   42: getfield 20	com/yelp/android/ui/util/SlightlyLessBrokenLinearLayout$1:b	Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;
                                                //   45: invokevirtual 40	com/yelp/android/ui/util/SlightlyLessBrokenLinearLayout:getContext	()Landroid/content/Context;
                                                //   48: iconst_1
                                                //   49: anewarray 4	java/lang/Object
                                                //   52: dup
                                                //   53: iconst_0
                                                //   54: aload_0
                                                //   55: aastore
                                                //   56: invokevirtual 58	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
                                                //   59: pop
                                                //   60: return
                                                //   61: astore_3
                                                //   62: aload_0
                                                //   63: getfield 20	com/yelp/android/ui/util/SlightlyLessBrokenLinearLayout$1:b	Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;
                                                //   66: invokevirtual 62	com/yelp/android/ui/util/SlightlyLessBrokenLinearLayout:getId	()I
                                                //   69: istore_2
                                                //   70: iload_2
                                                //   71: iconst_m1
                                                //   72: if_icmpne +76 -> 148
                                                //   75: ldc 64
                                                //   77: astore_1
                                                //   78: new 66	java/lang/IllegalStateException
                                                //   81: dup
                                                //   82: new 68	java/lang/StringBuilder
                                                //   85: dup
                                                //   86: invokespecial 69	java/lang/StringBuilder:<init>	()V
                                                //   89: ldc 71
                                                //   91: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                                                //   94: aload_0
                                                //   95: getfield 22	com/yelp/android/ui/util/SlightlyLessBrokenLinearLayout$1:a	Ljava/lang/String;
                                                //   98: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                                                //   101: ldc 77
                                                //   103: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                                                //   106: aload_0
                                                //   107: getfield 20	com/yelp/android/ui/util/SlightlyLessBrokenLinearLayout$1:b	Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;
                                                //   110: invokevirtual 40	com/yelp/android/ui/util/SlightlyLessBrokenLinearLayout:getContext	()Landroid/content/Context;
                                                //   113: invokevirtual 44	java/lang/Object:getClass	()Ljava/lang/Class;
                                                //   116: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
                                                //   119: ldc 82
                                                //   121: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                                                //   124: ldc 84
                                                //   126: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                                                //   129: aload_0
                                                //   130: invokevirtual 44	java/lang/Object:getClass	()Ljava/lang/Class;
                                                //   133: invokevirtual 80	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
                                                //   136: aload_1
                                                //   137: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                                                //   140: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
                                                //   143: aload_3
                                                //   144: invokespecial 91	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
                                                //   147: athrow
                                                //   148: new 68	java/lang/StringBuilder
                                                //   151: dup
                                                //   152: invokespecial 69	java/lang/StringBuilder:<init>	()V
                                                //   155: ldc 93
                                                //   157: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                                                //   160: aload_0
                                                //   161: getfield 20	com/yelp/android/ui/util/SlightlyLessBrokenLinearLayout$1:b	Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;
                                                //   164: invokevirtual 40	com/yelp/android/ui/util/SlightlyLessBrokenLinearLayout:getContext	()Landroid/content/Context;
                                                //   167: invokevirtual 99	android/content/Context:getResources	()Landroid/content/res/Resources;
                                                //   170: iload_2
                                                //   171: invokevirtual 105	android/content/res/Resources:getResourceEntryName	(I)Ljava/lang/String;
                                                //   174: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                                                //   177: ldc 107
                                                //   179: invokevirtual 75	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
                                                //   182: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
                                                //   185: astore_1
                                                //   186: goto -108 -> 78
                                                //   189: astore_1
                                                //   190: new 66	java/lang/IllegalStateException
                                                //   193: dup
                                                //   194: ldc 109
                                                //   196: aload_1
                                                //   197: invokespecial 91	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
                                                //   200: athrow
                                                //   201: astore_1
                                                //   202: new 66	java/lang/IllegalStateException
                                                //   205: dup
                                                //   206: ldc 111
                                                //   208: aload_1
                                                //   209: invokespecial 91	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
                                                //   212: athrow
                                                // Local variable table:
                                                //   start	length	slot	name	signature
                                                //   0	213	0	this	1
                                                //   0	213	1	paramAnonymousView	android.view.View
                                                //   69	102	2	i	int
                                                //   61	83	3	localNoSuchMethodException	NoSuchMethodException
                                                // Exception table:
                                                //   from	to	target	type
                                                //   7	37	61	java/lang/NoSuchMethodException
                                                //   37	60	189	java/lang/IllegalAccessException
                                                //   37	60	201	java/lang/reflect/InvocationTargetException
                                              }
                                            });
                                            i7 = i4;
                                            i8 = i3;
                                            i9 = i2;
                                            i10 = i1;
                                            paramInt = i6;
                                            i11 = i;
                                            i12 = n;
                                            i13 = m;
                                            i14 = k;
                                            i15 = j;
                                            localObject1 = paramAttributeSet;
                                            continue;
                                            setClipChildren(localTypedArray.getBoolean(i17, true));
                                            i7 = i4;
                                            i8 = i3;
                                            i9 = i2;
                                            i10 = i1;
                                            paramInt = i6;
                                            i11 = i;
                                            i12 = n;
                                            i13 = m;
                                            i14 = k;
                                            i15 = j;
                                            localObject1 = paramAttributeSet;
                                            continue;
                                            setClipToPadding(localTypedArray.getBoolean(i17, true));
                                            i7 = i4;
                                            i8 = i3;
                                            i9 = i2;
                                            i10 = i1;
                                            paramInt = i6;
                                            i11 = i;
                                            i12 = n;
                                            i13 = m;
                                            i14 = k;
                                            i15 = j;
                                            localObject1 = paramAttributeSet;
                                            continue;
                                            setAnimationCacheEnabled(localTypedArray.getBoolean(i17, true));
                                            i7 = i4;
                                            i8 = i3;
                                            i9 = i2;
                                            i10 = i1;
                                            paramInt = i6;
                                            i11 = i;
                                            i12 = n;
                                            i13 = m;
                                            i14 = k;
                                            i15 = j;
                                            localObject1 = paramAttributeSet;
                                            continue;
                                            setPersistentDrawingCache(localTypedArray.getInt(i17, 2));
                                            i7 = i4;
                                            i8 = i3;
                                            i9 = i2;
                                            i10 = i1;
                                            paramInt = i6;
                                            i11 = i;
                                            i12 = n;
                                            i13 = m;
                                            i14 = k;
                                            i15 = j;
                                            localObject1 = paramAttributeSet;
                                            continue;
                                            setAddStatesFromChildren(localTypedArray.getBoolean(i17, false));
                                            i7 = i4;
                                            i8 = i3;
                                            i9 = i2;
                                            i10 = i1;
                                            paramInt = i6;
                                            i11 = i;
                                            i12 = n;
                                            i13 = m;
                                            i14 = k;
                                            i15 = j;
                                            localObject1 = paramAttributeSet;
                                            continue;
                                            setAlwaysDrawnWithCacheEnabled(localTypedArray.getBoolean(i17, true));
                                            i7 = i4;
                                            i8 = i3;
                                            i9 = i2;
                                            i10 = i1;
                                            paramInt = i6;
                                            i11 = i;
                                            i12 = n;
                                            i13 = m;
                                            i14 = k;
                                            i15 = j;
                                            localObject1 = paramAttributeSet;
                                            continue;
                                            i17 = localTypedArray.getResourceId(i17, -1);
                                            i7 = i4;
                                            i8 = i3;
                                            i9 = i2;
                                            i10 = i1;
                                            paramInt = i6;
                                            i11 = i;
                                            i12 = n;
                                            i13 = m;
                                            i14 = k;
                                            i15 = j;
                                            localObject1 = paramAttributeSet;
                                            if (i17 > 0)
                                            {
                                              setLayoutAnimation(AnimationUtils.loadLayoutAnimation(paramContext, i17));
                                              i7 = i4;
                                              i8 = i3;
                                              i9 = i2;
                                              i10 = i1;
                                              paramInt = i6;
                                              i11 = i;
                                              i12 = n;
                                              i13 = m;
                                              i14 = k;
                                              i15 = j;
                                              localObject1 = paramAttributeSet;
                                              continue;
                                              setDescendantFocusability(DESCENDANT_FOCUSABILITY_FLAGS[localTypedArray.getInt(i17, 0)]);
                                              i7 = i4;
                                              i8 = i3;
                                              i9 = i2;
                                              i10 = i1;
                                              paramInt = i6;
                                              i11 = i;
                                              i12 = n;
                                              i13 = m;
                                              i14 = k;
                                              i15 = j;
                                              localObject1 = paramAttributeSet;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    if (paramAttributeSet != null) {
      setBackgroundDrawable(paramAttributeSet);
    }
    if (i >= 0)
    {
      paramInt = i;
      j = i;
    }
    for (k = i;; k = m)
    {
      if (k >= 0)
      {
        if (j < 0) {
          break label3961;
        }
        label3791:
        if (paramInt < 0) {
          break label3970;
        }
        label3795:
        if (i < 0) {
          break label3978;
        }
      }
      for (;;)
      {
        setPadding(k, j, paramInt, i);
        if (i4 != 0) {
          super.recomputeViewAttributes(this);
        }
        if ((i2 != 0) || (i3 != 0)) {
          scrollTo(i2, i3);
        }
        if ((i1 == 0) && ((i6 & 0x200) != 0)) {
          setScrollContainer(true);
        }
        paramInt = localTypedArray.getInt(9, -1);
        if (paramInt >= 0) {
          setOrientation(paramInt);
        }
        paramInt = localTypedArray.getInt(8, -1);
        if (paramInt >= 0) {
          setGravity(paramInt);
        }
        boolean bool = localTypedArray.getBoolean(45, true);
        if (!bool) {
          setBaselineAligned(bool);
        }
        setWeightSum(localTypedArray.getFloat(47, -1.0F));
        paramInt = localTypedArray.getInt(46, -1);
        if (paramInt > 0) {
          setBaselineAlignedChildIndex(paramInt);
        }
        localTypedArray.recycle();
        return;
        k = getPaddingLeft();
        break;
        label3961:
        j = getPaddingTop();
        break label3791;
        label3970:
        paramInt = getPaddingRight();
        break label3795;
        label3978:
        i = getPaddingBottom();
      }
      i = n;
      paramInt = m;
      m = j;
      j = k;
    }
  }
  
  private Method getMethodSafely(Class<?> paramClass, String paramString, Class<?>... paramVarArgs)
  {
    try
    {
      paramClass = paramClass.getMethod(paramString, paramVarArgs);
      return paramClass;
    }
    catch (SecurityException paramClass)
    {
      return null;
    }
    catch (NoSuchMethodException paramClass) {}
    return null;
  }
  
  private Object safeInvoke(Object paramObject, Method paramMethod, Object... paramVarArgs)
  {
    try
    {
      paramMethod.invoke(paramObject, paramVarArgs);
      return null;
    }
    catch (IllegalArgumentException paramObject)
    {
      return null;
    }
    catch (IllegalAccessException paramObject)
    {
      return null;
    }
    catch (InvocationTargetException paramObject) {}
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.SlightlyLessBrokenLinearLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */