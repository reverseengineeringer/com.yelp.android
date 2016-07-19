package com.yelp.android.ui.activities.settings;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.View.OnClickListener;
import android.view.ViewStub;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Checkable;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.b.a;
import com.yelp.android.ui.util.ay;
import com.yelp.android.ui.widgets.SpannableRelativeLayout;
import com.yelp.android.ui.widgets.c;
import java.util.ArrayList;
import java.util.List;

public class PreferenceView
  extends SpannableRelativeLayout
  implements Checkable
{
  private static final int[] a = { 16842912, 16842911 };
  private static final int[] i = { 16842911 };
  protected final AutoCompleteTextView b;
  protected final ViewStub c;
  private final TextView j;
  private final TextView k;
  private final ViewStub l;
  private boolean m;
  private c n;
  private String o;
  private final int p;
  private final boolean q;
  private final boolean r;
  private a s;
  private List<View.OnClickListener> t = new ArrayList();
  private View.OnClickListener u = new PreferenceView.1(this);
  
  public PreferenceView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PreferenceView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772174);
  }
  
  public PreferenceView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    SparseIntArray localSparseIntArray = new SparseIntArray();
    localSparseIntArray.put(4, 2130903448);
    ay.a(this, paramContext, paramAttributeSet, paramInt, localSparseIntArray);
    j = ((TextView)findViewById(2131690758));
    k = ((TextView)findViewById(2131690761));
    c = ((ViewStub)findViewById(2131690757));
    l = ((ViewStub)findViewById(2131690759));
    b = ((AutoCompleteTextView)findViewById(2131689978));
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.a.PreferenceView, paramInt, paramInt);
    setTitle(paramContext.getText(3));
    setEditText(paramContext.getText(12));
    setIcon(paramContext.getResourceId(5, 0));
    setSubtitle(paramContext.getText(4));
    p = paramContext.getResourceId(7, 0);
    o = paramContext.getString(6);
    q = paramContext.getBoolean(8, false);
    r = paramContext.getBoolean(9, false);
    paramContext.recycle();
  }
  
  private void setIcon(int paramInt)
  {
    if (paramInt != 0)
    {
      localObject = getResources();
      if (!((Resources)localObject).getResourceTypeName(paramInt).equals("layout")) {
        break label64;
      }
      l.setLayoutResource(paramInt);
      l.inflate();
      l.setVisibility(8);
      c.setLayoutResource(paramInt);
      c.inflate();
    }
    label64:
    while (!((Resources)localObject).getResourceTypeName(paramInt).equals("drawable")) {
      return;
    }
    c.setLayoutResource(2130903505);
    l.setLayoutResource(2130903505);
    Object localObject = (ImageView)c.inflate();
    ImageView localImageView = (ImageView)l.inflate();
    ((ImageView)localObject).setImageResource(paramInt);
    localImageView.setImageResource(paramInt);
    localImageView.setVisibility(8);
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
    return q;
  }
  
  public boolean c()
  {
    return r;
  }
  
  public String getKey()
  {
    return o;
  }
  
  public int getReference()
  {
    return p;
  }
  
  public CharSequence getTitle()
  {
    return j.getText();
  }
  
  public a getViewBuilder()
  {
    return s;
  }
  
  public boolean isChecked()
  {
    return m;
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    boolean bool = isChecked();
    int i2;
    int i1;
    label27:
    int[] arrayOfInt;
    if (n != null)
    {
      i2 = 1;
      if (!bool) {
        break label56;
      }
      i1 = paramInt + a.length;
      arrayOfInt = super.onCreateDrawableState(i1);
      if (!bool) {
        break label72;
      }
      mergeDrawableStates(arrayOfInt, a);
    }
    label56:
    label72:
    while (i2 == 0)
    {
      return arrayOfInt;
      i2 = 0;
      break;
      i1 = paramInt;
      if (i2 == 0) {
        break label27;
      }
      i1 = paramInt + i.length;
      break label27;
    }
    mergeDrawableStates(arrayOfInt, i);
    return arrayOfInt;
  }
  
  public boolean performClick()
  {
    toggle();
    return super.performClick();
  }
  
  public void setChecked(boolean paramBoolean)
  {
    if (m != paramBoolean) {}
    for (int i1 = 1;; i1 = 0)
    {
      m = paramBoolean;
      if (i1 != 0)
      {
        refreshDrawableState();
        if (n != null) {
          n.onCheckedChanged(this);
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
      ((android.widget.RelativeLayout.LayoutParams)findViewById(2131690756).getLayoutParams()).getRules()[15] = 0;
      return;
    }
    b.setVisibility(8);
  }
  
  public void setKey(String paramString)
  {
    o = paramString;
  }
  
  public void setOnCheckChangedListener(c paramc)
  {
    n = paramc;
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    super.setOnClickListener(u);
    t.add(paramOnClickListener);
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      k.setText(paramCharSequence);
      k.setVisibility(0);
      if (l.getLayoutResource() != 0) {
        l.setVisibility(4);
      }
      ((android.widget.RelativeLayout.LayoutParams)findViewById(2131690756).getLayoutParams()).getRules()[15] = 0;
      return;
    }
    k.setVisibility(8);
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    j.setText(paramCharSequence);
  }
  
  public void setViewBuilder(a parama)
  {
    s = parama;
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