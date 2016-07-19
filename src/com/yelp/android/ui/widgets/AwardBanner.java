package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.Html;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.b.a;
import com.yelp.android.ui.util.ay;

public class AwardBanner
  extends RelativeLayout
{
  public AwardBanner(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public AwardBanner(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Object localObject = new SparseIntArray();
    ((SparseIntArray)localObject).put(4, 2130903137);
    ay.a(this, paramContext, paramAttributeSet, paramInt, (SparseIntArray)localObject);
    paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, b.a.AwardBanner, paramInt, paramInt);
    paramInt = paramAttributeSet.getColor(4, getResources().getColor(2131623980));
    localObject = (TextView)findViewById(2131689992);
    ((TextView)localObject).setTextAppearance(paramContext, paramAttributeSet.getResourceId(1, 0));
    ((TextView)localObject).setTextColor(paramInt);
    ((TextView)localObject).setText(Html.fromHtml(paramAttributeSet.getString(0)));
    localObject = (TextView)findViewById(2131689993);
    ((TextView)localObject).setTextAppearance(paramContext, paramAttributeSet.getResourceId(3, 0));
    ((TextView)localObject).setTextColor(paramInt);
    ((TextView)localObject).setText(paramAttributeSet.getString(2));
    paramContext = (ImageView)findViewById(2131689994);
    paramContext.setImageResource(paramAttributeSet.getResourceId(6, 0));
    paramContext.setPadding(paramContext.getPaddingLeft(), paramContext.getPaddingTop(), paramContext.getPaddingRight(), paramAttributeSet.getDimensionPixelSize(7, paramContext.getPaddingBottom()));
    findViewById(2131689991).setBackgroundResource(paramAttributeSet.getResourceId(5, 0));
    paramAttributeSet.recycle();
  }
  
  public void setRightText(String paramString)
  {
    ((TextView)findViewById(2131689993)).setText(paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.AwardBanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */