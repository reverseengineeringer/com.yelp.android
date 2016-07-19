package com.facebook.share.widget;

import android.view.View;
import android.view.View.OnClickListener;

class ShareButton$1
  implements View.OnClickListener
{
  ShareButton$1(ShareButton paramShareButton) {}
  
  public void onClick(View paramView)
  {
    if (a.getFragment() != null) {}
    for (ShareDialog localShareDialog = new ShareDialog(a.getFragment(), a.getRequestCode());; localShareDialog = new ShareDialog(ShareButton.a(a), a.getRequestCode()))
    {
      localShareDialog.a(a.getShareContent());
      ShareButton.a(a, paramView);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.ShareButton.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */