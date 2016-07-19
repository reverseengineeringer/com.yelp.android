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
  private View b;
  private boolean c = false;
  
  public ListOfDetails(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ListOfDetails(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOrientation(1);
  }
  
  public View a(String paramString, CharSequence paramCharSequence)
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
        paramString.setTextColor(getContext().getResources().getColorStateList(2131624294));
      }
    }
    return localView;
  }
  
  public TextView a(View paramView)
  {
    return (TextView)paramView.findViewById(2131690014);
  }
  
  public void a()
  {
    if (b == null) {
      throw new IllegalStateException("We're calling finishLastRow without adding any rows!");
    }
    ((SpannableRelativeLayout)b.findViewById(2131690011)).setRight(true);
    c = true;
  }
  
  public void a(TextView paramTextView)
  {
    paramTextView.setLines(1);
    paramTextView.setHorizontallyScrolling(true);
    paramTextView.setEllipsize(TextUtils.TruncateAt.END);
  }
  
  public void a(String paramString)
  {
    addView(LayoutInflater.from(getContext()).inflate(2130903144, this, false));
    ((TextView)findViewById(2131690007)).setText(paramString);
  }
  
  public TextView b(View paramView)
  {
    return (TextView)paramView.findViewById(2131690007);
  }
  
  public void b(String paramString)
  {
    paramString = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    getContext().startActivity(paramString);
  }
  
  public View getNewRow()
  {
    if (c) {
      throw new IllegalStateException("PanelMoreInfo is already finished. No more new rows should be added.");
    }
    View localView = LayoutInflater.from(getContext()).inflate(2130903146, this, false);
    addView(localView);
    b = localView;
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ListOfDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */