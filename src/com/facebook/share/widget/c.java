package com.facebook.share.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import com.facebook.e;
import com.facebook.share.model.ShareContent;

public abstract class c
  extends e
{
  private ShareContent a;
  
  protected c(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, String paramString, int paramInt2)
  {
    super(paramContext, paramAttributeSet, paramInt1, 0, paramString, paramInt2);
  }
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
  {
    super.a(paramContext, paramAttributeSet, paramInt1, paramInt2);
    setInternalOnClickListener(getShareOnClickListener());
  }
  
  public ShareContent getShareContent()
  {
    return a;
  }
  
  protected abstract View.OnClickListener getShareOnClickListener();
  
  public void setShareContent(ShareContent paramShareContent)
  {
    a = paramShareContent;
  }
}

/* Location:
 * Qualified Name:     com.facebook.share.widget.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */