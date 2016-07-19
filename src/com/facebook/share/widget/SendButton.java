package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.o.g;

public final class SendButton
  extends c
{
  private static final int a = CallbackManagerImpl.RequestCodeOffset.Message.toRequestCode();
  
  public SendButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0, "fb_send_button_create", a);
  }
  
  public SendButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt, "fb_send_button_create", a);
  }
  
  protected int getDefaultStyleResource()
  {
    return o.g.com_facebook_button_send;
  }
  
  protected View.OnClickListener getShareOnClickListener()
  {
    new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (getFragment() != null) {}
        for (b localb = new b(getFragment(), getRequestCode());; localb = new b(SendButton.a(SendButton.this), getRequestCode()))
        {
          localb.a(getShareContent());
          SendButton.a(SendButton.this, paramAnonymousView);
          return;
        }
      }
    };
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.SendButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */