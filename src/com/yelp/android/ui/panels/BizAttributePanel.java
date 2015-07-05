package com.yelp.android.ui.panels;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.util.cw;

public class BizAttributePanel
  extends RelativeLayout
{
  private Animation a;
  private Animation b;
  private Animation c;
  private Animation d;
  private TextView e;
  private TextView f;
  private LinearLayout g;
  private View h;
  private f i;
  private final Runnable j = new b(this);
  
  public BizAttributePanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, null);
  }
  
  public BizAttributePanel(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, null);
  }
  
  public BizAttributePanel(Context paramContext, f paramf)
  {
    super(paramContext);
    a(paramContext, paramf);
  }
  
  private void a(Context paramContext, f paramf)
  {
    i = paramf;
    LayoutInflater.from(getContext()).inflate(2130903129, this);
    g = ((LinearLayout)findViewById(2131492902));
    e = ((TextView)findViewById(2131493337));
    f = ((TextView)findViewById(2131493336));
    e.setOnClickListener(new c(this));
    d = cw.a(AppData.b(), null);
    c = cw.a(AppData.b(), new d(this));
    b = cw.b(AppData.b(), null);
    a = cw.b(AppData.b(), new e(this));
    a(false);
  }
  
  private void a(boolean paramBoolean)
  {
    View localView = i.a(g);
    if (localView != null)
    {
      f.setText(i.a());
      if (g.getChildCount() != 0) {
        break label66;
      }
      g.addView(localView);
    }
    for (;;)
    {
      h = localView;
      if (!paramBoolean) {
        break;
      }
      c();
      return;
      label66:
      if (localView != h)
      {
        g.removeAllViews();
        g.addView(localView);
      }
    }
    setPanelVisibility(true);
  }
  
  private void d()
  {
    g.clearAnimation();
    f.clearAnimation();
  }
  
  private void setPanelVisibility(boolean paramBoolean)
  {
    int m = 0;
    Object localObject = g;
    if (paramBoolean)
    {
      k = 0;
      ((LinearLayout)localObject).setVisibility(k);
      localObject = f;
      if (!paramBoolean) {
        break label44;
      }
    }
    label44:
    for (int k = m;; k = 4)
    {
      ((TextView)localObject).setVisibility(k);
      return;
      k = 4;
      break;
    }
  }
  
  public void a()
  {
    removeCallbacks(j);
  }
  
  public void a(String paramString)
  {
    e.setText(paramString);
    g.startAnimation(b);
    f.startAnimation(a);
  }
  
  public boolean b()
  {
    boolean bool = false;
    int k;
    if ((a != null) && (a.hasStarted()) && (!a.hasEnded()))
    {
      k = 1;
      if ((c == null) || (!c.hasStarted()) || (c.hasEnded())) {
        break label81;
      }
    }
    label81:
    for (int m = 1;; m = 0)
    {
      if ((k != 0) || (m != 0))
      {
        d();
        bool = true;
      }
      return bool;
      k = 0;
      break;
    }
  }
  
  public void c()
  {
    g.startAnimation(d);
    f.startAnimation(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.BizAttributePanel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */