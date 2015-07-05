package com.yelp.android.ui.util;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Pair;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.bf.j;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;

public class cp
{
  public static int a(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    Point localPoint = new Point();
    paramContext.getSize(localPoint);
    return x;
  }
  
  public static int a(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getTheme().obtainStyledAttributes(new int[] { paramInt });
    paramInt = paramContext.getDimensionPixelSize(0, -1);
    paramContext.recycle();
    return paramInt;
  }
  
  public static int a(Context paramContext, String paramString)
  {
    String str = paramString;
    if (paramString.contains(".")) {
      str = paramString.substring(0, paramString.lastIndexOf("."));
    }
    paramString = str;
    if (str.contains("@")) {
      paramString = str.substring(0, str.lastIndexOf("@"));
    }
    return paramContext.getResources().getIdentifier(paramString, "drawable", paramContext.getPackageName());
  }
  
  public static AlertDialog.Builder a(Context paramContext, int paramInt1, int paramInt2)
  {
    return c(paramContext, null, null).setMessage(paramInt2).setTitle(paramInt1);
  }
  
  public static Pair<Integer, Integer> a(Resources paramResources, int paramInt)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    inJustDecodeBounds = true;
    BitmapFactory.decodeResource(paramResources, paramInt, localOptions);
    return new Pair(Integer.valueOf(outWidth), Integer.valueOf(outHeight));
  }
  
  public static View a(View paramView, int paramInt1, int paramInt2)
  {
    View localView = paramView.findViewById(paramInt1);
    if (localView == null)
    {
      paramView = (ViewStub)paramView.findViewById(paramInt2);
      if (paramView != null)
      {
        paramView = paramView.inflate();
        if (paramView.getId() != paramInt1) {
          paramView.setId(paramInt1);
        }
        return paramView;
      }
    }
    return localView;
  }
  
  public static LinearLayout.LayoutParams a()
  {
    return new LinearLayout.LayoutParams(-1, -2);
  }
  
  public static cq a(View paramView)
  {
    cq localcq = new cq();
    a = paramView.getPaddingLeft();
    b = paramView.getPaddingTop();
    c = paramView.getPaddingRight();
    d = paramView.getPaddingBottom();
    return localcq;
  }
  
  private static String a(Context paramContext, float paramFloat)
  {
    Object localObject = Float.valueOf(paramFloat);
    if (Math.floor(paramFloat) == paramFloat) {
      localObject = Integer.valueOf((int)paramFloat);
    }
    int i = Math.round(paramFloat);
    if (paramFloat < 1.0F) {
      i = 0;
    }
    return paramContext.getResources().getQuantityString(j.star_rating, i, new Object[] { localObject });
  }
  
  public static String a(Exception paramException)
  {
    if (paramException != null)
    {
      StringWriter localStringWriter = new StringWriter();
      paramException.printStackTrace(new PrintWriter(localStringWriter));
      return localStringWriter.toString();
    }
    return "";
  }
  
  public static void a(Context paramContext, CharSequence paramCharSequence)
  {
    a(paramContext, "", paramCharSequence);
  }
  
  public static void a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    b(paramContext, paramCharSequence1, paramCharSequence2).show();
  }
  
  public static void a(Context paramContext, StringBuilder paramStringBuilder)
  {
    a(paramContext.getFilesDir().getAbsolutePath(), paramStringBuilder, "");
  }
  
  public static void a(View paramView, int paramInt)
  {
    cq localcq = a(paramView);
    paramView.setBackgroundResource(paramInt);
    a(paramView, localcq);
  }
  
  @TargetApi(16)
  public static void a(View paramView, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener)
  {
    if (Build.VERSION.SDK_INT < 16)
    {
      paramView.getViewTreeObserver().removeGlobalOnLayoutListener(paramOnGlobalLayoutListener);
      return;
    }
    paramView.getViewTreeObserver().removeOnGlobalLayoutListener(paramOnGlobalLayoutListener);
  }
  
  public static void a(View paramView, cq paramcq)
  {
    paramView.setPadding(a, b, c, d);
  }
  
  public static void a(ImageView paramImageView, float paramFloat)
  {
    paramImageView.setImageLevel((int)(10.0F * paramFloat) / 5);
    paramImageView.setContentDescription(a(paramImageView.getContext(), paramFloat));
  }
  
  public static void a(LinearLayout paramLinearLayout)
  {
    Display localDisplay = ((WindowManager)paramLinearLayout.getContext().getSystemService("window")).getDefaultDisplay();
    paramLinearLayout.setMinimumWidth(localDisplay.getWidth() - 30);
    paramLinearLayout.setMinimumHeight(localDisplay.getHeight() - 40);
  }
  
  public static void a(ListView paramListView, int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {
      if (paramListView.getFirstVisiblePosition() <= paramInt) {
        paramInt -= 1;
      }
    }
    for (;;)
    {
      paramListView.setSelection(paramInt);
      return;
      paramInt += 1;
    }
  }
  
  public static void a(TextView paramTextView, float paramFloat)
  {
    Drawable[] arrayOfDrawable = paramTextView.getCompoundDrawables();
    int j = arrayOfDrawable.length;
    int i = 0;
    while (i < j)
    {
      Drawable localDrawable = arrayOfDrawable[i];
      if (localDrawable != null) {
        localDrawable.setLevel((int)(10.0F * paramFloat) / 5);
      }
      i += 1;
    }
    paramTextView.setContentDescription(String.format("%s,%s", new Object[] { a(paramTextView.getContext(), paramFloat), paramTextView.getText() }));
  }
  
  private static void a(String paramString1, StringBuilder paramStringBuilder, String paramString2)
  {
    File localFile = new File(paramString1);
    paramStringBuilder.append(paramString2);
    paramStringBuilder.append(paramString1);
    if (localFile.isDirectory())
    {
      paramString1 = " [directory]";
      paramStringBuilder.append(paramString1);
      if (!localFile.canRead()) {
        break label213;
      }
      paramString1 = " [read] ";
      label52:
      paramStringBuilder.append(paramString1);
      if (!localFile.canWrite()) {
        break label220;
      }
    }
    label213:
    label220:
    for (paramString1 = "[write]";; paramString1 = "[no-write]")
    {
      paramStringBuilder.append(paramString1);
      if (localFile.isFile()) {
        paramStringBuilder.append(" [size=" + localFile.length() + "]");
      }
      paramStringBuilder.append("\n");
      paramString1 = localFile.list();
      if (paramString1 == null) {
        return;
      }
      int i = 0;
      while (i < paramString1.length)
      {
        a(localFile.getAbsolutePath() + "/" + paramString1[i], paramStringBuilder, paramString2 + "  ");
        i += 1;
      }
      paramString1 = " [not-directory]";
      break;
      paramString1 = " [no-read]";
      break label52;
    }
  }
  
  public static boolean a(Context paramContext, ImageView paramImageView, String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramString != null)
    {
      int i = a(paramContext, paramString);
      bool1 = bool2;
      if (i != 0)
      {
        paramString = new BitmapFactory.Options();
        inScaled = false;
        paramImageView.setImageBitmap(BitmapFactory.decodeResource(paramContext.getResources(), i, paramString));
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static boolean a(KeyEvent paramKeyEvent)
  {
    return (paramKeyEvent != null) && (paramKeyEvent.getAction() == 0);
  }
  
  public static int b(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    Point localPoint = new Point();
    paramContext.getSize(localPoint);
    return y;
  }
  
  public static AlertDialog b(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    return new AlertDialog.Builder(paramContext).setTitle(paramCharSequence1).setIcon(0).setMessage(paramCharSequence2).setCancelable(true).setPositiveButton(17039370, null).create();
  }
  
  public static LinearLayout.LayoutParams b()
  {
    return new LinearLayout.LayoutParams(-2, -2);
  }
  
  public static void b(View paramView)
  {
    ((InputMethodManager)paramView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
  }
  
  public static void b(View paramView, int paramInt)
  {
    paramView.setAlpha(paramInt * 0.003921569F);
  }
  
  public static AlertDialog.Builder c(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    return new AlertDialog.Builder(paramContext).setMessage(paramCharSequence2).setTitle(paramCharSequence1).setCancelable(true).setPositiveButton(17039370, null).setIcon(17301543);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */