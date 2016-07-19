package com.yelp.android.ui.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.SpannableStringBuilder;
import android.text.style.StyleSpan;
import android.util.Pair;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import com.bumptech.glide.load.resource.bitmap.d;
import com.yelp.android.appdata.f;
import com.yelp.android.co.a.i;
import com.yelp.android.x.c;

public class ar
{
  public static int a(Context paramContext)
  {
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    Point localPoint = new Point();
    paramContext.getSize(localPoint);
    return x;
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
    str = paramString;
    if (paramString.matches("^[0-9]+x[0-9]+_.*"))
    {
      paramString = paramString.split("_", 2);
      str = paramString[1] + "_" + paramString[0];
    }
    return paramContext.getResources().getIdentifier(str, "drawable", paramContext.getPackageName());
  }
  
  public static AlertDialog.Builder a(Context paramContext, int paramInt1, int paramInt2)
  {
    return c(paramContext, null, null).setMessage(paramInt2).setTitle(paramInt1);
  }
  
  @TargetApi(17)
  public static Bitmap a(Context paramContext, Bitmap paramBitmap, float paramFloat)
  {
    return b(paramContext, paramBitmap.copy(Bitmap.Config.ARGB_8888, true), paramFloat);
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
  
  public static d a(final Context paramContext, final float paramFloat)
  {
    new d(paramContext)
    {
      protected Bitmap a(c paramAnonymousc, Bitmap paramAnonymousBitmap, int paramAnonymousInt1, int paramAnonymousInt2)
      {
        if ((paramFloat <= 0.0F) || (paramFloat > 25.0F)) {
          throw new IllegalArgumentException("Blur radius must be between 0 and 25. Was: " + paramFloat);
        }
        return ar.a(paramContext, paramAnonymousBitmap, paramFloat);
      }
      
      public String a()
      {
        return "BitmapBlurTransformation";
      }
    };
  }
  
  public static a a(View paramView)
  {
    a locala = new a();
    a = paramView.getPaddingLeft();
    b = paramView.getPaddingTop();
    c = paramView.getPaddingRight();
    d = paramView.getPaddingBottom();
    return locala;
  }
  
  public static CharSequence a(String paramString1, String paramString2)
  {
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(paramString2);
    int i = paramString2.indexOf(paramString1);
    if (i != -1)
    {
      int j = paramString1.length();
      localSpannableStringBuilder.setSpan(new StyleSpan(1), i, j + i, 33);
    }
    return localSpannableStringBuilder;
  }
  
  private static String a(Context paramContext, double paramDouble)
  {
    Object localObject = Double.valueOf(paramDouble);
    if (Math.floor(paramDouble) == paramDouble) {
      localObject = Integer.valueOf((int)paramDouble);
    }
    int i = (int)Math.round(paramDouble);
    if (paramDouble < 1.0D) {
      i = 0;
    }
    return paramContext.getResources().getQuantityString(a.i.star_rating, i, new Object[] { localObject });
  }
  
  @TargetApi(16)
  public static void a(Activity paramActivity)
  {
    if (f.a(16))
    {
      paramActivity.getWindow().getDecorView().setSystemUiVisibility(4);
      return;
    }
    paramActivity.getWindow().setFlags(1024, 1024);
  }
  
  public static void a(Dialog paramDialog)
  {
    paramDialog.getWindow().clearFlags(131080);
  }
  
  public static void a(Context paramContext, CharSequence paramCharSequence)
  {
    a(paramContext, "", paramCharSequence);
  }
  
  public static void a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    b(paramContext, paramCharSequence1, paramCharSequence2).show();
  }
  
  public static void a(View paramView, int paramInt)
  {
    a locala = a(paramView);
    paramView.setBackgroundResource(paramInt);
    a(paramView, locala);
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
  
  public static void a(View paramView, a parama)
  {
    paramView.setPadding(a, b, c, d);
  }
  
  public static void a(ImageView paramImageView, double paramDouble)
  {
    paramImageView.setImageLevel((int)(10.0D * paramDouble) / 5);
    paramImageView.setContentDescription(a(paramImageView.getContext(), paramDouble));
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
  
  public static void a(TextView paramTextView, double paramDouble)
  {
    Drawable[] arrayOfDrawable = paramTextView.getCompoundDrawables();
    int j = arrayOfDrawable.length;
    int i = 0;
    while (i < j)
    {
      Drawable localDrawable = arrayOfDrawable[i];
      if (localDrawable != null) {
        localDrawable.setLevel((int)(10.0D * paramDouble) / 5);
      }
      i += 1;
    }
    paramTextView.setContentDescription(String.format("%s,%s", new Object[] { a(paramTextView.getContext(), paramDouble), paramTextView.getText() }));
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
  
  @TargetApi(17)
  private static Bitmap b(Context paramContext, Bitmap paramBitmap, float paramFloat)
  {
    Object localObject = RenderScript.create(paramContext);
    paramContext = ScriptIntrinsicBlur.create((RenderScript)localObject, Element.U8_4((RenderScript)localObject));
    Allocation localAllocation = Allocation.createFromBitmap((RenderScript)localObject, paramBitmap);
    localObject = Allocation.createFromBitmap((RenderScript)localObject, paramBitmap);
    paramContext.setRadius(paramFloat);
    paramContext.setInput(localAllocation);
    paramContext.forEach((Allocation)localObject);
    ((Allocation)localObject).copyTo(paramBitmap);
    return paramBitmap;
  }
  
  public static LinearLayout.LayoutParams b()
  {
    return new LinearLayout.LayoutParams(-2, -2);
  }
  
  public static void b(Activity paramActivity)
  {
    paramActivity.getWindow().getDecorView().setSystemUiVisibility(0);
  }
  
  public static void b(View paramView)
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)paramView.getContext().getSystemService("input_method");
    paramView.requestFocus();
    localInputMethodManager.showSoftInput(paramView, 2);
  }
  
  public static void b(View paramView, int paramInt)
  {
    paramView.setAlpha(paramInt * 0.003921569F);
  }
  
  public static AlertDialog.Builder c(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    return new AlertDialog.Builder(paramContext).setMessage(paramCharSequence2).setTitle(paramCharSequence1).setCancelable(true).setPositiveButton(17039370, null).setIcon(17301543);
  }
  
  @TargetApi(21)
  public static void c(Activity paramActivity)
  {
    paramActivity.getWindow().getDecorView().setSystemUiVisibility(1280);
    if (f.a(21)) {
      paramActivity.getWindow().setStatusBarColor(0);
    }
  }
  
  public static void c(View paramView)
  {
    ((InputMethodManager)paramView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
  }
  
  public static class a
  {
    public int a;
    public int b;
    public int c;
    public int d;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */