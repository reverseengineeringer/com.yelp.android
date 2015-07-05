package com.yelp.android.ui.dialogs;

import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;

class ay
  extends ClickableSpan
{
  ay(PrivacyPolicyDialog paramPrivacyPolicyDialog) {}
  
  public void onClick(View paramView)
  {
    paramView = new Intent("android.intent.action.VIEW", Uri.parse(a.getString(2131166365)));
    a.startActivity(paramView);
  }
  
  public void updateDrawState(TextPaint paramTextPaint)
  {
    paramTextPaint.setUnderlineText(false);
    paramTextPaint.setColor(a.getResources().getColor(2131361827));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */