package com.yelp.android.ui.panels;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.appdata.ao;
import com.yelp.android.bf.d;
import com.yelp.android.bf.g;
import com.yelp.android.bf.i;
import com.yelp.android.bf.m;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.YelpLog;

public class PanelLoading
  extends LinearLayout
{
  private ImageView a;
  private TextView b;
  private final LayoutInflater c;
  private as d;
  private final Context e;
  private boolean f = true;
  private String g;
  private boolean h;
  private ViewTreeObserver.OnScrollChangedListener i = new ab(this);
  
  public PanelLoading(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PanelLoading(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    e = paramContext;
    c = LayoutInflater.from(paramContext);
    a();
    a("");
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, m.PanelLoading);
    int j = paramContext.getInt(0, 0);
    paramContext.recycle();
    setSpinner(CommonLoadingSpinner.values()[j]);
  }
  
  private void a(int[] paramArrayOfInt)
  {
    if (d != null) {
      d.b();
    }
    d = new as(e, a, paramArrayOfInt, 20);
    b();
  }
  
  private void e()
  {
    if (!h) {
      a();
    }
    ImageView localImageView = a;
    if (f) {}
    for (int j = 0;; j = 8)
    {
      localImageView.setVisibility(j);
      if (TextUtils.isEmpty(g)) {
        break;
      }
      b.setText(g);
      b.setVisibility(0);
      return;
    }
    b.setVisibility(8);
  }
  
  public void a()
  {
    if (h) {
      return;
    }
    setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    setGravity(17);
    setOrientation(1);
    setPadding(ao.e, 0, ao.e, 0);
    setClickable(true);
    c.inflate(i.panel_loading, this);
    a = ((ImageView)findViewById(g.loading_spinner));
    b = ((TextView)findViewById(g.loading_text));
    a(CommonLoadingSpinner.DEFAULT.getFrames());
    h = true;
  }
  
  public void a(int paramInt)
  {
    a();
    setBackgroundColor(paramInt);
  }
  
  public void a(String paramString)
  {
    Object localObject = new LinearLayout.LayoutParams(-2, -2);
    ((LinearLayout.LayoutParams)localObject).setMargins(0, 0, 0, 0);
    a.setLayoutParams((ViewGroup.LayoutParams)localObject);
    localObject = paramString;
    if (TextUtils.isEmpty(paramString)) {
      localObject = "";
    }
    g = ((String)localObject);
    e();
  }
  
  public void b()
  {
    if (d == null)
    {
      a(CommonLoadingSpinner.DEFAULT.getFrames());
      YelpLog.d("PanelLoading", "Animation was started with no spinner reverting to default");
    }
    d.a();
    getViewTreeObserver().removeOnScrollChangedListener(i);
    getViewTreeObserver().addOnScrollChangedListener(i);
  }
  
  public void b(int paramInt)
  {
    if (paramInt == 0) {}
    for (String str = "";; str = getContext().getString(paramInt))
    {
      a(str);
      return;
    }
  }
  
  public void c()
  {
    if (d != null)
    {
      d.b();
      d = null;
    }
    getViewTreeObserver().removeOnScrollChangedListener(i);
  }
  
  public void d()
  {
    if (!h) {
      a();
    }
    b.setTextColor(getContext().getResources().getColor(d.gray_light));
    setBackgroundColor(-1442840576);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    c();
  }
  
  public void onWindowVisibilityChanged(int paramInt)
  {
    super.onWindowVisibilityChanged(paramInt);
    if (d != null) {
      d.a(paramInt);
    }
  }
  
  public void setSpinner(y paramy)
  {
    a(paramy.getFrames());
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