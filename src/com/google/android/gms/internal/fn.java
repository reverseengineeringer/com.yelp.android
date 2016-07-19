package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.PopupWindow;

@fv
@TargetApi(19)
public class fn
  extends fm
{
  private Object g = new Object();
  private PopupWindow h;
  private boolean i = false;
  
  fn(Context paramContext, gr.a parama, ib paramib, fl.a parama1)
  {
    super(paramContext, parama, paramib, parama1);
  }
  
  private void g()
  {
    synchronized (g)
    {
      i = true;
      if (((b instanceof Activity)) && (((Activity)b).isDestroyed())) {
        h = null;
      }
      if (h != null)
      {
        if (h.isShowing()) {
          h.dismiss();
        }
        h = null;
      }
      return;
    }
  }
  
  protected void a(int paramInt)
  {
    g();
    super.a(paramInt);
  }
  
  public void d()
  {
    g();
    super.d();
  }
  
  protected void f()
  {
    if ((b instanceof Activity)) {}
    Object localObject2;
    for (Window localWindow = ((Activity)b).getWindow();; localObject2 = null)
    {
      if ((localWindow == null) || (localWindow.getDecorView() == null)) {}
      while (((Activity)b).isDestroyed()) {
        return;
      }
      FrameLayout localFrameLayout = new FrameLayout(b);
      localFrameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
      localFrameLayout.addView(c.b(), -1, -1);
      synchronized (g)
      {
        if (i) {
          return;
        }
      }
      h = new PopupWindow(localFrameLayout, 1, 1, false);
      h.setOutsideTouchable(true);
      h.setClippingEnabled(false);
      gz.a("Displaying the 1x1 popup off the screen.");
      try
      {
        h.showAtLocation(((Window)localObject1).getDecorView(), 0, -1, -1);
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          h = null;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */