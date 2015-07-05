package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.TextView;
import com.yelp.android.bf.c;
import com.yelp.android.bf.d;
import com.yelp.android.bf.e;
import com.yelp.android.bf.f;
import com.yelp.android.bf.g;
import com.yelp.android.bf.i;
import com.yelp.android.bf.m;
import com.yelp.android.ui.util.dj;

public class MessageAlertBox
  extends FrameLayout
{
  private final View a;
  private final WebImageView b;
  private final TextView c;
  private final TextView d;
  private final ImageView e;
  
  public MessageAlertBox(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public MessageAlertBox(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, c.messageAlertBoxStyle);
  }
  
  public MessageAlertBox(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    SparseIntArray localSparseIntArray = new SparseIntArray();
    localSparseIntArray.put(4, i.message_alert_box);
    dj.a(this, paramContext, paramAttributeSet, paramInt, localSparseIntArray);
    a = findViewById(g.padding);
    b = ((WebImageView)findViewById(g.icon));
    c = ((TextView)findViewById(g.title));
    d = ((TextView)findViewById(g.subtitle));
    e = ((ImageView)findViewById(g.arrow));
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, m.BaseMessageAlertBox, paramInt, paramInt);
    paramAttributeSet = getResources();
    paramInt = paramContext.getResourceId(1, 0);
    if (paramInt != 0) {
      a.setBackgroundResource(paramInt);
    }
    e.setImageResource(paramContext.getResourceId(3, f.message_alert_box_red_arrow));
    setIcon(paramContext.getResourceId(2, 0));
    paramInt = paramContext.getResourceId(6, d.gray_light);
    int i = paramAttributeSet.getColor(paramInt);
    c.setTextColor(i);
    setTitle(paramContext.getText(4));
    paramInt = paramAttributeSet.getColor(paramContext.getResourceId(7, paramInt));
    d.setTextColor(paramInt);
    setSubtitle(paramContext.getText(5));
    a(0, 0);
    paramContext.recycle();
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    setPadding(paramInt1, 0, paramInt2, 0);
  }
  
  public void a(String paramString, int paramInt)
  {
    b.setPadding(0, 0, 0, 0);
    b.setImageUrl(paramString, paramInt);
    b.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
    b.setForceMode(RoundedWebImageView.RoundingMode.CLIP);
    b.setVisibility(0);
  }
  
  public void setIcon(int paramInt)
  {
    b.setForceMode(RoundedWebImageView.RoundingMode.NONE);
    if (paramInt != 0)
    {
      b.setImageResource(paramInt);
      b.setScaleType(ImageView.ScaleType.CENTER);
      paramInt = getContext().getResources().getDimensionPixelOffset(e.message_alert_box_icon_padding);
      b.setPadding(paramInt, paramInt, paramInt, paramInt);
      b.setVisibility(0);
      return;
    }
    b.setVisibility(8);
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    int i = 0;
    super.setOnClickListener(paramOnClickListener);
    if (paramOnClickListener == null) {
      setClickable(false);
    }
    paramOnClickListener = e;
    if (isClickable()) {}
    for (;;)
    {
      paramOnClickListener.setVisibility(i);
      return;
      i = 8;
    }
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    if (TextUtils.isEmpty(paramCharSequence))
    {
      d.setText("");
      d.setVisibility(8);
      return;
    }
    d.setText(paramCharSequence);
    d.setVisibility(0);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    if (TextUtils.isEmpty(paramCharSequence))
    {
      c.setText("");
      c.setVisibility(8);
      return;
    }
    c.setText(paramCharSequence);
    c.setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.MessageAlertBox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */