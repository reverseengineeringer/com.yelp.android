package com.yelp.android.ui.panels;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.yelp.android.util.ErrorType;

public class PanelError
  extends ScrollView
{
  private a a;
  private TextView b;
  private Button c;
  private ImageView d;
  private LayoutInflater e;
  private ErrorType f;
  
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
  
  public void a(a parama)
  {
    e.inflate(2130903393, this);
    a = parama;
    setFillViewport(true);
    setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    d = ((ImageView)findViewById(2131690646));
    b = ((TextView)findViewById(2131690647));
    c = ((Button)findViewById(2131690648));
    c.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (PanelError.a(PanelError.this) != null) {
          PanelError.a(PanelError.this).q_();
        }
      }
    });
    if (a == null) {
      c.setVisibility(8);
    }
  }
  
  public void a(ErrorType paramErrorType)
  {
    a(paramErrorType, a);
  }
  
  public void a(ErrorType paramErrorType, a parama)
  {
    f = paramErrorType;
    int i = paramErrorType.getImageId();
    if (i == 0)
    {
      d.setVisibility(8);
      TextView localTextView = b;
      if (paramErrorType.getTextId() != 0) {
        break label113;
      }
      i = 2131166609;
      label39:
      localTextView.setText(i);
      a = parama;
      if (c != null)
      {
        parama = c;
        if (paramErrorType.getButtonTextId() != 0) {
          break label121;
        }
      }
    }
    label113:
    label121:
    for (i = 2131166469;; i = paramErrorType.getButtonTextId())
    {
      parama.setText(i);
      if (a != null) {
        break label129;
      }
      c.setVisibility(8);
      return;
      d.setImageResource(i);
      d.setVisibility(0);
      break;
      i = paramErrorType.getTextId();
      break label39;
    }
    label129:
    c.setVisibility(0);
  }
  
  public void b()
  {
    c.setVisibility(8);
  }
  
  public void c()
  {
    d.setVisibility(8);
  }
  
  public ErrorType getErrorType()
  {
    return f;
  }
  
  public void setText(int paramInt)
  {
    b.setText(paramInt);
  }
  
  public static abstract interface a
  {
    public abstract void q_();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.PanelError
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */