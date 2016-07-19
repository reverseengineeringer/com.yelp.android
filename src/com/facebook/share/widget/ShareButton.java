package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.o.g;

public final class ShareButton
  extends c
{
  private static final int a = CallbackManagerImpl.RequestCodeOffset.Share.toRequestCode();
  
  public ShareButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0, "fb_share_button_create", a);
  }
  
  public ShareButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt, "fb_share_button_create", a);
  }
  
  protected int getDefaultStyleResource()
  {
    return o.g.com_facebook_button_share;
  }
  
  protected View.OnClickListener getShareOnClickListener()
  {
    new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (getFragment() != null) {}
        for (ShareDialog localShareDialog = new ShareDialog(getFragment(), getRequestCode());; localShareDialog = new ShareDialog(ShareButton.a(ShareButton.this), getRequestCode()))
        {
          localShareDialog.a(getShareContent());
          ShareButton.a(ShareButton.this, paramAnonymousView);
          return;
        }
      }
    };
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.ShareButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */