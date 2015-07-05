package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.TextView;

public class AutoResizeTextView
  extends TextView
{
  private a a;
  private boolean b = false;
  private float c = getTextSize();
  private float d = 0.0F;
  private float e = 20.0F;
  private float f = 1.0F;
  private float g = 0.0F;
  private boolean h = true;
  
  public AutoResizeTextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public AutoResizeTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AutoResizeTextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private RectF a(CharSequence paramCharSequence, TextPaint paramTextPaint, int paramInt, float paramFloat)
  {
    paramTextPaint.setTextSize(paramFloat);
    StaticLayout localStaticLayout = new StaticLayout(paramCharSequence, paramTextPaint, paramInt, Layout.Alignment.ALIGN_NORMAL, f, g, true);
    return new RectF(0.0F, 0.0F, paramTextPaint.measureText(paramCharSequence.toString()), localStaticLayout.getHeight());
  }
  
  public void a()
  {
    if (c > 0.0F)
    {
      super.setTextSize(0, c);
      d = c;
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    CharSequence localCharSequence = getText();
    if ((localCharSequence == null) || (localCharSequence.length() == 0) || (paramInt2 <= 0) || (paramInt1 <= 0) || (c == 0.0F)) {
      return;
    }
    TextPaint localTextPaint = new TextPaint(getPaint());
    float f4 = localTextPaint.getTextSize();
    if (d > 0.0F) {}
    Object localObject;
    float f3;
    float f2;
    for (float f1 = Math.min(c, d);; f1 = c)
    {
      localObject = a(localCharSequence, localTextPaint, paramInt1, f1);
      f3 = ((RectF)localObject).height();
      for (f2 = ((RectF)localObject).width(); ((f3 > paramInt2) || ((getSupportMaxLines() == 1) && (f2 > paramInt1))) && (f1 > e); f2 = ((RectF)localObject).width())
      {
        f1 = Math.max(f1 - 2.0F, e);
        localObject = a(localCharSequence, localTextPaint, paramInt1, f1);
        f3 = ((RectF)localObject).height();
      }
    }
    int j;
    if ((h) && (f1 == e) && (f3 > paramInt2))
    {
      localObject = new StaticLayout(localCharSequence, localTextPaint, paramInt1, Layout.Alignment.ALIGN_NORMAL, f, g, false);
      if (((StaticLayout)localObject).getLineCount() > 0)
      {
        j = ((StaticLayout)localObject).getLineForVertical(paramInt2) - 1;
        if (j >= 0) {
          break label320;
        }
        setText("");
      }
    }
    for (;;)
    {
      setTextSize(f1 / getResourcesgetDisplayMetricsscaledDensity);
      setLineSpacing(g, f);
      if (a != null) {
        a.a(this, f4, f1);
      }
      b = false;
      return;
      label320:
      String str = getContext().getString(2131165752);
      int i = ((StaticLayout)localObject).getLineStart(j);
      paramInt2 = ((StaticLayout)localObject).getLineEnd(j);
      f2 = ((StaticLayout)localObject).getLineWidth(j);
      f3 = localTextPaint.measureText(str);
      while (paramInt1 < f2 + f3)
      {
        paramInt2 -= 1;
        f2 = localTextPaint.measureText(localCharSequence.subSequence(i, paramInt2 + 1).toString());
      }
      setText(localCharSequence.subSequence(0, paramInt2) + str);
    }
  }
  
  public float getMaxTextSize()
  {
    return d;
  }
  
  public float getMinTextSize()
  {
    return e;
  }
  
  /* Error */
  @android.annotation.TargetApi(16)
  public int getSupportMaxLines()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: bipush 16
    //   5: invokestatic 214	com/yelp/android/appdata/n:a	(I)Z
    //   8: ifeq +10 -> 18
    //   11: aload_0
    //   12: invokevirtual 217	com/yelp/android/ui/widgets/AutoResizeTextView:getMaxLines	()I
    //   15: istore_1
    //   16: iload_1
    //   17: ireturn
    //   18: aload_0
    //   19: invokevirtual 223	java/lang/Object:getClass	()Ljava/lang/Class;
    //   22: invokevirtual 228	java/lang/Class:getSuperclass	()Ljava/lang/Class;
    //   25: ldc -26
    //   27: invokevirtual 234	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   30: astore_3
    //   31: aload_0
    //   32: invokevirtual 223	java/lang/Object:getClass	()Ljava/lang/Class;
    //   35: invokevirtual 228	java/lang/Class:getSuperclass	()Ljava/lang/Class;
    //   38: ldc -20
    //   40: invokevirtual 234	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   43: astore 4
    //   45: aload_3
    //   46: ifnull +37 -> 83
    //   49: aload 4
    //   51: ifnull +32 -> 83
    //   54: aload_3
    //   55: iconst_1
    //   56: invokevirtual 242	java/lang/reflect/Field:setAccessible	(Z)V
    //   59: aload 4
    //   61: iconst_1
    //   62: invokevirtual 242	java/lang/reflect/Field:setAccessible	(Z)V
    //   65: aload_3
    //   66: aload_0
    //   67: invokevirtual 246	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   70: istore_1
    //   71: aload 4
    //   73: aload_0
    //   74: invokevirtual 246	java/lang/reflect/Field:getInt	(Ljava/lang/Object;)I
    //   77: istore_2
    //   78: iload_2
    //   79: iconst_1
    //   80: if_icmpeq -64 -> 16
    //   83: iconst_m1
    //   84: ireturn
    //   85: astore 4
    //   87: aconst_null
    //   88: astore_3
    //   89: ldc -8
    //   91: aload 4
    //   93: invokestatic 254	com/yelp/android/util/YelpLog:error	(Ljava/lang/Object;Ljava/lang/Exception;)V
    //   96: aload 5
    //   98: astore 4
    //   100: goto -55 -> 45
    //   103: astore_3
    //   104: ldc -8
    //   106: aload_3
    //   107: invokestatic 254	com/yelp/android/util/YelpLog:error	(Ljava/lang/Object;Ljava/lang/Exception;)V
    //   110: goto -27 -> 83
    //   113: astore_3
    //   114: ldc -8
    //   116: aload_3
    //   117: invokestatic 254	com/yelp/android/util/YelpLog:error	(Ljava/lang/Object;Ljava/lang/Exception;)V
    //   120: goto -37 -> 83
    //   123: astore 4
    //   125: goto -36 -> 89
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	128	0	this	AutoResizeTextView
    //   15	56	1	i	int
    //   77	4	2	j	int
    //   30	59	3	localField1	java.lang.reflect.Field
    //   103	4	3	localIllegalArgumentException	IllegalArgumentException
    //   113	4	3	localIllegalAccessException	IllegalAccessException
    //   43	29	4	localField2	java.lang.reflect.Field
    //   85	7	4	localNoSuchFieldException1	NoSuchFieldException
    //   98	1	4	localObject1	Object
    //   123	1	4	localNoSuchFieldException2	NoSuchFieldException
    //   1	96	5	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   18	31	85	java/lang/NoSuchFieldException
    //   65	78	103	java/lang/IllegalArgumentException
    //   65	78	113	java/lang/IllegalAccessException
    //   31	45	123	java/lang/NoSuchFieldException
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramBoolean) || (b)) {
      a(paramInt3 - paramInt1 - getCompoundPaddingLeft() - getCompoundPaddingRight(), paramInt4 - paramInt2 - getCompoundPaddingBottom() - getCompoundPaddingTop());
    }
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      b = true;
    }
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    b = true;
    a();
  }
  
  public void setAddEllipsis(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public void setLineSpacing(float paramFloat1, float paramFloat2)
  {
    super.setLineSpacing(paramFloat1, paramFloat2);
    f = paramFloat2;
    g = paramFloat1;
  }
  
  public void setMaxTextSize(float paramFloat)
  {
    d = paramFloat;
    requestLayout();
    invalidate();
  }
  
  public void setMinTextSize(float paramFloat)
  {
    e = paramFloat;
    requestLayout();
    invalidate();
  }
  
  public void setOnResizeListener(a parama)
  {
    a = parama;
  }
  
  public void setTextSize(float paramFloat)
  {
    super.setTextSize(paramFloat);
    c = getTextSize();
  }
  
  public void setTextSize(int paramInt, float paramFloat)
  {
    super.setTextSize(paramInt, paramFloat);
    c = getTextSize();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.AutoResizeTextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */