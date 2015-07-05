package com.yelp.android.ui.panels;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.yelp.android.util.ErrorType;

public class PanelError
  extends ScrollView
{
  private aa a;
  private TextView b;
  private Button c;
  private ImageView d;
  private LayoutInflater e;
  
  public PanelError(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public PanelError(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public void a()
  {
    a(null);
  }
  
  public void a(Context paramContext)
  {
    e = LayoutInflater.from(paramContext);
  }
  
  public void a(aa paramaa)
  {
    e.inflate(2130903297, this);
    a = paramaa;
    setFillViewport(true);
    setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    d = ((ImageView)findViewById(2131493809));
    b = ((TextView)findViewById(2131493810));
    c = ((Button)findViewById(2131493811));
    c.setOnClickListener(new z(this));
    if (a == null) {
      c.setVisibility(8);
    }
  }
  
  public void a(ErrorType paramErrorType)
  {
    a(paramErrorType, a);
  }
  
  public void a(ErrorType paramErrorType, aa paramaa)
  {
    int i = paramErrorType.getImageId();
    if (i == 0)
    {
      d.setVisibility(8);
      TextView localTextView = b;
      if (paramErrorType.getTextId() != 0) {
        break label108;
      }
      i = 2131166600;
      label34:
      localTextView.setText(i);
      a = paramaa;
      if (c != null)
      {
        paramaa = c;
        if (paramErrorType.getButtonTextId() != 0) {
          break label116;
        }
      }
    }
    label108:
    label116:
    for (i = 2131166464;; i = paramErrorType.getButtonTextId())
    {
      paramaa.setText(i);
      if (a != null) {
        break label124;
      }
      c.setVisibility(8);
      return;
      d.setImageResource(i);
      d.setVisibility(0);
      break;
      i = paramErrorType.getTextId();
      break label34;
    }
    label124:
    c.setVisibility(0);
  }
  
  public void b()
  {
    c.setVisibility(8);
  }
  
  public void setText(int paramInt)
  {
    b.setText(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.PanelError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */