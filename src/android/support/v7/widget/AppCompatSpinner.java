package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.database.DataSetObserver;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.af;
import android.support.v4.view.ai;
import android.support.v7.internal.widget.o;
import android.support.v7.internal.widget.r;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;
import com.yelp.android.j.a.a;

public class AppCompatSpinner
  extends Spinner
  implements af
{
  private static final boolean a;
  private static final boolean b;
  private static final int[] c;
  private o d;
  private b e;
  private Context f;
  private ListPopupWindow.b g;
  private SpinnerAdapter h;
  private boolean i;
  private b j;
  private int k;
  private final Rect l;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      bool = true;
      a = bool;
      if (Build.VERSION.SDK_INT < 16) {
        break label45;
      }
    }
    label45:
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      c = new int[] { 16843505 };
      return;
      bool = false;
      break;
    }
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.a.spinnerStyle);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    this(paramContext, paramAttributeSet, paramInt, -1);
  }
  
  public AppCompatSpinner(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    this(paramContext, paramAttributeSet, paramInt1, paramInt2, null);
  }
  
  /* Error */
  public AppCompatSpinner(final Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2, Resources.Theme paramTheme)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: iload_3
    //   4: invokespecial 74	android/widget/Spinner:<init>	(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   7: aload_0
    //   8: new 76	android/graphics/Rect
    //   11: dup
    //   12: invokespecial 78	android/graphics/Rect:<init>	()V
    //   15: putfield 80	android/support/v7/widget/AppCompatSpinner:l	Landroid/graphics/Rect;
    //   18: aload_1
    //   19: aload_2
    //   20: getstatic 85	com/yelp/android/j/a$k:Spinner	[I
    //   23: iload_3
    //   24: iconst_0
    //   25: invokestatic 90	android/support/v7/internal/widget/p:a	(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/p;
    //   28: astore 9
    //   30: aload_0
    //   31: aload 9
    //   33: invokevirtual 93	android/support/v7/internal/widget/p:c	()Landroid/support/v7/internal/widget/o;
    //   36: putfield 95	android/support/v7/widget/AppCompatSpinner:d	Landroid/support/v7/internal/widget/o;
    //   39: aload_0
    //   40: new 97	android/support/v7/widget/b
    //   43: dup
    //   44: aload_0
    //   45: aload_0
    //   46: getfield 95	android/support/v7/widget/AppCompatSpinner:d	Landroid/support/v7/internal/widget/o;
    //   49: invokespecial 100	android/support/v7/widget/b:<init>	(Landroid/view/View;Landroid/support/v7/internal/widget/o;)V
    //   52: putfield 102	android/support/v7/widget/AppCompatSpinner:e	Landroid/support/v7/widget/b;
    //   55: aload 5
    //   57: ifnull +238 -> 295
    //   60: aload_0
    //   61: new 104	com/yelp/android/p/b
    //   64: dup
    //   65: aload_1
    //   66: aload 5
    //   68: invokespecial 107	com/yelp/android/p/b:<init>	(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    //   71: putfield 109	android/support/v7/widget/AppCompatSpinner:f	Landroid/content/Context;
    //   74: aload_0
    //   75: getfield 109	android/support/v7/widget/AppCompatSpinner:f	Landroid/content/Context;
    //   78: ifnull +177 -> 255
    //   81: iload 4
    //   83: istore 7
    //   85: iload 4
    //   87: iconst_m1
    //   88: if_icmpne +69 -> 157
    //   91: getstatic 47	android/os/Build$VERSION:SDK_INT	I
    //   94: bipush 11
    //   96: if_icmplt +308 -> 404
    //   99: aload_1
    //   100: aload_2
    //   101: getstatic 54	android/support/v7/widget/AppCompatSpinner:c	[I
    //   104: iload_3
    //   105: iconst_0
    //   106: invokevirtual 115	android/content/Context:obtainStyledAttributes	(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    //   109: astore 5
    //   111: iload 4
    //   113: istore 6
    //   115: aload 5
    //   117: astore_1
    //   118: aload 5
    //   120: iconst_0
    //   121: invokevirtual 121	android/content/res/TypedArray:hasValue	(I)Z
    //   124: ifeq +15 -> 139
    //   127: aload 5
    //   129: astore_1
    //   130: aload 5
    //   132: iconst_0
    //   133: iconst_0
    //   134: invokevirtual 125	android/content/res/TypedArray:getInt	(II)I
    //   137: istore 6
    //   139: iload 6
    //   141: istore 7
    //   143: aload 5
    //   145: ifnull +12 -> 157
    //   148: aload 5
    //   150: invokevirtual 128	android/content/res/TypedArray:recycle	()V
    //   153: iload 6
    //   155: istore 7
    //   157: iload 7
    //   159: iconst_1
    //   160: if_icmpne +95 -> 255
    //   163: new 13	android/support/v7/widget/AppCompatSpinner$b
    //   166: dup
    //   167: aload_0
    //   168: aload_0
    //   169: getfield 109	android/support/v7/widget/AppCompatSpinner:f	Landroid/content/Context;
    //   172: aload_2
    //   173: iload_3
    //   174: invokespecial 131	android/support/v7/widget/AppCompatSpinner$b:<init>	(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    //   177: astore_1
    //   178: aload_0
    //   179: getfield 109	android/support/v7/widget/AppCompatSpinner:f	Landroid/content/Context;
    //   182: aload_2
    //   183: getstatic 85	com/yelp/android/j/a$k:Spinner	[I
    //   186: iload_3
    //   187: iconst_0
    //   188: invokestatic 90	android/support/v7/internal/widget/p:a	(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/p;
    //   191: astore 5
    //   193: aload_0
    //   194: aload 5
    //   196: getstatic 134	com/yelp/android/j/a$k:Spinner_android_dropDownWidth	I
    //   199: bipush -2
    //   201: invokevirtual 136	android/support/v7/internal/widget/p:f	(II)I
    //   204: putfield 138	android/support/v7/widget/AppCompatSpinner:k	I
    //   207: aload_1
    //   208: aload 5
    //   210: getstatic 141	com/yelp/android/j/a$k:Spinner_android_popupBackground	I
    //   213: invokevirtual 144	android/support/v7/internal/widget/p:a	(I)Landroid/graphics/drawable/Drawable;
    //   216: invokevirtual 147	android/support/v7/widget/AppCompatSpinner$b:a	(Landroid/graphics/drawable/Drawable;)V
    //   219: aload_1
    //   220: aload 9
    //   222: getstatic 150	com/yelp/android/j/a$k:Spinner_android_prompt	I
    //   225: invokevirtual 153	android/support/v7/internal/widget/p:d	(I)Ljava/lang/String;
    //   228: invokevirtual 156	android/support/v7/widget/AppCompatSpinner$b:a	(Ljava/lang/CharSequence;)V
    //   231: aload 5
    //   233: invokevirtual 158	android/support/v7/internal/widget/p:b	()V
    //   236: aload_0
    //   237: aload_1
    //   238: putfield 160	android/support/v7/widget/AppCompatSpinner:j	Landroid/support/v7/widget/AppCompatSpinner$b;
    //   241: aload_0
    //   242: new 8	android/support/v7/widget/AppCompatSpinner$1
    //   245: dup
    //   246: aload_0
    //   247: aload_0
    //   248: aload_1
    //   249: invokespecial 163	android/support/v7/widget/AppCompatSpinner$1:<init>	(Landroid/support/v7/widget/AppCompatSpinner;Landroid/view/View;Landroid/support/v7/widget/AppCompatSpinner$b;)V
    //   252: putfield 165	android/support/v7/widget/AppCompatSpinner:g	Landroid/support/v7/widget/ListPopupWindow$b;
    //   255: aload 9
    //   257: invokevirtual 158	android/support/v7/internal/widget/p:b	()V
    //   260: aload_0
    //   261: iconst_1
    //   262: putfield 167	android/support/v7/widget/AppCompatSpinner:i	Z
    //   265: aload_0
    //   266: getfield 169	android/support/v7/widget/AppCompatSpinner:h	Landroid/widget/SpinnerAdapter;
    //   269: ifnull +16 -> 285
    //   272: aload_0
    //   273: aload_0
    //   274: getfield 169	android/support/v7/widget/AppCompatSpinner:h	Landroid/widget/SpinnerAdapter;
    //   277: invokevirtual 173	android/support/v7/widget/AppCompatSpinner:setAdapter	(Landroid/widget/SpinnerAdapter;)V
    //   280: aload_0
    //   281: aconst_null
    //   282: putfield 169	android/support/v7/widget/AppCompatSpinner:h	Landroid/widget/SpinnerAdapter;
    //   285: aload_0
    //   286: getfield 102	android/support/v7/widget/AppCompatSpinner:e	Landroid/support/v7/widget/b;
    //   289: aload_2
    //   290: iload_3
    //   291: invokevirtual 176	android/support/v7/widget/b:a	(Landroid/util/AttributeSet;I)V
    //   294: return
    //   295: aload 9
    //   297: getstatic 179	com/yelp/android/j/a$k:Spinner_popupTheme	I
    //   300: iconst_0
    //   301: invokevirtual 181	android/support/v7/internal/widget/p:g	(II)I
    //   304: istore 6
    //   306: iload 6
    //   308: ifeq +20 -> 328
    //   311: aload_0
    //   312: new 104	com/yelp/android/p/b
    //   315: dup
    //   316: aload_1
    //   317: iload 6
    //   319: invokespecial 184	com/yelp/android/p/b:<init>	(Landroid/content/Context;I)V
    //   322: putfield 109	android/support/v7/widget/AppCompatSpinner:f	Landroid/content/Context;
    //   325: goto -251 -> 74
    //   328: getstatic 49	android/support/v7/widget/AppCompatSpinner:a	Z
    //   331: ifne +15 -> 346
    //   334: aload_1
    //   335: astore 5
    //   337: aload_0
    //   338: aload 5
    //   340: putfield 109	android/support/v7/widget/AppCompatSpinner:f	Landroid/content/Context;
    //   343: goto -269 -> 74
    //   346: aconst_null
    //   347: astore 5
    //   349: goto -12 -> 337
    //   352: astore 8
    //   354: aconst_null
    //   355: astore 5
    //   357: aload 5
    //   359: astore_1
    //   360: ldc -70
    //   362: ldc -68
    //   364: aload 8
    //   366: invokestatic 193	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   369: pop
    //   370: iload 4
    //   372: istore 7
    //   374: aload 5
    //   376: ifnull -219 -> 157
    //   379: aload 5
    //   381: invokevirtual 128	android/content/res/TypedArray:recycle	()V
    //   384: iload 4
    //   386: istore 7
    //   388: goto -231 -> 157
    //   391: astore_2
    //   392: aconst_null
    //   393: astore_1
    //   394: aload_1
    //   395: ifnull +7 -> 402
    //   398: aload_1
    //   399: invokevirtual 128	android/content/res/TypedArray:recycle	()V
    //   402: aload_2
    //   403: athrow
    //   404: iconst_1
    //   405: istore 7
    //   407: goto -250 -> 157
    //   410: astore_2
    //   411: goto -17 -> 394
    //   414: astore 8
    //   416: goto -59 -> 357
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	419	0	this	AppCompatSpinner
    //   0	419	1	paramContext	Context
    //   0	419	2	paramAttributeSet	AttributeSet
    //   0	419	3	paramInt1	int
    //   0	419	4	paramInt2	int
    //   0	419	5	paramTheme	Resources.Theme
    //   113	205	6	m	int
    //   83	323	7	n	int
    //   352	13	8	localException1	Exception
    //   414	1	8	localException2	Exception
    //   28	268	9	localp	android.support.v7.internal.widget.p
    // Exception table:
    //   from	to	target	type
    //   99	111	352	java/lang/Exception
    //   99	111	391	finally
    //   118	127	410	finally
    //   130	139	410	finally
    //   360	370	410	finally
    //   118	127	414	java/lang/Exception
    //   130	139	414	java/lang/Exception
  }
  
  private int a(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable)
  {
    if (paramSpinnerAdapter == null) {
      return 0;
    }
    int i3 = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
    int i4 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
    int m = Math.max(0, getSelectedItemPosition());
    int i5 = Math.min(paramSpinnerAdapter.getCount(), m + 15);
    int n = Math.max(0, m - (15 - (i5 - m)));
    View localView = null;
    int i1 = 0;
    m = 0;
    if (n < i5)
    {
      int i2 = paramSpinnerAdapter.getItemViewType(n);
      if (i2 == m) {
        break label204;
      }
      localView = null;
      m = i2;
    }
    label204:
    for (;;)
    {
      localView = paramSpinnerAdapter.getView(n, localView, this);
      if (localView.getLayoutParams() == null) {
        localView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      }
      localView.measure(i3, i4);
      i1 = Math.max(i1, localView.getMeasuredWidth());
      n += 1;
      break;
      if (paramDrawable != null)
      {
        paramDrawable.getPadding(l);
        return l.left + l.right + i1;
      }
      return i1;
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if (e != null) {
      e.c();
    }
  }
  
  public int getDropDownHorizontalOffset()
  {
    if (j != null) {
      return j.f();
    }
    if (b) {
      return super.getDropDownHorizontalOffset();
    }
    return 0;
  }
  
  public int getDropDownVerticalOffset()
  {
    if (j != null) {
      return j.g();
    }
    if (b) {
      return super.getDropDownVerticalOffset();
    }
    return 0;
  }
  
  public int getDropDownWidth()
  {
    if (j != null) {
      return k;
    }
    if (b) {
      return super.getDropDownWidth();
    }
    return 0;
  }
  
  public Drawable getPopupBackground()
  {
    if (j != null) {
      return j.d();
    }
    if (b) {
      return super.getPopupBackground();
    }
    return null;
  }
  
  public Context getPopupContext()
  {
    if (j != null) {
      return f;
    }
    if (a) {
      return super.getPopupContext();
    }
    return null;
  }
  
  public CharSequence getPrompt()
  {
    if (j != null) {
      return j.a();
    }
    return super.getPrompt();
  }
  
  public ColorStateList getSupportBackgroundTintList()
  {
    if (e != null) {
      return e.a();
    }
    return null;
  }
  
  public PorterDuff.Mode getSupportBackgroundTintMode()
  {
    if (e != null) {
      return e.b();
    }
    return null;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((j != null) && (j.k())) {
      j.i();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((j != null) && (View.MeasureSpec.getMode(paramInt1) == Integer.MIN_VALUE)) {
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((g != null) && (g.onTouch(this, paramMotionEvent))) {
      return true;
    }
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public boolean performClick()
  {
    if ((j != null) && (!j.k()))
    {
      j.c();
      return true;
    }
    return super.performClick();
  }
  
  public void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    if (!i) {
      h = paramSpinnerAdapter;
    }
    do
    {
      return;
      super.setAdapter(paramSpinnerAdapter);
    } while (j == null);
    if (f == null) {}
    for (Context localContext = getContext();; localContext = f)
    {
      j.a(new a(paramSpinnerAdapter, localContext.getTheme()));
      return;
    }
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    super.setBackgroundDrawable(paramDrawable);
    if (e != null) {
      e.a(paramDrawable);
    }
  }
  
  public void setBackgroundResource(int paramInt)
  {
    super.setBackgroundResource(paramInt);
    if (e != null) {
      e.a(paramInt);
    }
  }
  
  public void setDropDownHorizontalOffset(int paramInt)
  {
    if (j != null) {
      j.b(paramInt);
    }
    while (!b) {
      return;
    }
    super.setDropDownHorizontalOffset(paramInt);
  }
  
  public void setDropDownVerticalOffset(int paramInt)
  {
    if (j != null) {
      j.c(paramInt);
    }
    while (!b) {
      return;
    }
    super.setDropDownVerticalOffset(paramInt);
  }
  
  public void setDropDownWidth(int paramInt)
  {
    if (j != null) {
      k = paramInt;
    }
    while (!b) {
      return;
    }
    super.setDropDownWidth(paramInt);
  }
  
  public void setPopupBackgroundDrawable(Drawable paramDrawable)
  {
    if (j != null) {
      j.a(paramDrawable);
    }
    while (!b) {
      return;
    }
    super.setPopupBackgroundDrawable(paramDrawable);
  }
  
  public void setPopupBackgroundResource(int paramInt)
  {
    setPopupBackgroundDrawable(getPopupContext().getDrawable(paramInt));
  }
  
  public void setPrompt(CharSequence paramCharSequence)
  {
    if (j != null)
    {
      j.a(paramCharSequence);
      return;
    }
    super.setPrompt(paramCharSequence);
  }
  
  public void setSupportBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (e != null) {
      e.a(paramColorStateList);
    }
  }
  
  public void setSupportBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (e != null) {
      e.a(paramMode);
    }
  }
  
  private static class a
    implements ListAdapter, SpinnerAdapter
  {
    private SpinnerAdapter a;
    private ListAdapter b;
    
    public a(SpinnerAdapter paramSpinnerAdapter, Resources.Theme paramTheme)
    {
      a = paramSpinnerAdapter;
      if ((paramSpinnerAdapter instanceof ListAdapter)) {
        b = ((ListAdapter)paramSpinnerAdapter);
      }
      if (paramTheme != null)
      {
        if ((!AppCompatSpinner.a()) || (!(paramSpinnerAdapter instanceof ThemedSpinnerAdapter))) {
          break label64;
        }
        paramSpinnerAdapter = (ThemedSpinnerAdapter)paramSpinnerAdapter;
        if (paramSpinnerAdapter.getDropDownViewTheme() != paramTheme) {
          paramSpinnerAdapter.setDropDownViewTheme(paramTheme);
        }
      }
      label64:
      do
      {
        do
        {
          return;
        } while (!(paramSpinnerAdapter instanceof m));
        paramSpinnerAdapter = (m)paramSpinnerAdapter;
      } while (paramSpinnerAdapter.a() != null);
      paramSpinnerAdapter.a(paramTheme);
    }
    
    public boolean areAllItemsEnabled()
    {
      ListAdapter localListAdapter = b;
      if (localListAdapter != null) {
        return localListAdapter.areAllItemsEnabled();
      }
      return true;
    }
    
    public int getCount()
    {
      if (a == null) {
        return 0;
      }
      return a.getCount();
    }
    
    public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (a == null) {
        return null;
      }
      return a.getDropDownView(paramInt, paramView, paramViewGroup);
    }
    
    public Object getItem(int paramInt)
    {
      if (a == null) {
        return null;
      }
      return a.getItem(paramInt);
    }
    
    public long getItemId(int paramInt)
    {
      if (a == null) {
        return -1L;
      }
      return a.getItemId(paramInt);
    }
    
    public int getItemViewType(int paramInt)
    {
      return 0;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      return getDropDownView(paramInt, paramView, paramViewGroup);
    }
    
    public int getViewTypeCount()
    {
      return 1;
    }
    
    public boolean hasStableIds()
    {
      return (a != null) && (a.hasStableIds());
    }
    
    public boolean isEmpty()
    {
      return getCount() == 0;
    }
    
    public boolean isEnabled(int paramInt)
    {
      ListAdapter localListAdapter = b;
      if (localListAdapter != null) {
        return localListAdapter.isEnabled(paramInt);
      }
      return true;
    }
    
    public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
    {
      if (a != null) {
        a.registerDataSetObserver(paramDataSetObserver);
      }
    }
    
    public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
    {
      if (a != null) {
        a.unregisterDataSetObserver(paramDataSetObserver);
      }
    }
  }
  
  private class b
    extends ListPopupWindow
  {
    private CharSequence c;
    private ListAdapter d;
    private final Rect e = new Rect();
    
    public b(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
    {
      super(paramAttributeSet, paramInt);
      a(AppCompatSpinner.this);
      a(true);
      a(0);
      a(new AdapterView.OnItemClickListener()
      {
        public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
        {
          setSelection(paramAnonymousInt);
          if (getOnItemClickListener() != null) {
            performItemClick(paramAnonymousView, paramAnonymousInt, AppCompatSpinner.b.a(AppCompatSpinner.b.this).getItemId(paramAnonymousInt));
          }
          i();
        }
      });
    }
    
    private boolean b(View paramView)
    {
      return (ai.F(paramView)) && (paramView.getGlobalVisibleRect(e));
    }
    
    public CharSequence a()
    {
      return c;
    }
    
    public void a(ListAdapter paramListAdapter)
    {
      super.a(paramListAdapter);
      d = paramListAdapter;
    }
    
    public void a(CharSequence paramCharSequence)
    {
      c = paramCharSequence;
    }
    
    void b()
    {
      Object localObject = d();
      int i;
      int m;
      int n;
      int i1;
      int j;
      if (localObject != null)
      {
        ((Drawable)localObject).getPadding(AppCompatSpinner.b(AppCompatSpinner.this));
        if (r.a(AppCompatSpinner.this))
        {
          i = bright;
          m = getPaddingLeft();
          n = getPaddingRight();
          i1 = getWidth();
          if (AppCompatSpinner.c(AppCompatSpinner.this) != -2) {
            break label240;
          }
          j = AppCompatSpinner.a(AppCompatSpinner.this, (SpinnerAdapter)d, d());
          int k = getContext().getResources().getDisplayMetrics().widthPixels - bleft - bright;
          if (j <= k) {
            break label288;
          }
          j = k;
        }
      }
      label165:
      label240:
      label288:
      for (;;)
      {
        f(Math.max(j, i1 - m - n));
        if (r.a(AppCompatSpinner.this)) {
          i = i1 - n - h() + i;
        }
        for (;;)
        {
          b(i);
          return;
          i = -bleft;
          break;
          localObject = AppCompatSpinner.b(AppCompatSpinner.this);
          bright = 0;
          left = 0;
          i = 0;
          break;
          if (AppCompatSpinner.c(AppCompatSpinner.this) == -1)
          {
            f(i1 - m - n);
            break label165;
          }
          f(AppCompatSpinner.c(AppCompatSpinner.this));
          break label165;
          i += m;
        }
      }
    }
    
    public void c()
    {
      boolean bool = k();
      b();
      g(2);
      super.c();
      m().setChoiceMode(1);
      h(getSelectedItemPosition());
      if (bool) {}
      ViewTreeObserver localViewTreeObserver;
      do
      {
        return;
        localViewTreeObserver = getViewTreeObserver();
      } while (localViewTreeObserver == null);
      final ViewTreeObserver.OnGlobalLayoutListener local2 = new ViewTreeObserver.OnGlobalLayoutListener()
      {
        public void onGlobalLayout()
        {
          if (!AppCompatSpinner.b.a(AppCompatSpinner.b.this, AppCompatSpinner.this))
          {
            i();
            return;
          }
          b();
          AppCompatSpinner.b.b(AppCompatSpinner.b.this);
        }
      };
      localViewTreeObserver.addOnGlobalLayoutListener(local2);
      a(new PopupWindow.OnDismissListener()
      {
        public void onDismiss()
        {
          ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
          if (localViewTreeObserver != null) {
            localViewTreeObserver.removeGlobalOnLayoutListener(local2);
          }
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AppCompatSpinner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */