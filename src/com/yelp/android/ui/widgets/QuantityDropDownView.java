package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.yelp.android.bf.c;
import com.yelp.android.bf.m;

public class QuantityDropDownView
  extends TextView
{
  protected PopupWindow a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  private int g;
  private int h;
  private s i;
  
  public QuantityDropDownView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public QuantityDropDownView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, c.quantityDropDownViewStyle);
  }
  
  public QuantityDropDownView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, m.QuantityDropDownView, paramInt, paramInt);
    e = paramContext.getResourceId(3, getId());
    f = paramContext.getResourceId(4, getId());
    h = paramContext.getResourceId(5, 17367049);
    g = paramContext.getResourceId(6, 16842870);
    c = paramContext.getInt(1, 0);
    d = paramContext.getInt(2, 1073741823);
    b = c;
    super.setText(String.valueOf(b));
    paramContext.recycle();
    if (c > d) {
      throw new IllegalStateException(String.format("StartRange[%d] is greater than EndRange[%d]", new Object[] { Integer.valueOf(c), Integer.valueOf(d) }));
    }
    if (isEnabled()) {
      a();
    }
  }
  
  private void a()
  {
    setOnClickListener(new r(this));
  }
  
  private PopupWindow b()
  {
    int j = 0;
    View localView1 = getRootView().findViewById(f);
    View localView2 = getRootView().findViewById(e);
    ListView localListView = new ListView(getContext(), null, g);
    localListView.setLayoutParams(new AbsListView.LayoutParams(getWidth(), -2));
    localListView.setAdapter(new t(h, Pair.create(Integer.valueOf(c), Integer.valueOf(d))));
    localListView.setDivider(null);
    Object localObject = new u(this);
    localListView.setOnItemSelectedListener((AdapterView.OnItemSelectedListener)localObject);
    localListView.setOnItemClickListener((AdapterView.OnItemClickListener)localObject);
    localListView.measure(getWidth(), getHeight() * 3);
    localObject = new PopupWindow(getContext(), null, g);
    ((PopupWindow)localObject).setContentView(localListView);
    ((PopupWindow)localObject).setWindowLayoutMode(0, 0);
    ((PopupWindow)localObject).setWidth(Math.max(getWidth() * 2, localView2.getRight() - localView1.getLeft()));
    ((PopupWindow)localObject).setHeight(getHeight() * 3);
    ((PopupWindow)localObject).setFocusable(true);
    try
    {
      int k = Integer.valueOf(getText().toString()).intValue();
      j = k;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
    localListView.setSelectionFromTop(j, 2);
    return (PopupWindow)localObject;
  }
  
  public Integer getQuantity()
  {
    return Integer.valueOf(b);
  }
  
  public void setEnabled(boolean paramBoolean)
  {
    if (paramBoolean) {
      a();
    }
    do
    {
      return;
      setOnClickListener(null);
    } while (a == null);
    a.dismiss();
    a = null;
  }
  
  public void setEndRange(int paramInt)
  {
    d = paramInt;
  }
  
  public void setQuantity(int paramInt)
  {
    int j = b;
    b = paramInt;
    super.setText(Integer.toString(paramInt));
    if (i != null) {
      i.a(j, this);
    }
  }
  
  public void setQuantityChangeListener(s params)
  {
    i = params;
  }
  
  public void setStartRange(int paramInt)
  {
    c = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.QuantityDropDownView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */