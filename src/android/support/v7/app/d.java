package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ListAdapter;
import com.yelp.android.j.a.a;

public class d
  extends l
  implements DialogInterface
{
  private c a = new c(getContext(), this, getWindow());
  
  d(Context paramContext, int paramInt, boolean paramBoolean)
  {
    super(paramContext, a(paramContext, paramInt));
  }
  
  static int a(Context paramContext, int paramInt)
  {
    if (paramInt >= 16777216) {
      return paramInt;
    }
    TypedValue localTypedValue = new TypedValue();
    paramContext.getTheme().resolveAttribute(a.a.alertDialogTheme, localTypedValue, true);
    return resourceId;
  }
  
  public Button a(int paramInt)
  {
    return a.d(paramInt);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a.a();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (a.a(paramInt, paramKeyEvent)) {
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (a.b(paramInt, paramKeyEvent)) {
      return true;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    super.setTitle(paramCharSequence);
    a.a(paramCharSequence);
  }
  
  public static class a
  {
    private final c.a a;
    private int b;
    
    public a(Context paramContext)
    {
      this(paramContext, d.a(paramContext, 0));
    }
    
    public a(Context paramContext, int paramInt)
    {
      a = new c.a(new ContextThemeWrapper(paramContext, d.a(paramContext, paramInt)));
      b = paramInt;
    }
    
    public Context a()
    {
      return a.a;
    }
    
    public a a(int paramInt)
    {
      a.f = a.a.getText(paramInt);
      return this;
    }
    
    public a a(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.i = a.a.getText(paramInt);
      a.j = paramOnClickListener;
      return this;
    }
    
    public a a(DialogInterface.OnCancelListener paramOnCancelListener)
    {
      a.p = paramOnCancelListener;
      return this;
    }
    
    public a a(DialogInterface.OnKeyListener paramOnKeyListener)
    {
      a.r = paramOnKeyListener;
      return this;
    }
    
    public a a(Drawable paramDrawable)
    {
      a.d = paramDrawable;
      return this;
    }
    
    public a a(View paramView)
    {
      a.g = paramView;
      return this;
    }
    
    public a a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      a.w = paramView;
      a.v = 0;
      a.B = true;
      a.x = paramInt1;
      a.y = paramInt2;
      a.z = paramInt3;
      a.A = paramInt4;
      return this;
    }
    
    public a a(ListAdapter paramListAdapter, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.t = paramListAdapter;
      a.u = paramOnClickListener;
      return this;
    }
    
    public a a(CharSequence paramCharSequence)
    {
      a.f = paramCharSequence;
      return this;
    }
    
    public a a(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.i = paramCharSequence;
      a.j = paramOnClickListener;
      return this;
    }
    
    public a b(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.k = a.a.getText(paramInt);
      a.l = paramOnClickListener;
      return this;
    }
    
    public a b(View paramView)
    {
      a.w = paramView;
      a.v = 0;
      a.B = false;
      return this;
    }
    
    public a b(CharSequence paramCharSequence)
    {
      a.h = paramCharSequence;
      return this;
    }
    
    public a b(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
    {
      a.k = paramCharSequence;
      a.l = paramOnClickListener;
      return this;
    }
    
    public d b()
    {
      d locald = new d(a.a, b, false);
      a.a(d.a(locald));
      locald.setCancelable(a.o);
      if (a.o) {
        locald.setCanceledOnTouchOutside(true);
      }
      locald.setOnCancelListener(a.p);
      locald.setOnDismissListener(a.q);
      if (a.r != null) {
        locald.setOnKeyListener(a.r);
      }
      return locald;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */