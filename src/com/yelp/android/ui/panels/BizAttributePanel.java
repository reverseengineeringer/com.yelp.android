package com.yelp.android.ui.panels;

import android.content.Context;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.util.av;

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
  private a i;
  private final Runnable j = new BizAttributePanel.1(this);
  
  public BizAttributePanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(null);
  }
  
  public BizAttributePanel(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(null);
  }
  
  public BizAttributePanel(Context paramContext, a parama)
  {
    super(paramContext);
    a(parama);
  }
  
  private void a(a parama)
  {
    i = parama;
    LayoutInflater.from(getContext()).inflate(2130903141, this);
    g = ((LinearLayout)findViewById(2131689514));
    e = ((TextView)findViewById(2131690002));
    f = ((TextView)findViewById(2131690001));
    e.setOnClickListener(new BizAttributePanel.2(this));
    d = av.a(AppData.b(), null);
    c = av.a(AppData.b(), new BizAttributePanel.3(this));
    b = av.b(AppData.b(), null);
    a = av.b(AppData.b(), new BizAttributePanel.4(this));
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
  
  public static abstract interface a
  {
    public abstract Spanned a();
    
    public abstract View a(ViewGroup paramViewGroup);
    
    public abstract void a(boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.BizAttributePanel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */