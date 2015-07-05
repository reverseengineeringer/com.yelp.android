package com.yelp.android.ui.activities.settings;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.ViewStub;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.yelp.android.b;
import com.yelp.android.ui.util.dj;
import com.yelp.android.ui.widgets.j;

public class PreferenceView
  extends RelativeLayout
  implements Checkable
{
  private static final int[] a = { 16842912, 16842911 };
  private static final int[] d = { 16842911 };
  protected final AutoCompleteTextView b;
  protected final ViewStub c;
  private final TextView e;
  private final TextView f;
  private boolean g;
  private j h;
  private final String i;
  private final int j;
  private final boolean k;
  private final boolean l;
  private final int m;
  
  public PreferenceView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PreferenceView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772120);
  }
  
  public PreferenceView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    SparseIntArray localSparseIntArray = new SparseIntArray();
    localSparseIntArray.put(4, 2130903349);
    dj.a(this, paramContext, paramAttributeSet, paramInt, localSparseIntArray);
    e = ((TextView)findViewById(2131493921));
    f = ((TextView)findViewById(2131493922));
    c = ((ViewStub)findViewById(2131493920));
    b = ((AutoCompleteTextView)findViewById(2131493322));
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.PreferenceView, paramInt, paramInt);
    setTitle(paramContext.getText(4));
    setSubtitle(paramContext.getText(5));
    setEditText(paramContext.getText(14));
    setIcon(paramContext.getResourceId(6, 0));
    j = paramContext.getResourceId(8, 0);
    i = paramContext.getString(7);
    k = paramContext.getBoolean(9, false);
    l = paramContext.getBoolean(10, false);
    m = paramContext.getResourceId(11, 0);
    paramContext.recycle();
  }
  
  public void a()
  {
    b.selectAll();
    b.setAdapter((ArrayAdapter)null);
  }
  
  public boolean addStatesFromChildren()
  {
    return true;
  }
  
  public boolean b()
  {
    return k;
  }
  
  public boolean c()
  {
    return l;
  }
  
  public int getDependency()
  {
    return m;
  }
  
  public String getKey()
  {
    return i;
  }
  
  public int getReference()
  {
    return j;
  }
  
  public CharSequence getTitle()
  {
    return e.getText();
  }
  
  public boolean isChecked()
  {
    return g;
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    boolean bool = isChecked();
    int i1;
    int n;
    label27:
    int[] arrayOfInt;
    if (h != null)
    {
      i1 = 1;
      if (!bool) {
        break label56;
      }
      n = paramInt + a.length;
      arrayOfInt = super.onCreateDrawableState(n);
      if (!bool) {
        break label72;
      }
      mergeDrawableStates(arrayOfInt, a);
    }
    label56:
    label72:
    while (i1 == 0)
    {
      return arrayOfInt;
      i1 = 0;
      break;
      n = paramInt;
      if (i1 == 0) {
        break label27;
      }
      n = paramInt + d.length;
      break label27;
    }
    mergeDrawableStates(arrayOfInt, d);
    return arrayOfInt;
  }
  
  public boolean performClick()
  {
    toggle();
    return super.performClick();
  }
  
  public void setChecked(boolean paramBoolean)
  {
    if (g != paramBoolean) {}
    for (int n = 1;; n = 0)
    {
      g = paramBoolean;
      if (n != 0)
      {
        refreshDrawableState();
        if (h != null) {
          h.onCheckedChanged(this);
        }
      }
      return;
    }
  }
  
  public void setEditText(CharSequence paramCharSequence)
  {
    if (paramCharSequence != null)
    {
      b.setText(paramCharSequence);
      b.setVisibility(0);
      return;
    }
    b.setVisibility(8);
  }
  
  public void setIcon(int paramInt)
  {
    Resources localResources;
    if (paramInt != 0)
    {
      localResources = getResources();
      if (!localResources.getResourceTypeName(paramInt).equals("layout")) {
        break label39;
      }
      c.setLayoutResource(paramInt);
      c.inflate();
    }
    label39:
    while (!localResources.getResourceTypeName(paramInt).equals("drawable")) {
      return;
    }
    c.setLayoutResource(2130903396);
    ((ImageView)c.inflate()).setImageResource(paramInt);
  }
  
  public void setOnCheckChangedListener(j paramj)
  {
    h = paramj;
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    f.setText(paramCharSequence);
    paramCharSequence = (RelativeLayout.LayoutParams)e.getLayoutParams();
    if (!TextUtils.isEmpty(f.getText()))
    {
      f.setVisibility(0);
      paramCharSequence.getRules()[15] = 0;
      return;
    }
    f.setVisibility(8);
    paramCharSequence.addRule(15);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    e.setText(paramCharSequence);
  }
  
  public void toggle()
  {
    if (!isChecked()) {}
    for (boolean bool = true;; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.PreferenceView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */