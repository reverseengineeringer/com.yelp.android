package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.text.Spannable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView.LayoutParams;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.TextView;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Tip;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.util.m;
import com.yelp.android.ui.util.w;
import com.yelp.android.ui.widgets.SpannedImageButton;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.List;

public class d
  extends w<Tip>
{
  private View.OnClickListener a;
  private final String b;
  private final a c;
  private final m<Tip, Spannable> d = new d.1(this);
  private final m<Tip, String> e = new d.2(this);
  
  public d(String paramString, a parama)
  {
    b = paramString;
    c = parama;
    a(d);
    a(e);
  }
  
  public Tip a(int paramInt)
  {
    if (paramInt < super.getCount()) {
      return (Tip)super.getItem(paramInt);
    }
    return null;
  }
  
  public List<Tip> a()
  {
    return super.a();
  }
  
  public void a(Tip paramTip)
  {
    int i = as.a(a(), paramTip);
    if (i >= 0)
    {
      a().set(i, paramTip);
      notifyDataSetChanged();
    }
  }
  
  public boolean areAllItemsEnabled()
  {
    return false;
  }
  
  public void b(Tip paramTip)
  {
    int i = as.a(a(), paramTip);
    if (i >= 0)
    {
      a().remove(i);
      notifyDataSetChanged();
    }
  }
  
  public int getCount()
  {
    int j = super.getCount();
    if (a != null) {}
    for (int i = 1;; i = 0) {
      return i + j;
    }
  }
  
  public long getItemId(int paramInt)
  {
    if (paramInt < super.getCount()) {
      return super.getItemId(paramInt);
    }
    return System.currentTimeMillis();
  }
  
  public int getItemViewType(int paramInt)
  {
    if (a(paramInt).b().equals(b)) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    boolean bool2 = true;
    Context localContext = paramViewGroup.getContext();
    View localView1 = paramView;
    if (paramView == null)
    {
      localView1 = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903476, paramViewGroup, false);
      localView1.setLayoutParams(new AbsListView.LayoutParams(getLayoutParamswidth, getLayoutParamsheight));
      localView1.setTag(new d.b(localView1));
    }
    paramView = (d.b)localView1.getTag();
    paramViewGroup = a(paramInt);
    Object localObject = c;
    boolean bool3 = paramViewGroup.j();
    View localView2 = j;
    int i;
    if (paramViewGroup.m())
    {
      i = 0;
      localView2.setVisibility(i);
      ((TextView)localObject).setText(paramViewGroup.e());
      e.setText(paramViewGroup.h());
      f.setText((CharSequence)e.a(paramInt, localContext, paramViewGroup));
      a.setImageUrl(paramViewGroup.n());
      if ((paramViewGroup.r() == null) && (paramViewGroup.f() == null)) {
        break label422;
      }
      b.setVisibility(0);
      if (paramViewGroup.f() == null) {
        break label405;
      }
      b.setImageBitmap(paramViewGroup.f());
      label216:
      a.setOnClickListener(new d.3(this, paramViewGroup));
      if (!paramViewGroup.b().equals(b)) {
        break label440;
      }
      d.setVisibility(0);
      g.setBackgroundResource(2130837898);
      g.setHint(2131166793);
      d.setOnClickListener(new d.4(this, paramViewGroup));
      localObject = d;
      if (bool3) {
        break label434;
      }
      bool1 = true;
      label302:
      ((Button)localObject).setEnabled(bool1);
      label309:
      g.setText((CharSequence)d.a(paramInt, localContext, paramViewGroup));
      g.setOnClickListener(new d.7(this, paramViewGroup));
      localView1.setOnClickListener(new d.8(this, paramViewGroup));
      paramView = g;
      if (bool3) {
        break label514;
      }
      bool1 = true;
      label373:
      paramView.setClickable(bool1);
      if (bool3) {
        break label520;
      }
    }
    label405:
    label422:
    label434:
    label440:
    label514:
    label520:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localView1.setClickable(bool1);
      return localView1;
      i = 8;
      break;
      b.setImageUrl(paramViewGroup.r().f());
      break label216;
      b.setVisibility(8);
      break label216;
      bool1 = false;
      break label302;
      localObject = paramViewGroup.g();
      h.setChecked(((Feedback)localObject).c());
      h.setOnClickListener(new d.5(this, paramViewGroup, paramView));
      i.setOnClickListener(new d.6(this, paramViewGroup, paramView));
      d.setVisibility(8);
      g.setBackgroundResource(2130837895);
      break label309;
      bool1 = false;
      break label373;
    }
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return false;
  }
  
  public static abstract interface a
  {
    public abstract void a(Tip paramTip);
    
    public abstract void a(Tip paramTip, Checkable paramCheckable);
    
    public abstract void a(Tip paramTip, SpannedImageButton paramSpannedImageButton);
    
    public abstract void b(Tip paramTip);
    
    public abstract void c(Tip paramTip);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */