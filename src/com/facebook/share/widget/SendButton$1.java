package com.facebook.share.widget;

import android.view.View;
import android.view.View.OnClickListener;

class SendButton$1
  implements View.OnClickListener
{
  SendButton$1(SendButton paramSendButton) {}
  
  public void onClick(View paramView)
  {
    if (a.getFragment() != null) {}
    for (b localb = new b(a.getFragment(), a.getRequestCode());; localb = new b(SendButton.a(a), a.getRequestCode()))
    {
      localb.a(a.getShareContent());
      SendButton.a(a, paramView);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.SendButton.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */