package com.yelp.android.ui.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.yelp.android.serializable.InAppNotification;

public class InAppNotificationView
  extends FrameLayout
{
  public InAppNotificationView(Context paramContext)
  {
    super(paramContext);
  }
  
  public InAppNotificationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(2130903269, this);
  }
  
  public InAppNotificationView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void setOnCancelListener(View.OnClickListener paramOnClickListener)
  {
    findViewById(2131690030).setOnClickListener(paramOnClickListener);
  }
  
  public void setupNotification(InAppNotification paramInAppNotification)
  {
    ((TextView)findViewById(2131689641)).setText(paramInAppNotification.f());
    ((TextView)findViewById(2131689696)).setText(paramInAppNotification.e());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.InAppNotificationView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */