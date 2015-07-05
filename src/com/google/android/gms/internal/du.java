package com.google.android.gms.internal;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;

@ey
public final class du
  extends FrameLayout
  implements View.OnClickListener
{
  private final Activity nB;
  private final ImageButton sx;
  
  public du(Activity paramActivity, int paramInt)
  {
    super(paramActivity);
    nB = paramActivity;
    setOnClickListener(this);
    sx = new ImageButton(paramActivity);
    sx.setImageResource(17301527);
    sx.setBackgroundColor(0);
    sx.setOnClickListener(this);
    sx.setPadding(0, 0, 0, 0);
    sx.setContentDescription("Interstitial close button");
    paramInt = gq.a(paramActivity, paramInt);
    addView(sx, new FrameLayout.LayoutParams(paramInt, paramInt, 17));
  }
  
  public void onClick(View paramView)
  {
    nB.finish();
  }
  
  public void q(boolean paramBoolean)
  {
    ImageButton localImageButton = sx;
    if (paramBoolean) {}
    for (int i = 4;; i = 0)
    {
      localImageButton.setVisibility(i);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */