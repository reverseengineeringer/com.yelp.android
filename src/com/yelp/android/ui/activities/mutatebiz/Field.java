package com.yelp.android.ui.activities.mutatebiz;

import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.TextView;
import com.yelp.android.b;
import java.io.Serializable;
import java.util.ArrayList;

public class Field
  extends TextView
  implements ah
{
  protected Bundle a = new Bundle();
  private int b;
  private int c;
  private int d;
  private y e;
  
  public Field(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public Field(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842884);
  }
  
  public Field(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.AddBusinessField, paramInt, paramInt);
    setAttributes(paramContext);
    paramContext.recycle();
  }
  
  private boolean a()
  {
    return a.getParcelable("key.attachment") != null;
  }
  
  private boolean b()
  {
    return a.get("key.data") != null;
  }
  
  public void a(Uri paramUri)
  {
    a.putParcelable("key.attachment", paramUri);
    a(getText());
  }
  
  protected void a(CharSequence paramCharSequence)
  {
    if ((!b()) || (TextUtils.isEmpty(paramCharSequence))) {}
    for (int i = b;; i = c)
    {
      if (a()) {
        i = d;
      }
      setCompoundDrawablesWithIntrinsicBounds(i, 0, 0, 0);
      if (e != null) {
        e.a(b(), a());
      }
      return;
    }
  }
  
  public void a(CharSequence paramCharSequence, Parcelable paramParcelable)
  {
    a.putParcelable("key.data", paramParcelable);
    setText(paramCharSequence);
  }
  
  public void a(CharSequence paramCharSequence1, CharSequence paramCharSequence2)
  {
    a.putCharSequence("key.data", paramCharSequence2);
    setText(paramCharSequence1);
  }
  
  public void a(CharSequence paramCharSequence, ArrayList<? extends Parcelable> paramArrayList)
  {
    a.putParcelableArrayList("key.data", paramArrayList);
    setText(paramCharSequence);
  }
  
  public void a(CharSequence paramCharSequence, Parcelable... paramVarArgs)
  {
    a.putParcelableArray("key.data", paramVarArgs);
    setText(paramCharSequence);
  }
  
  public Uri getAttachment()
  {
    return (Uri)a.getParcelable("key.attachment");
  }
  
  public CharSequence getCharSequenceData()
  {
    CharSequence localCharSequence = a.getCharSequence("key.data");
    if (!TextUtils.isEmpty(localCharSequence)) {
      return localCharSequence;
    }
    return "";
  }
  
  public Parcelable[] getParcelableArrayData()
  {
    return a.getParcelableArray("key.data");
  }
  
  public <T extends Parcelable> ArrayList<T> getParcelableArrayListData()
  {
    return a.getParcelableArrayList("key.data");
  }
  
  public <T extends Parcelable> T getParcelableData()
  {
    return a.getParcelable("key.data");
  }
  
  public <T extends Serializable> T getSerializable()
  {
    return a.getSerializable("key.data");
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    a = ((Bundle)paramParcelable);
    super.onRestoreInstanceState(a.getParcelable("key.data.parent"));
  }
  
  public Parcelable onSaveInstanceState()
  {
    Parcelable localParcelable = super.onSaveInstanceState();
    a.putParcelable("key.data.parent", localParcelable);
    return a;
  }
  
  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    if (a != null) {
      a(paramCharSequence);
    }
  }
  
  void setAttributes(TypedArray paramTypedArray)
  {
    b = paramTypedArray.getResourceId(0, 0);
    c = paramTypedArray.getResourceId(1, 0);
    d = paramTypedArray.getResourceId(2, 0);
    setHint(paramTypedArray.getText(3));
    a(getText(), (Parcelable)null);
  }
  
  public void setListener(y paramy)
  {
    e = paramy;
    if (e != null) {
      e.a(b(), a());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.Field
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */