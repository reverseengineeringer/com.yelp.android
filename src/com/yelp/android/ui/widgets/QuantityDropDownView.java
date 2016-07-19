package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.yelp.android.co.a.b;
import com.yelp.android.co.a.l;

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
  private a i;
  
  public QuantityDropDownView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public QuantityDropDownView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, a.b.quantityDropDownViewStyle);
  }
  
  public QuantityDropDownView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.l.QuantityDropDownView, paramInt, paramInt);
    e = paramContext.getResourceId(a.l.QuantityDropDownView_alignRight, getId());
    f = paramContext.getResourceId(a.l.QuantityDropDownView_alignLeft, getId());
    h = paramContext.getResourceId(a.l.QuantityDropDownView_dropDownItemLayout, 17367049);
    g = paramContext.getResourceId(a.l.QuantityDropDownView_popupViewStyle, 16842870);
    c = paramContext.getInt(a.l.QuantityDropDownView_startRange, 0);
    d = paramContext.getInt(a.l.QuantityDropDownView_endRange, 1073741823);
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
    setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (a == null) {
          a = QuantityDropDownView.a(QuantityDropDownView.this);
        }
        if (a.isShowing())
        {
          a.dismiss();
          return;
        }
        a.showAsDropDown(paramAnonymousView);
      }
    });
  }
  
  private PopupWindow b()
  {
    int j = 0;
    View localView1 = getRootView().findViewById(f);
    View localView2 = getRootView().findViewById(e);
    ListView localListView = new ListView(getContext(), null, g);
    localListView.setLayoutParams(new AbsListView.LayoutParams(getWidth(), -2));
    localListView.setAdapter(new b(h, Pair.create(Integer.valueOf(c), Integer.valueOf(d))));
    localListView.setDivider(null);
    Object localObject = new c(this);
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
  
  public void setQuantityChangeListener(a parama)
  {
    i = parama;
  }
  
  public void setStartRange(int paramInt)
  {
    c = paramInt;
  }
  
  public static abstract interface a
  {
    public abstract void a(int paramInt, QuantityDropDownView paramQuantityDropDownView);
  }
  
  private static final class b
    extends BaseAdapter
  {
    private final int a;
    private final int b;
    private final int c;
    
    public b(int paramInt, Pair<Integer, Integer> paramPair)
    {
      a = ((Integer)first).intValue();
      b = ((Integer)second).intValue();
      c = paramInt;
    }
    
    public Integer a(int paramInt)
    {
      return Integer.valueOf(a + paramInt);
    }
    
    public int getCount()
    {
      return b - a + 1;
    }
    
    public long getItemId(int paramInt)
    {
      return a + paramInt;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (paramView == null) {
        paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(c, paramViewGroup, false);
      }
      for (;;)
      {
        TextView localTextView = (TextView)paramView.getTag();
        paramViewGroup = localTextView;
        if (localTextView == null) {
          paramViewGroup = (TextView)paramView;
        }
        paramViewGroup.setText(String.valueOf(a(paramInt)));
        return paramView;
      }
    }
  }
  
  private static final class c
    implements AdapterView.OnItemClickListener, AdapterView.OnItemSelectedListener
  {
    private QuantityDropDownView a;
    
    public c(QuantityDropDownView paramQuantityDropDownView)
    {
      a = paramQuantityDropDownView;
    }
    
    public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      a.setQuantity((int)paramLong);
      a.a.dismiss();
      a.requestFocus();
    }
    
    public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      a.setQuantity((int)paramLong);
    }
    
    public void onNothingSelected(AdapterView<?> paramAdapterView)
    {
      a.a.dismiss();
      a.requestFocus();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.QuantityDropDownView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */