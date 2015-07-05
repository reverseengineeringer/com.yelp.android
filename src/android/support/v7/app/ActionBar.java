package android.support.v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.View;
import com.yelp.android.m.b;

public abstract class ActionBar
{
  public abstract View a();
  
  public com.yelp.android.m.a a(b paramb)
  {
    return null;
  }
  
  public void a(float paramFloat)
  {
    if (paramFloat != 0.0F) {
      throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration.");
    }
  }
  
  public abstract void a(int paramInt);
  
  public void a(Configuration paramConfiguration) {}
  
  public abstract void a(Drawable paramDrawable);
  
  public abstract void a(a parama);
  
  public abstract void a(View paramView);
  
  public abstract void a(CharSequence paramCharSequence);
  
  public abstract void a(boolean paramBoolean);
  
  public boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
  
  public abstract int b();
  
  public abstract void b(int paramInt);
  
  public void b(Drawable paramDrawable) {}
  
  public void b(CharSequence paramCharSequence) {}
  
  public abstract void b(boolean paramBoolean);
  
  public abstract int c();
  
  public void c(int paramInt) {}
  
  public abstract void c(boolean paramBoolean);
  
  public abstract void d();
  
  public void d(boolean paramBoolean) {}
  
  public abstract void e();
  
  public void e(boolean paramBoolean)
  {
    if (paramBoolean) {
      throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration.");
    }
  }
  
  public Context f()
  {
    return null;
  }
  
  public void f(boolean paramBoolean) {}
  
  public void g(boolean paramBoolean) {}
  
  public boolean g()
  {
    return false;
  }
  
  public void h(boolean paramBoolean) {}
  
  public boolean h()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.ActionBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */