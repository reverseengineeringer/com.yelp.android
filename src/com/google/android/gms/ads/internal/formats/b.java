package com.google.android.gms.ads.internal.formats;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.he;
import java.util.Iterator;
import java.util.List;

@fv
class b
  extends RelativeLayout
{
  private static final float[] a = { 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F };
  private final RelativeLayout b;
  private AnimationDrawable c;
  
  public b(Context paramContext, a parama)
  {
    super(paramContext);
    zzx.zzz(parama);
    Object localObject1 = new RelativeLayout.LayoutParams(-2, -2);
    ((RelativeLayout.LayoutParams)localObject1).addRule(10);
    ((RelativeLayout.LayoutParams)localObject1).addRule(11);
    Object localObject2 = new ShapeDrawable(new RoundRectShape(a, null, null));
    ((ShapeDrawable)localObject2).getPaint().setColor(parama.c());
    b = new RelativeLayout(paramContext);
    b.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    s.g().a(b, (Drawable)localObject2);
    localObject1 = new RelativeLayout.LayoutParams(-2, -2);
    if (!TextUtils.isEmpty(parama.a()))
    {
      localObject2 = new RelativeLayout.LayoutParams(-2, -2);
      TextView localTextView = new TextView(paramContext);
      localTextView.setLayoutParams((ViewGroup.LayoutParams)localObject2);
      localTextView.setId(1195835393);
      localTextView.setTypeface(Typeface.DEFAULT);
      localTextView.setText(parama.a());
      localTextView.setTextColor(parama.d());
      localTextView.setTextSize(parama.e());
      localTextView.setPadding(v.a().a(paramContext, 4), 0, v.a().a(paramContext, 4), 0);
      b.addView(localTextView);
      ((RelativeLayout.LayoutParams)localObject1).addRule(1, localTextView.getId());
    }
    paramContext = new ImageView(paramContext);
    paramContext.setLayoutParams((ViewGroup.LayoutParams)localObject1);
    paramContext.setId(1195835394);
    localObject1 = parama.b();
    if (((List)localObject1).size() > 1)
    {
      c = new AnimationDrawable();
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Drawable)((Iterator)localObject1).next();
        c.addFrame((Drawable)localObject2, parama.f());
      }
      s.g().a(paramContext, c);
    }
    for (;;)
    {
      b.addView(paramContext);
      addView(b);
      return;
      if (((List)localObject1).size() == 1) {
        paramContext.setImageDrawable((Drawable)((List)localObject1).get(0));
      }
    }
  }
  
  public ViewGroup a()
  {
    return b;
  }
  
  public void onAttachedToWindow()
  {
    if (c != null) {
      c.start();
    }
    super.onAttachedToWindow();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.formats.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */