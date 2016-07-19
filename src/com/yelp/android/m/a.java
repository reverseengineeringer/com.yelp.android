package com.yelp.android.m;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.AppCompatAutoCompleteTextView;
import android.support.v7.widget.AppCompatButton;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.AppCompatCheckedTextView;
import android.support.v7.widget.AppCompatEditText;
import android.support.v7.widget.AppCompatMultiAutoCompleteTextView;
import android.support.v7.widget.AppCompatRadioButton;
import android.support.v7.widget.AppCompatRatingBar;
import android.support.v7.widget.AppCompatSpinner;
import android.support.v7.widget.AppCompatTextView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.InflateException;
import android.view.View;
import com.yelp.android.j.a.k;
import com.yelp.android.p.b;
import java.lang.reflect.Constructor;
import java.util.Map;

public class a
{
  static final Class<?>[] a = { Context.class, AttributeSet.class };
  private static final Map<String, Constructor<? extends View>> b = new com.yelp.android.g.a();
  private final Object[] c = new Object[2];
  
  private static Context a(Context paramContext, AttributeSet paramAttributeSet, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, a.k.View, 0, 0);
    if (paramBoolean1) {}
    for (int i = paramAttributeSet.getResourceId(a.k.View_android_theme, 0);; i = 0)
    {
      int j = i;
      if (paramBoolean2)
      {
        j = i;
        if (i == 0)
        {
          i = paramAttributeSet.getResourceId(a.k.View_theme, 0);
          j = i;
          if (i != 0)
          {
            Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
            j = i;
          }
        }
      }
      paramAttributeSet.recycle();
      paramAttributeSet = paramContext;
      if (j != 0) {
        if ((paramContext instanceof b))
        {
          paramAttributeSet = paramContext;
          if (((b)paramContext).a() == j) {}
        }
        else
        {
          paramAttributeSet = new b(paramContext, j);
        }
      }
      return paramAttributeSet;
    }
  }
  
  /* Error */
  private View a(Context paramContext, String paramString, AttributeSet paramAttributeSet)
  {
    // Byte code:
    //   0: aload_2
    //   1: astore 4
    //   3: aload_2
    //   4: ldc 83
    //   6: invokevirtual 89	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   9: ifeq +14 -> 23
    //   12: aload_3
    //   13: aconst_null
    //   14: ldc 91
    //   16: invokeinterface 95 3 0
    //   21: astore 4
    //   23: aload_0
    //   24: getfield 33	com/yelp/android/m/a:c	[Ljava/lang/Object;
    //   27: iconst_0
    //   28: aload_1
    //   29: aastore
    //   30: aload_0
    //   31: getfield 33	com/yelp/android/m/a:c	[Ljava/lang/Object;
    //   34: iconst_1
    //   35: aload_3
    //   36: aastore
    //   37: iconst_m1
    //   38: aload 4
    //   40: bipush 46
    //   42: invokevirtual 99	java/lang/String:indexOf	(I)I
    //   45: if_icmpne +29 -> 74
    //   48: aload_0
    //   49: aload_1
    //   50: aload 4
    //   52: ldc 101
    //   54: invokespecial 104	com/yelp/android/m/a:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    //   57: astore_1
    //   58: aload_0
    //   59: getfield 33	com/yelp/android/m/a:c	[Ljava/lang/Object;
    //   62: iconst_0
    //   63: aconst_null
    //   64: aastore
    //   65: aload_0
    //   66: getfield 33	com/yelp/android/m/a:c	[Ljava/lang/Object;
    //   69: iconst_1
    //   70: aconst_null
    //   71: aastore
    //   72: aload_1
    //   73: areturn
    //   74: aload_0
    //   75: aload_1
    //   76: aload 4
    //   78: aconst_null
    //   79: invokespecial 104	com/yelp/android/m/a:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    //   82: astore_1
    //   83: aload_0
    //   84: getfield 33	com/yelp/android/m/a:c	[Ljava/lang/Object;
    //   87: iconst_0
    //   88: aconst_null
    //   89: aastore
    //   90: aload_0
    //   91: getfield 33	com/yelp/android/m/a:c	[Ljava/lang/Object;
    //   94: iconst_1
    //   95: aconst_null
    //   96: aastore
    //   97: aload_1
    //   98: areturn
    //   99: astore_1
    //   100: aload_0
    //   101: getfield 33	com/yelp/android/m/a:c	[Ljava/lang/Object;
    //   104: iconst_0
    //   105: aconst_null
    //   106: aastore
    //   107: aload_0
    //   108: getfield 33	com/yelp/android/m/a:c	[Ljava/lang/Object;
    //   111: iconst_1
    //   112: aconst_null
    //   113: aastore
    //   114: aconst_null
    //   115: areturn
    //   116: astore_1
    //   117: aload_0
    //   118: getfield 33	com/yelp/android/m/a:c	[Ljava/lang/Object;
    //   121: iconst_0
    //   122: aconst_null
    //   123: aastore
    //   124: aload_0
    //   125: getfield 33	com/yelp/android/m/a:c	[Ljava/lang/Object;
    //   128: iconst_1
    //   129: aconst_null
    //   130: aastore
    //   131: aload_1
    //   132: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	133	0	this	a
    //   0	133	1	paramContext	Context
    //   0	133	2	paramString	String
    //   0	133	3	paramAttributeSet	AttributeSet
    //   1	76	4	str	String
    // Exception table:
    //   from	to	target	type
    //   23	58	99	java/lang/Exception
    //   74	83	99	java/lang/Exception
    //   23	58	116	finally
    //   74	83	116	finally
  }
  
  private View a(Context paramContext, String paramString1, String paramString2)
    throws ClassNotFoundException, InflateException
  {
    Constructor localConstructor = (Constructor)b.get(paramString1);
    Object localObject = localConstructor;
    if (localConstructor == null) {}
    try
    {
      localObject = paramContext.getClassLoader();
      if (paramString2 != null) {}
      for (paramContext = paramString2 + paramString1;; paramContext = paramString1)
      {
        localObject = ((ClassLoader)localObject).loadClass(paramContext).asSubclass(View.class).getConstructor(a);
        b.put(paramString1, localObject);
        ((Constructor)localObject).setAccessible(true);
        paramContext = (View)((Constructor)localObject).newInstance(c);
        return paramContext;
      }
      return null;
    }
    catch (Exception paramContext) {}
  }
  
  public final View a(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if ((paramBoolean1) && (paramView != null)) {}
    for (paramView = paramView.getContext();; paramView = paramContext)
    {
      Object localObject;
      if (!paramBoolean2)
      {
        localObject = paramView;
        if (!paramBoolean3) {}
      }
      else
      {
        localObject = a(paramView, paramAttributeSet, paramBoolean2, paramBoolean3);
      }
      int i = -1;
      switch (paramString.hashCode())
      {
      }
      for (;;)
      {
        switch (i)
        {
        default: 
          if (paramContext == localObject) {
            break label482;
          }
          return a((Context)localObject, paramString, paramAttributeSet);
          if (paramString.equals("EditText"))
          {
            i = 0;
            continue;
            if (paramString.equals("Spinner"))
            {
              i = 1;
              continue;
              if (paramString.equals("CheckBox"))
              {
                i = 2;
                continue;
                if (paramString.equals("RadioButton"))
                {
                  i = 3;
                  continue;
                  if (paramString.equals("CheckedTextView"))
                  {
                    i = 4;
                    continue;
                    if (paramString.equals("AutoCompleteTextView"))
                    {
                      i = 5;
                      continue;
                      if (paramString.equals("MultiAutoCompleteTextView"))
                      {
                        i = 6;
                        continue;
                        if (paramString.equals("RatingBar"))
                        {
                          i = 7;
                          continue;
                          if (paramString.equals("Button"))
                          {
                            i = 8;
                            continue;
                            if (paramString.equals("TextView")) {
                              i = 9;
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
          break;
        }
      }
      return new AppCompatEditText((Context)localObject, paramAttributeSet);
      return new AppCompatSpinner((Context)localObject, paramAttributeSet);
      return new AppCompatCheckBox((Context)localObject, paramAttributeSet);
      return new AppCompatRadioButton((Context)localObject, paramAttributeSet);
      return new AppCompatCheckedTextView((Context)localObject, paramAttributeSet);
      return new AppCompatAutoCompleteTextView((Context)localObject, paramAttributeSet);
      return new AppCompatMultiAutoCompleteTextView((Context)localObject, paramAttributeSet);
      return new AppCompatRatingBar((Context)localObject, paramAttributeSet);
      return new AppCompatButton((Context)localObject, paramAttributeSet);
      return new AppCompatTextView((Context)localObject, paramAttributeSet);
      label482:
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.m.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */