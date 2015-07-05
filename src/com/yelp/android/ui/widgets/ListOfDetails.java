package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.text.Spanned;
import android.text.TextUtils.TruncateAt;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

public class ListOfDetails
  extends SpannableLinearLayout
{
  private View g;
  private boolean h = false;
  
  public ListOfDetails(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ListOfDetails(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOrientation(1);
  }
  
  public TextView a(View paramView)
  {
    return (TextView)paramView.findViewById(2131493346);
  }
  
  public void a()
  {
    if (g == null) {
      throw new IllegalStateException("We're calling finishLastRow without adding any rows!");
    }
    ((SpannableRelativeLayout)g.findViewById(2131493344)).setRight(true);
    h = true;
  }
  
  public void a(TextView paramTextView)
  {
    paramTextView.setLines(1);
    paramTextView.setHorizontallyScrolling(true);
    paramTextView.setEllipsize(TextUtils.TruncateAt.END);
  }
  
  public void a(String paramString)
  {
    addView(LayoutInflater.from(getContext()).inflate(2130903131, this, false));
    ((TextView)findViewById(2131493340)).setText(paramString);
  }
  
  public void a(String paramString, CharSequence paramCharSequence)
  {
    View localView = getNewRow();
    b(localView).setText(paramString);
    paramString = a(localView);
    paramString.setText(paramCharSequence);
    if ((paramCharSequence instanceof Spanned))
    {
      paramCharSequence = (ClickableSpan[])((Spanned)paramCharSequence).getSpans(0, paramCharSequence.length(), ClickableSpan.class);
      if ((paramCharSequence != null) && (paramCharSequence.length > 0))
      {
        paramString.setMovementMethod(LinkMovementMethod.getInstance());
        paramString.setTextColor(getContext().getResources().getColorStateList(2131362065));
      }
    }
  }
  
  public TextView b(View paramView)
  {
    return (TextView)paramView.findViewById(2131493340);
  }
  
  public void b(String paramString)
  {
    paramString = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    getContext().startActivity(paramString);
  }
  
  public View getNewRow()
  {
    if (h) {
      throw new IllegalStateException("PanelMoreInfo is already finished. No more new rows should be added.");
    }
    View localView = LayoutInflater.from(getContext()).inflate(2130903133, this, false);
    addView(localView);
    g = localView;
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ListOfDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */