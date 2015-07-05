package com.yelp.android.ui.widgets;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ScrollView;
import android.widget.TextView;

public class SplashScreen
  extends ScrollView
{
  private final Button a;
  private final Button b;
  private final TextView c;
  private final TextView d;
  private final TextView e;
  
  public SplashScreen(Context paramContext)
  {
    this(paramContext, null, 2130772175);
  }
  
  public SplashScreen(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {}
  
  public void setBottomButtonOnClickListener(View.OnClickListener paramOnClickListener)
  {
    b.setOnClickListener(paramOnClickListener);
  }
  
  public void setBottomButtonPromptText(int paramInt)
  {
    setBottomButtonPromptText(getContext().getText(paramInt));
  }
  
  public void setBottomButtonPromptText(CharSequence paramCharSequence)
  {
    e.setText(paramCharSequence);
    TextView localTextView = e;
    if (TextUtils.isEmpty(paramCharSequence)) {}
    for (int i = 8;; i = 0)
    {
      localTextView.setVisibility(i);
      return;
    }
  }
  
  public void setBottomButtonText(int paramInt)
  {
    setBottomButtonText(getContext().getText(paramInt));
  }
  
  public void setBottomButtonText(CharSequence paramCharSequence)
  {
    b.setText(paramCharSequence);
    Button localButton = b;
    if (TextUtils.isEmpty(paramCharSequence)) {}
    for (int i = 8;; i = 0)
    {
      localButton.setVisibility(i);
      return;
    }
  }
  
  public void setSubMessage(int paramInt)
  {
    setSubMessage(getContext().getText(paramInt));
  }
  
  public void setSubMessage(CharSequence paramCharSequence)
  {
    d.setText(paramCharSequence);
    TextView localTextView = d;
    if (TextUtils.isEmpty(paramCharSequence)) {}
    for (int i = 8;; i = 0)
    {
      localTextView.setVisibility(i);
      return;
    }
  }
  
  public void setTitleMessage(int paramInt)
  {
    setTitleMessage(getContext().getString(paramInt, new Object[] { getContext().getText(2131166591) }));
  }
  
  public void setTitleMessage(CharSequence paramCharSequence)
  {
    c.setText(paramCharSequence);
    TextView localTextView = c;
    if (TextUtils.isEmpty(paramCharSequence)) {}
    for (int i = 8;; i = 0)
    {
      localTextView.setVisibility(i);
      return;
    }
  }
  
  public void setTopButtonOnClickListener(View.OnClickListener paramOnClickListener)
  {
    a.setOnClickListener(paramOnClickListener);
  }
  
  public void setTopButtonText(int paramInt)
  {
    setTopButtonText(getContext().getText(paramInt));
  }
  
  public void setTopButtonText(CharSequence paramCharSequence)
  {
    a.setText(paramCharSequence);
    Button localButton = a;
    if (TextUtils.isEmpty(paramCharSequence)) {}
    for (int i = 8;; i = 0)
    {
      localButton.setVisibility(i);
      if (!TextUtils.isEmpty(paramCharSequence)) {
        a.requestFocus();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.SplashScreen
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */