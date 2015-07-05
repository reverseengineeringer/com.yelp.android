package com.yelp.android.ui.activities.mutatebiz;

import android.net.Uri;
import android.os.Parcelable;
import android.view.View.OnClickListener;
import java.util.ArrayList;

public abstract interface ah
{
  public abstract void a(Uri paramUri);
  
  public abstract void a(CharSequence paramCharSequence1, CharSequence paramCharSequence2);
  
  public abstract void a(CharSequence paramCharSequence, ArrayList<? extends Parcelable> paramArrayList);
  
  public abstract void a(CharSequence paramCharSequence, Parcelable... paramVarArgs);
  
  public abstract Uri getAttachment();
  
  public abstract CharSequence getCharSequenceData();
  
  public abstract Parcelable[] getParcelableArrayData();
  
  public abstract <T extends Parcelable> ArrayList<T> getParcelableArrayListData();
  
  public abstract boolean performClick();
  
  public abstract void setOnClickListener(View.OnClickListener paramOnClickListener);
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */