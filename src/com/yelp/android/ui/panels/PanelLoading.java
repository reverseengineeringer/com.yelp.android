package com.yelp.android.ui.panels;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.appdata.n;
import com.yelp.android.co.a.c;
import com.yelp.android.co.a.f;
import com.yelp.android.co.a.h;
import com.yelp.android.co.a.l;
import com.yelp.android.ui.util.v;
import com.yelp.android.util.YelpLog;

public class PanelLoading
  extends LinearLayout
{
  private final Context a;
  private final LayoutInflater b;
  private FrameLayout c;
  private v d;
  private View e;
  private TextView f;
  private boolean g;
  
  public PanelLoading(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PanelLoading(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a = paramContext;
    b = LayoutInflater.from(paramContext);
    a();
    a(null);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.l.PanelLoading);
    int i = paramContext.getInt(a.l.PanelLoading_loadingSpinner, 0);
    paramContext.recycle();
    setSpinner(CommonLoadingSpinner.values()[i]);
  }
  
  public void a()
  {
    if (g) {
      return;
    }
    setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    setGravity(17);
    setOrientation(1);
    setPadding(n.e, 0, n.e, 0);
    setClickable(true);
    b.inflate(a.h.panel_loading, this);
    c = ((FrameLayout)findViewById(a.f.loading_spinner_holder));
    f = ((TextView)findViewById(a.f.loading_text));
    g = true;
  }
  
  public void a(int paramInt)
  {
    if (paramInt == 0) {}
    for (String str = null;; str = getContext().getString(paramInt))
    {
      a(str);
      return;
    }
  }
  
  public void a(String paramString)
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    localLayoutParams.setMargins(0, 0, 0, 0);
    c.setLayoutParams(localLayoutParams);
    if (!TextUtils.isEmpty(paramString))
    {
      f.setText(paramString);
      f.setVisibility(0);
      return;
    }
    f.setVisibility(8);
  }
  
  public void b()
  {
    if ((d == null) && (e == null))
    {
      setSpinner(CommonLoadingSpinner.DEFAULT);
      YelpLog.d("PanelLoading", "Animation was started with no spinner reverting to default");
    }
    if (d != null) {
      d.a();
    }
  }
  
  public void c()
  {
    if (d != null) {
      d.b();
    }
  }
  
  public void d()
  {
    f.setTextColor(getContext().getResources().getColor(a.c.gray_light));
    setBackgroundColor(-1442840576);
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (getVisibility() == 0) {
      b();
    }
  }
  
  public void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    if (d != null) {
      d.a(paramInt);
    }
  }
  
  public void setCustomSpinnerView(View paramView)
  {
    if (e == paramView) {
      return;
    }
    c();
    d = null;
    e = paramView;
    c.removeAllViews();
    c.addView(e);
    b();
  }
  
  public void setSpinner(c paramc)
  {
    c();
    e = null;
    c.removeAllViews();
    ImageView localImageView = new ImageView(getContext());
    c.addView(localImageView);
    d = new v(a, localImageView, paramc.getFrames(), 20);
    b();
  }
  
  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
    if (paramInt == 0) {
      b();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.PanelLoading
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */