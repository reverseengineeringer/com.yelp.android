package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ai;
import android.support.v4.view.az;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.ImageView;
import com.yelp.android.a.a.d;
import com.yelp.android.a.a.h;
import com.yelp.android.a.a.i;
import java.util.List;

@CoordinatorLayout.b(a=Behavior.class)
public class FloatingActionButton
  extends ImageView
{
  private ColorStateList a;
  private PorterDuff.Mode b;
  private int c;
  private int d;
  private int e;
  private int f;
  private final Rect g = new Rect();
  private final i h;
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public FloatingActionButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, a.i.FloatingActionButton, paramInt, a.h.Widget_Design_FloatingActionButton);
    paramContext = paramAttributeSet.getDrawable(a.i.FloatingActionButton_android_background);
    a = paramAttributeSet.getColorStateList(a.i.FloatingActionButton_backgroundTint);
    b = a(paramAttributeSet.getInt(a.i.FloatingActionButton_backgroundTintMode, -1), null);
    d = paramAttributeSet.getColor(a.i.FloatingActionButton_rippleColor, 0);
    e = paramAttributeSet.getInt(a.i.FloatingActionButton_fabSize, 0);
    c = paramAttributeSet.getDimensionPixelSize(a.i.FloatingActionButton_borderWidth, 0);
    float f1 = paramAttributeSet.getDimension(a.i.FloatingActionButton_elevation, 0.0F);
    float f2 = paramAttributeSet.getDimension(a.i.FloatingActionButton_pressedTranslationZ, 0.0F);
    paramAttributeSet.recycle();
    paramAttributeSet = new m()
    {
      public float a()
      {
        return getSizeDimension() / 2.0F;
      }
      
      public void a(int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
      {
        FloatingActionButton.a(FloatingActionButton.this).set(paramAnonymousInt1, paramAnonymousInt2, paramAnonymousInt3, paramAnonymousInt4);
        setPadding(FloatingActionButton.b(FloatingActionButton.this) + paramAnonymousInt1, FloatingActionButton.b(FloatingActionButton.this) + paramAnonymousInt2, FloatingActionButton.b(FloatingActionButton.this) + paramAnonymousInt3, FloatingActionButton.b(FloatingActionButton.this) + paramAnonymousInt4);
      }
      
      public void a(Drawable paramAnonymousDrawable)
      {
        FloatingActionButton.a(FloatingActionButton.this, paramAnonymousDrawable);
      }
    };
    paramInt = Build.VERSION.SDK_INT;
    if (paramInt >= 21) {
      h = new j(this, paramAttributeSet);
    }
    for (;;)
    {
      paramInt = (int)getResources().getDimension(a.d.design_fab_content_size);
      f = ((getSizeDimension() - paramInt) / 2);
      h.a(paramContext, a, b, d, c);
      h.a(f1);
      h.b(f2);
      setClickable(true);
      return;
      if (paramInt >= 12) {
        h = new h(this, paramAttributeSet);
      } else {
        h = new g(this, paramAttributeSet);
      }
    }
  }
  
  private static int a(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt2);
    paramInt2 = View.MeasureSpec.getSize(paramInt2);
    switch (i)
    {
    case 0: 
    default: 
      return paramInt1;
    case -2147483648: 
      return Math.min(paramInt1, paramInt2);
    }
    return paramInt2;
  }
  
  static PorterDuff.Mode a(int paramInt, PorterDuff.Mode paramMode)
  {
    switch (paramInt)
    {
    default: 
      return paramMode;
    case 3: 
      return PorterDuff.Mode.SRC_OVER;
    case 5: 
      return PorterDuff.Mode.SRC_IN;
    case 9: 
      return PorterDuff.Mode.SRC_ATOP;
    case 14: 
      return PorterDuff.Mode.MULTIPLY;
    }
    return PorterDuff.Mode.SCREEN;
  }
  
  public void a()
  {
    h.c();
  }
  
  public void b()
  {
    h.b();
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    h.a(getDrawableState());
  }
  
  public ColorStateList getBackgroundTintList()
  {
    return a;
  }
  
  public PorterDuff.Mode getBackgroundTintMode()
  {
    return b;
  }
  
  final int getSizeDimension()
  {
    switch (e)
    {
    default: 
      return getResources().getDimensionPixelSize(a.d.design_fab_size_normal);
    }
    return getResources().getDimensionPixelSize(a.d.design_fab_size_mini);
  }
  
  @TargetApi(11)
  public void jumpDrawablesToCurrentState()
  {
    super.jumpDrawablesToCurrentState();
    h.a();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = getSizeDimension();
    paramInt1 = Math.min(a(i, paramInt1), a(i, paramInt2));
    setMeasuredDimension(g.left + paramInt1 + g.right, paramInt1 + g.top + g.bottom);
  }
  
  public void setBackgroundDrawable(Drawable paramDrawable)
  {
    if (h != null) {
      h.a(paramDrawable, a, b, d, c);
    }
  }
  
  public void setBackgroundTintList(ColorStateList paramColorStateList)
  {
    if (a != paramColorStateList)
    {
      a = paramColorStateList;
      h.a(paramColorStateList);
    }
  }
  
  public void setBackgroundTintMode(PorterDuff.Mode paramMode)
  {
    if (b != paramMode)
    {
      b = paramMode;
      h.a(paramMode);
    }
  }
  
  public void setRippleColor(int paramInt)
  {
    if (d != paramInt)
    {
      d = paramInt;
      h.a(paramInt);
    }
  }
  
  public static class Behavior
    extends CoordinatorLayout.Behavior<FloatingActionButton>
  {
    private static final boolean a;
    private Rect b;
    
    static
    {
      if (Build.VERSION.SDK_INT >= 11) {}
      for (boolean bool = true;; bool = false)
      {
        a = bool;
        return;
      }
    }
    
    private float a(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton)
    {
      float f = 0.0F;
      List localList = paramCoordinatorLayout.d(paramFloatingActionButton);
      int j = localList.size();
      int i = 0;
      if (i < j)
      {
        View localView = (View)localList.get(i);
        if ((!(localView instanceof Snackbar.SnackbarLayout)) || (!paramCoordinatorLayout.a(paramFloatingActionButton, localView))) {
          break label88;
        }
        f = Math.min(f, ai.p(localView) - localView.getHeight());
      }
      label88:
      for (;;)
      {
        i += 1;
        break;
        return f;
      }
    }
    
    private boolean a(CoordinatorLayout paramCoordinatorLayout, AppBarLayout paramAppBarLayout, FloatingActionButton paramFloatingActionButton)
    {
      if (((CoordinatorLayout.d)paramFloatingActionButton.getLayoutParams()).a() != paramAppBarLayout.getId()) {
        return false;
      }
      if (b == null) {
        b = new Rect();
      }
      Rect localRect = b;
      s.b(paramCoordinatorLayout, paramAppBarLayout, localRect);
      if (bottom <= paramAppBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
        paramFloatingActionButton.b();
      }
      for (;;)
      {
        return true;
        paramFloatingActionButton.a();
      }
    }
    
    private void b(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton)
    {
      int j = 0;
      Rect localRect = FloatingActionButton.a(paramFloatingActionButton);
      CoordinatorLayout.d locald;
      int i;
      if ((localRect != null) && (localRect.centerX() > 0) && (localRect.centerY() > 0))
      {
        locald = (CoordinatorLayout.d)paramFloatingActionButton.getLayoutParams();
        if (paramFloatingActionButton.getRight() < paramCoordinatorLayout.getWidth() - rightMargin) {
          break label98;
        }
        i = right;
      }
      for (;;)
      {
        if (paramFloatingActionButton.getBottom() >= paramCoordinatorLayout.getBottom() - bottomMargin) {
          j = bottom;
        }
        for (;;)
        {
          paramFloatingActionButton.offsetTopAndBottom(j);
          paramFloatingActionButton.offsetLeftAndRight(i);
          return;
          label98:
          if (paramFloatingActionButton.getLeft() > leftMargin) {
            break label143;
          }
          i = -left;
          break;
          if (paramFloatingActionButton.getTop() <= topMargin) {
            j = -top;
          }
        }
        label143:
        i = 0;
      }
    }
    
    private void d(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, View paramView)
    {
      if (paramFloatingActionButton.getVisibility() != 0) {
        return;
      }
      ai.b(paramFloatingActionButton, a(paramCoordinatorLayout, paramFloatingActionButton));
    }
    
    public boolean a(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, int paramInt)
    {
      List localList = paramCoordinatorLayout.d(paramFloatingActionButton);
      int j = localList.size();
      int i = 0;
      for (;;)
      {
        if (i < j)
        {
          View localView = (View)localList.get(i);
          if ((!(localView instanceof AppBarLayout)) || (!a(paramCoordinatorLayout, (AppBarLayout)localView, paramFloatingActionButton))) {}
        }
        else
        {
          paramCoordinatorLayout.a(paramFloatingActionButton, paramInt);
          b(paramCoordinatorLayout, paramFloatingActionButton);
          return true;
        }
        i += 1;
      }
    }
    
    public boolean a(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, View paramView)
    {
      return (a) && ((paramView instanceof Snackbar.SnackbarLayout));
    }
    
    public boolean b(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, View paramView)
    {
      if ((paramView instanceof Snackbar.SnackbarLayout)) {
        d(paramCoordinatorLayout, paramFloatingActionButton, paramView);
      }
      for (;;)
      {
        return false;
        if ((paramView instanceof AppBarLayout)) {
          a(paramCoordinatorLayout, (AppBarLayout)paramView, paramFloatingActionButton);
        }
      }
    }
    
    public void c(CoordinatorLayout paramCoordinatorLayout, FloatingActionButton paramFloatingActionButton, View paramView)
    {
      if (((paramView instanceof Snackbar.SnackbarLayout)) && (ai.p(paramFloatingActionButton) != 0.0F)) {
        ai.s(paramFloatingActionButton).c(0.0F).d(1.0F).e(1.0F).a(1.0F).a(a.b).a(null);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.FloatingActionButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */