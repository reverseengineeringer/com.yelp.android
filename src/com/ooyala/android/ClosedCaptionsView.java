package com.ooyala.android;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;

public class ClosedCaptionsView
  extends TextView
{
  private Caption _caption;
  
  public ClosedCaptionsView(Context paramContext)
  {
    super(paramContext);
    initStyle();
  }
  
  public ClosedCaptionsView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initStyle();
  }
  
  public ClosedCaptionsView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initStyle();
  }
  
  public Caption getCaption()
  {
    return _caption;
  }
  
  public void initStyle()
  {
    setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 81));
    setMaxLines(5);
    setTextColor(-1);
    setTextSize(16.0F);
    setBackgroundColor(0);
    setGravity(17);
  }
  
  public void setCaption(Caption paramCaption)
  {
    _caption = paramCaption;
    if (_caption != null)
    {
      setBackgroundColor(-16777216);
      setText(paramCaption.getText());
      return;
    }
    setBackgroundColor(0);
    setText("");
  }
  
  public void setCaptionText(String paramString)
  {
    if (paramString != null)
    {
      setBackgroundColor(-16777216);
      setText(paramString);
      return;
    }
    setBackgroundColor(0);
    setText("");
  }
  
  public void setStyle(ClosedCaptionsStyle paramClosedCaptionsStyle)
  {
    setTextColor(paramClosedCaptionsStyle.getColor());
    setBackgroundColor(paramClosedCaptionsStyle.getBackgroundColor());
    setTypeface(paramClosedCaptionsStyle.getFont());
    ViewGroup.MarginLayoutParams localMarginLayoutParams = (ViewGroup.MarginLayoutParams)getLayoutParams();
    bottomMargin = paramClosedCaptionsStyle.getBottomMargin();
    setLayoutParams(localMarginLayoutParams);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.ClosedCaptionsView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */