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
import android.widget.TextView;
import com.yelp.android.serializable.Feedback;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Tip;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.util.x;
import com.yelp.android.ui.widgets.SpannedImageButton;
import com.yelp.android.ui.widgets.WebImageView;
import java.util.List;

public class aw
  extends au<Tip>
{
  private View.OnClickListener a;
  private final String b;
  private final bg c;
  private final x<Tip, Spannable> d = new ax(this);
  private final x<Tip, Spannable> e = new ay(this);
  private final x<Tip, String> f = new az(this);
  
  public aw(String paramString, bg parambg)
  {
    b = paramString;
    c = parambg;
    a(d);
    a(e);
    a(f);
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
    int i = cr.a(a(), paramTip);
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
    int i = cr.a(a(), paramTip);
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
    if (a(paramInt).getUserId().equals(b)) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    boolean bool2 = true;
    int j = 0;
    Context localContext = paramViewGroup.getContext();
    View localView1 = paramView;
    if (paramView == null)
    {
      localView1 = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903377, paramViewGroup, false);
      localView1.setLayoutParams(new AbsListView.LayoutParams(getLayoutParamswidth, getLayoutParamsheight));
      localView1.setTag(new bh(localView1));
    }
    paramView = (bh)localView1.getTag();
    paramViewGroup = a(paramInt);
    Object localObject = c;
    boolean bool3 = paramViewGroup.isTipTemporary();
    View localView2 = j;
    int i;
    if (paramViewGroup.isFirstTip())
    {
      i = 0;
      localView2.setVisibility(i);
      cr.a(k, (Spannable)d.a(paramInt, localContext, paramViewGroup), paramViewGroup);
      ((TextView)localObject).setText(paramViewGroup.getText());
      e.setText(paramViewGroup.getUserName());
      f.setText((CharSequence)f.a(paramInt, localContext, paramViewGroup));
      a.setImageUrl(paramViewGroup.getUserPhotoUrl());
      if ((paramViewGroup.getPhoto() == null) && (paramViewGroup.getEditedBitmap() == null)) {
        break label477;
      }
      b.setVisibility(0);
      if (paramViewGroup.getEditedBitmap() == null) {
        break label460;
      }
      b.setImageBitmap(paramViewGroup.getEditedBitmap());
      label241:
      a.setOnClickListener(new ba(this, paramViewGroup));
      if (!paramViewGroup.getUserId().equals(b)) {
        break label495;
      }
      d.setVisibility(0);
      g.setBackgroundResource(2130837805);
      g.setHint(2131166830);
      d.setOnClickListener(new bb(this, paramViewGroup));
      localObject = d;
      if (bool3) {
        break label489;
      }
      bool1 = true;
      label329:
      ((Button)localObject).setEnabled(bool1);
      label336:
      g.setText((CharSequence)e.a(paramInt, localContext, paramViewGroup));
      g.setOnClickListener(new be(this, paramViewGroup));
      localView1.setOnClickListener(new bf(this, paramViewGroup));
      paramViewGroup = g;
      if (bool3) {
        break label569;
      }
      bool1 = true;
      label400:
      paramViewGroup.setClickable(bool1);
      if (bool3) {
        break label575;
      }
    }
    label460:
    label477:
    label489:
    label495:
    label569:
    label575:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localView1.setClickable(bool1);
      paramView = l;
      i = j;
      if (paramInt == getCount() - 1) {
        i = 4;
      }
      paramView.setVisibility(i);
      return localView1;
      i = 8;
      break;
      b.setImageUrl(paramViewGroup.getPhoto().getThumbnailUrl());
      break label241;
      b.setVisibility(8);
      break label241;
      bool1 = false;
      break label329;
      localObject = paramViewGroup.getFeedback();
      h.setChecked(((Feedback)localObject).isLikedByUser());
      h.setOnClickListener(new bc(this, paramViewGroup, paramView));
      i.setOnClickListener(new bd(this, paramViewGroup, paramView));
      d.setVisibility(8);
      g.setBackgroundResource(2130837802);
      break label336;
      bool1 = false;
      break label400;
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
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */