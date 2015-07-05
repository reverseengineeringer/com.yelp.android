package com.yelp.android.ui.activities.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;

public class PagingPanel
  extends LinearLayout
{
  private Button a;
  private Button b;
  private int c;
  private int d;
  
  public PagingPanel(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public PagingPanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public void a()
  {
    LayoutInflater.from(getContext()).inflate(2130903334, this);
    b = ((Button)findViewById(2131493899));
    a = ((Button)findViewById(2131493900));
  }
  
  public void a(View.OnClickListener paramOnClickListener, int paramInt)
  {
    c = paramInt;
    a.setOnClickListener(paramOnClickListener);
    Button localButton = a;
    if ((paramOnClickListener == null) || (paramInt <= 0)) {}
    for (paramInt = 8;; paramInt = 0)
    {
      localButton.setVisibility(paramInt);
      return;
    }
  }
  
  public void b()
  {
    int i = b.getVisibility();
    int j = a.getVisibility();
    if ((i == 8) && (j == 8))
    {
      setVisibility(8);
      if ((i != j) || (i != 0)) {
        break label112;
      }
      b.setText(getContext().getString(2131165451, new Object[] { Integer.valueOf(d) }));
      a.setText(getContext().getString(2131165449, new Object[] { Integer.valueOf(c) }));
    }
    label112:
    do
    {
      return;
      setVisibility(0);
      break;
      if (i == 0)
      {
        b.setText(getContext().getString(2131165452, new Object[] { Integer.valueOf(d) }));
        return;
      }
    } while (j != 0);
    a.setText(getContext().getString(2131165450, new Object[] { Integer.valueOf(c) }));
  }
  
  public void b(View.OnClickListener paramOnClickListener, int paramInt)
  {
    d = paramInt;
    b.setOnClickListener(paramOnClickListener);
    Button localButton = b;
    if (paramOnClickListener == null) {}
    for (paramInt = 8;; paramInt = 0)
    {
      localButton.setVisibility(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.PagingPanel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */