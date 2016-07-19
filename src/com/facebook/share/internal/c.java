package com.facebook.share.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import com.facebook.e;
import com.facebook.o.c;
import com.facebook.o.f;
import com.facebook.o.g;

public class c
  extends e
{
  public c(Context paramContext, boolean paramBoolean)
  {
    super(paramContext, null, 0, 0, "fb_like_button_create", 0);
    setSelected(paramBoolean);
  }
  
  private void a()
  {
    if (isSelected())
    {
      setCompoundDrawablesWithIntrinsicBounds(o.c.com_facebook_button_like_icon_selected, 0, 0, 0);
      setText(getResources().getString(o.f.com_facebook_like_button_liked));
      return;
    }
    setCompoundDrawablesWithIntrinsicBounds(o.c.com_facebook_button_icon, 0, 0, 0);
    setText(getResources().getString(o.f.com_facebook_like_button_not_liked));
  }
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super.a(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a();
  }
  
  protected int getDefaultStyleResource()
  {
    return o.g.com_facebook_button_like;
  }
  
  public void setSelected(boolean paramBoolean)
  {
    super.setSelected(paramBoolean);
    a();
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */