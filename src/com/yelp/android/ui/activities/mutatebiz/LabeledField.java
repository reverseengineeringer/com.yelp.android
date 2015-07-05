package com.yelp.android.ui.activities.mutatebiz;

import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.b;
import com.yelp.android.ui.util.dj;
import java.io.Serializable;
import java.util.ArrayList;

public class LabeledField
  extends RelativeLayout
  implements ah, y
{
  private Field a;
  private TextView b;
  
  public LabeledField(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public LabeledField(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2131689873);
  }
  
  public LabeledField(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Object localObject = new SparseIntArray();
    ((SparseIntArray)localObject).put(4, 2130903320);
    dj.a(this, paramContext, paramAttributeSet, paramInt, (SparseIntArray)localObject);
    a = ((Field)findViewById(2131493870));
    b = ((TextView)findViewById(2131493868));
    a.setListener(this);
    localObject = paramContext.obtainStyledAttributes(paramAttributeSet, b.PanelLabelValue, paramInt, paramInt);
    b.setHint(((TypedArray)localObject).getText(0));
    ((TypedArray)localObject).recycle();
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.AddBusinessField, paramInt, paramInt);
    a.setAttributes(paramContext);
    paramContext.recycle();
  }
  
  public void a(Uri paramUri)
  {
    a.a(paramUri);
  }
  
  public void a(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    a.a(paramCharSequence1, paramCharSequence2);
  }
  
  public void a(CharSequence paramCharSequence, ArrayList<? extends Parcelable> paramArrayList)
  {
    a.a(paramCharSequence, paramArrayList);
  }
  
  public void a(CharSequence paramCharSequence, Parcelable... paramVarArgs)
  {
    a.a(paramCharSequence, paramVarArgs);
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    TextView localTextView = b;
    if (((paramBoolean1) || (paramBoolean2)) && (!TextUtils.isEmpty(a.getText()))) {}
    for (int i = 0;; i = 8)
    {
      localTextView.setVisibility(i);
      return;
    }
  }
  
  public Uri getAttachment()
  {
    return a.getAttachment();
  }
  
  public CharSequence getCharSequenceData()
  {
    return a.getCharSequenceData();
  }
  
  public Parcelable[] getParcelableArrayData()
  {
    return a.getParcelableArrayData();
  }
  
  public <T extends Parcelable> ArrayList<T> getParcelableArrayListData()
  {
    return a.getParcelableArrayListData();
  }
  
  public <T extends Parcelable> T getParcelableData()
  {
    return a.getParcelableData();
  }
  
  public <T extends Serializable> T getSerializable()
  {
    return a.getSerializable();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.LabeledField
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */