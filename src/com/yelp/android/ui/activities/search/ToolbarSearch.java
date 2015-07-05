package com.yelp.android.ui.activities.search;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.Html;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;

public class ToolbarSearch
  extends LinearLayout
{
  private CharSequence a;
  private CharSequence b;
  private SearchOverlay.OverlayTermsBroadcastReceiver c;
  private TextView d;
  private ImageButton e;
  private at f = new az(this);
  
  public ToolbarSearch(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ToolbarSearch(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ToolbarSearch(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a()
  {
    CharSequence localCharSequence = a;
    Object localObject2 = b;
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = "";
    }
    localObject2 = localCharSequence;
    if (localCharSequence == null) {
      localObject2 = "";
    }
    localObject1 = Html.fromHtml(getContext().getString(2131166891, new Object[] { localObject2, localObject1 }));
    d.setText((CharSequence)localObject1);
  }
  
  public View getFilterButton()
  {
    return e;
  }
  
  public View getTextField()
  {
    return d;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (c != null) {
      c.b(getContext());
    }
    c = new SearchOverlay.OverlayTermsBroadcastReceiver(f, a, b);
    c.a(getContext());
  }
  
  @SuppressLint({"MissingSuperCall"})
  protected void onDetachedFromWindow()
  {
    if (c != null) {
      c.b(getContext());
    }
    super.onDetachedFromWindow();
  }
  
  protected void onFinishInflate()
  {
    super.onFinishInflate();
    d = ((TextView)findViewById(2131494079));
    e = ((ImageButton)findViewById(2131494080));
  }
  
  public void setLocation(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    a();
  }
  
  public void setTerms(CharSequence paramCharSequence)
  {
    a = paramCharSequence;
    a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.ToolbarSearch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */