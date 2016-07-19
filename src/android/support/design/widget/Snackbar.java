package android.support.design.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.support.v4.view.ai;
import android.support.v4.view.az;
import android.support.v4.view.be;
import android.text.Layout;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yelp.android.a.a.a;
import com.yelp.android.a.a.d;
import com.yelp.android.a.a.f;
import com.yelp.android.a.a.g;
import com.yelp.android.a.a.i;

public final class Snackbar
{
  private static final Handler a = new Handler(Looper.getMainLooper(), new Handler.Callback()
  {
    public boolean handleMessage(Message paramAnonymousMessage)
    {
      switch (what)
      {
      default: 
        return false;
      case 0: 
        ((Snackbar)obj).a();
        return true;
      }
      ((Snackbar)obj).a(arg1);
      return true;
    }
  });
  private final ViewGroup b;
  private final SnackbarLayout c;
  private b d;
  private final n.a e;
  
  private void b()
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      ai.b(c, c.getHeight());
      ai.s(c).c(0.0F).a(a.b).a(250L).a(new be()
      {
        public void a(View paramAnonymousView)
        {
          Snackbar.c(Snackbar.this).a(70, 180);
        }
        
        public void b(View paramAnonymousView)
        {
          if (Snackbar.d(Snackbar.this) != null) {
            Snackbar.d(Snackbar.this).a(Snackbar.this);
          }
          n.a().b(Snackbar.a(Snackbar.this));
        }
      }).c();
      return;
    }
    Animation localAnimation = AnimationUtils.loadAnimation(c.getContext(), a.a.design_snackbar_in);
    localAnimation.setInterpolator(a.b);
    localAnimation.setDuration(250L);
    localAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        if (Snackbar.d(Snackbar.this) != null) {
          Snackbar.d(Snackbar.this).a(Snackbar.this);
        }
        n.a().b(Snackbar.a(Snackbar.this));
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    c.startAnimation(localAnimation);
  }
  
  private void b(int paramInt)
  {
    n.a().a(e, paramInt);
  }
  
  private void c(final int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      ai.s(c).c(c.getHeight()).a(a.b).a(250L).a(new be()
      {
        public void a(View paramAnonymousView)
        {
          Snackbar.c(Snackbar.this).b(0, 180);
        }
        
        public void b(View paramAnonymousView)
        {
          Snackbar.b(Snackbar.this, paramInt);
        }
      }).c();
      return;
    }
    Animation localAnimation = AnimationUtils.loadAnimation(c.getContext(), a.a.design_snackbar_out);
    localAnimation.setInterpolator(a.b);
    localAnimation.setDuration(250L);
    localAnimation.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        Snackbar.b(Snackbar.this, paramInt);
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    c.startAnimation(localAnimation);
  }
  
  private boolean c()
  {
    Object localObject = c.getLayoutParams();
    if ((localObject instanceof CoordinatorLayout.d))
    {
      localObject = ((CoordinatorLayout.d)localObject).b();
      if ((localObject instanceof SwipeDismissBehavior)) {
        return ((SwipeDismissBehavior)localObject).a() != 0;
      }
    }
    return false;
  }
  
  private void d(int paramInt)
  {
    b.removeView(c);
    if (d != null) {
      d.a(this, paramInt);
    }
    n.a().a(e);
  }
  
  final void a()
  {
    if (c.getParent() == null)
    {
      ViewGroup.LayoutParams localLayoutParams = c.getLayoutParams();
      if ((localLayoutParams instanceof CoordinatorLayout.d))
      {
        a locala = new a();
        locala.a(0.1F);
        locala.b(0.6F);
        locala.a(0);
        locala.a(new SwipeDismissBehavior.a()
        {
          public void a(int paramAnonymousInt)
          {
            switch (paramAnonymousInt)
            {
            default: 
              return;
            case 1: 
            case 2: 
              n.a().c(Snackbar.a(Snackbar.this));
              return;
            }
            n.a().d(Snackbar.a(Snackbar.this));
          }
          
          public void a(View paramAnonymousView)
          {
            Snackbar.a(Snackbar.this, 0);
          }
        });
        ((CoordinatorLayout.d)localLayoutParams).a(locala);
      }
      b.addView(c);
    }
    if (ai.D(c))
    {
      b();
      return;
    }
    c.setOnLayoutChangeListener(new Snackbar.SnackbarLayout.a()
    {
      public void a(View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3, int paramAnonymousInt4)
      {
        Snackbar.b(Snackbar.this);
        Snackbar.c(Snackbar.this).setOnLayoutChangeListener(null);
      }
    });
  }
  
  final void a(int paramInt)
  {
    if ((c.getVisibility() != 0) || (c()))
    {
      d(paramInt);
      return;
    }
    c(paramInt);
  }
  
  public static class SnackbarLayout
    extends LinearLayout
  {
    private TextView a;
    private Button b;
    private int c;
    private int d;
    private a e;
    
    public SnackbarLayout(Context paramContext)
    {
      this(paramContext, null);
    }
    
    public SnackbarLayout(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, a.i.SnackbarLayout);
      c = paramAttributeSet.getDimensionPixelSize(a.i.SnackbarLayout_android_maxWidth, -1);
      d = paramAttributeSet.getDimensionPixelSize(a.i.SnackbarLayout_maxActionInlineWidth, -1);
      if (paramAttributeSet.hasValue(a.i.SnackbarLayout_elevation)) {
        ai.h(this, paramAttributeSet.getDimensionPixelSize(a.i.SnackbarLayout_elevation, 0));
      }
      paramAttributeSet.recycle();
      setClickable(true);
      LayoutInflater.from(paramContext).inflate(a.g.design_layout_snackbar_include, this);
    }
    
    private static void a(View paramView, int paramInt1, int paramInt2)
    {
      if (ai.A(paramView))
      {
        ai.b(paramView, ai.m(paramView), paramInt1, ai.n(paramView), paramInt2);
        return;
      }
      paramView.setPadding(paramView.getPaddingLeft(), paramInt1, paramView.getPaddingRight(), paramInt2);
    }
    
    private boolean a(int paramInt1, int paramInt2, int paramInt3)
    {
      boolean bool = false;
      if (paramInt1 != getOrientation())
      {
        setOrientation(paramInt1);
        bool = true;
      }
      if ((a.getPaddingTop() != paramInt2) || (a.getPaddingBottom() != paramInt3))
      {
        a(a, paramInt2, paramInt3);
        bool = true;
      }
      return bool;
    }
    
    void a(int paramInt1, int paramInt2)
    {
      ai.c(a, 0.0F);
      ai.s(a).a(1.0F).a(paramInt2).b(paramInt1).c();
      if (b.getVisibility() == 0)
      {
        ai.c(b, 0.0F);
        ai.s(b).a(1.0F).a(paramInt2).b(paramInt1).c();
      }
    }
    
    void b(int paramInt1, int paramInt2)
    {
      ai.c(a, 1.0F);
      ai.s(a).a(0.0F).a(paramInt2).b(paramInt1).c();
      if (b.getVisibility() == 0)
      {
        ai.c(b, 1.0F);
        ai.s(b).a(0.0F).a(paramInt2).b(paramInt1).c();
      }
    }
    
    Button getActionView()
    {
      return b;
    }
    
    TextView getMessageView()
    {
      return a;
    }
    
    protected void onFinishInflate()
    {
      super.onFinishInflate();
      a = ((TextView)findViewById(a.f.snackbar_text));
      b = ((Button)findViewById(a.f.snackbar_action));
    }
    
    protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      if ((paramBoolean) && (e != null)) {
        e.a(this, paramInt1, paramInt2, paramInt3, paramInt4);
      }
    }
    
    protected void onMeasure(int paramInt1, int paramInt2)
    {
      super.onMeasure(paramInt1, paramInt2);
      int i = paramInt1;
      if (c > 0)
      {
        i = paramInt1;
        if (getMeasuredWidth() > c)
        {
          i = View.MeasureSpec.makeMeasureSpec(c, 1073741824);
          super.onMeasure(i, paramInt2);
        }
      }
      int j = getResources().getDimensionPixelSize(a.d.design_snackbar_padding_vertical_2lines);
      int k = getResources().getDimensionPixelSize(a.d.design_snackbar_padding_vertical);
      if (a.getLayout().getLineCount() > 1)
      {
        paramInt1 = 1;
        if ((paramInt1 == 0) || (d <= 0) || (b.getMeasuredWidth() <= d)) {
          break label142;
        }
        if (!a(1, j, j - k)) {
          break label170;
        }
        paramInt1 = 1;
      }
      for (;;)
      {
        if (paramInt1 != 0) {
          super.onMeasure(i, paramInt2);
        }
        return;
        paramInt1 = 0;
        break;
        label142:
        if (paramInt1 != 0) {}
        for (paramInt1 = j;; paramInt1 = k)
        {
          if (!a(0, paramInt1, paramInt1)) {
            break label170;
          }
          paramInt1 = 1;
          break;
        }
        label170:
        paramInt1 = 0;
      }
    }
    
    void setOnLayoutChangeListener(a parama)
    {
      e = parama;
    }
    
    static abstract interface a
    {
      public abstract void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4);
    }
  }
  
  final class a
    extends SwipeDismissBehavior<Snackbar.SnackbarLayout>
  {
    a() {}
    
    public boolean a(CoordinatorLayout paramCoordinatorLayout, Snackbar.SnackbarLayout paramSnackbarLayout, MotionEvent paramMotionEvent)
    {
      if (paramCoordinatorLayout.a(paramSnackbarLayout, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
        switch (paramMotionEvent.getActionMasked())
        {
        }
      }
      for (;;)
      {
        return super.b(paramCoordinatorLayout, paramSnackbarLayout, paramMotionEvent);
        n.a().c(Snackbar.a(Snackbar.this));
        continue;
        n.a().d(Snackbar.a(Snackbar.this));
      }
    }
  }
  
  public static abstract class b
  {
    public void a(Snackbar paramSnackbar) {}
    
    public void a(Snackbar paramSnackbar, int paramInt) {}
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.Snackbar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */