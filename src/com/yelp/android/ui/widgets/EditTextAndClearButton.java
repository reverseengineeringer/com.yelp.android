package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView.OnEditorActionListener;

public class EditTextAndClearButton
  extends RelativeLayout
{
  private ImageView a;
  private EditText b;
  
  public EditTextAndClearButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public EditTextAndClearButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet, paramInt);
  }
  
  public void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    a = new ImageView(paramContext, paramAttributeSet, paramInt);
    a.setId(2131492965);
    a.setVisibility(8);
    b = new EditText(paramContext, paramAttributeSet);
    b.setId(2131493322);
    paramContext = new RelativeLayout.LayoutParams(-2, -2);
    paramContext.addRule(11);
    paramAttributeSet = getResources();
    paramInt = (int)paramAttributeSet.getDimension(2131427498);
    int i = (int)paramAttributeSet.getDimension(2131427498);
    int j = (int)paramAttributeSet.getDimension(2131427501);
    a.setPadding(0, paramInt, j, i);
    a.setImageDrawable(paramAttributeSet.getDrawable(2130838348));
    paramAttributeSet = new RelativeLayout.LayoutParams(-1, -1);
    paramAttributeSet.addRule(9);
    paramAttributeSet.addRule(0, a.getId());
    a.setBackgroundResource(0);
    b.setBackgroundResource(0);
    b.setPadding(0, 0, 0, 0);
    addView(b, paramAttributeSet);
    addView(a, paramContext);
    b.addTextChangedListener(new g(this));
    a.setOnClickListener(new h(this));
  }
  
  public void a(TextWatcher paramTextWatcher)
  {
    b.addTextChangedListener(paramTextWatcher);
  }
  
  public EditText getEditText()
  {
    return b;
  }
  
  public Editable getText()
  {
    return b.getText();
  }
  
  public void setHint(int paramInt)
  {
    b.setHint(paramInt);
  }
  
  public void setOnEditorActionListener(TextView.OnEditorActionListener paramOnEditorActionListener)
  {
    b.setOnEditorActionListener(paramOnEditorActionListener);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.EditTextAndClearButton
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */