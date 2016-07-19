package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.widget.Toolbar;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import com.yelp.android.r.a;

public abstract class f
{
  public static f a(Activity paramActivity, e parame)
  {
    return a(paramActivity, paramActivity.getWindow(), parame);
  }
  
  public static f a(Dialog paramDialog, e parame)
  {
    return a(paramDialog.getContext(), paramDialog.getWindow(), parame);
  }
  
  private static f a(Context paramContext, Window paramWindow, e parame)
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23) {
      return new j(paramContext, paramWindow, parame);
    }
    if (i >= 14) {
      return new i(paramContext, paramWindow, parame);
    }
    if (i >= 11) {
      return new h(paramContext, paramWindow, parame);
    }
    return new k(paramContext, paramWindow, parame);
  }
  
  public abstract ActionBar a();
  
  public abstract a a(com.yelp.android.r.a.a parama);
  
  public abstract void a(int paramInt);
  
  public abstract void a(Configuration paramConfiguration);
  
  public abstract void a(Bundle paramBundle);
  
  public abstract void a(Toolbar paramToolbar);
  
  public abstract void a(View paramView);
  
  public abstract void a(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  public abstract void a(CharSequence paramCharSequence);
  
  public abstract MenuInflater b();
  
  public abstract void b(Bundle paramBundle);
  
  public abstract void b(View paramView, ViewGroup.LayoutParams paramLayoutParams);
  
  public abstract boolean b(int paramInt);
  
  public abstract void c();
  
  public abstract void d();
  
  public abstract void e();
  
  public abstract void f();
  
  public abstract a.a g();
  
  public abstract void h();
}

/* Location:
 * Qualified Name:     android.support.v7.app.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */