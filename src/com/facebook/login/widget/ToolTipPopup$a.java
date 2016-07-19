package com.facebook.login.widget;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.o.d;
import com.facebook.o.e;

class ToolTipPopup$a
  extends FrameLayout
{
  private ImageView b;
  private ImageView c;
  private View d;
  private ImageView e;
  
  public ToolTipPopup$a(ToolTipPopup paramToolTipPopup, Context paramContext)
  {
    super(paramContext);
    c();
  }
  
  private void c()
  {
    LayoutInflater.from(getContext()).inflate(o.e.com_facebook_tooltip_bubble, this);
    b = ((ImageView)findViewById(o.d.com_facebook_tooltip_bubble_view_top_pointer));
    c = ((ImageView)findViewById(o.d.com_facebook_tooltip_bubble_view_bottom_pointer));
    d = findViewById(o.d.com_facebook_body_frame);
    e = ((ImageView)findViewById(o.d.com_facebook_button_xout));
  }
  
  public void a()
  {
    b.setVisibility(0);
    c.setVisibility(4);
  }
  
  public void b()
  {
    b.setVisibility(4);
    c.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.widget.ToolTipPopup.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */