package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewStub;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.ui.util.PullDownListView;
import com.yelp.android.ui.util.bi;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.cw;
import com.yelp.android.ui.util.dd;

public class k
  extends RelativeLayout
{
  private View a;
  private final View b;
  private WebImageView c;
  private TextView d;
  private o e;
  private Animation f;
  private Animation g;
  private boolean h;
  private boolean i;
  private boolean j;
  private int k;
  private int l;
  private final dd m = new l(this);
  private final dd n = new m(this);
  private final bi o = new n(this);
  
  public k(Context paramContext, int paramInt1, int paramInt2, o paramo, PullDownListView paramPullDownListView)
  {
    super(paramContext);
    a = inflate(paramContext, paramInt1, this);
    c = ((WebImageView)a.findViewById(2131493710));
    d = ((TextView)a.findViewById(2131493711));
    paramContext = (ViewStub)a.findViewById(2131493712);
    paramContext.setLayoutResource(paramInt2);
    b = paramContext.inflate();
    e = paramo;
    k = getResources().getInteger(2131558403);
    l = getResources().getInteger(2131558404);
    a();
    b();
    paramPullDownListView.setPullTarget(b);
  }
  
  public k(Context paramContext, int paramInt, o paramo, PullDownListView paramPullDownListView)
  {
    this(paramContext, 2130903354, paramInt, paramo, paramPullDownListView);
  }
  
  private void a()
  {
    h = false;
    i = false;
    j = false;
    g = AnimationUtils.loadAnimation(getContext(), 2130968604);
    g.setDuration(cw.e);
    g.setAnimationListener(m);
    f = AnimationUtils.loadAnimation(getContext(), 2130968610);
    f.setDuration(cw.e);
    f.setAnimationListener(n);
  }
  
  private void b()
  {
    Object localObject = BitmapFactory.decodeResource(getResources(), 2130838082);
    localObject = new BitmapDrawable(getResources(), (Bitmap)localObject);
    ((BitmapDrawable)localObject).setTileModeXY(Shader.TileMode.REPEAT, Shader.TileMode.REPEAT);
    c.setLoadingDrawable((Drawable)localObject);
    c.setImageDrawable((Drawable)localObject);
  }
  
  public void a(PullDownListView paramPullDownListView)
  {
    paramPullDownListView.setOnPullDownListener(o);
    paramPullDownListView.setPullDownEnabled(true);
  }
  
  public void b(PullDownListView paramPullDownListView)
  {
    if (paramPullDownListView.a())
    {
      paramPullDownListView.b();
      h = false;
      i = false;
      j = false;
      d.setVisibility(4);
      o.a(0.0F);
    }
  }
  
  public View getPanel()
  {
    return a;
  }
  
  public void setPulledPhotoAlpha(int paramInt)
  {
    k = paramInt;
  }
  
  public void setPulledPhotoUrl(String paramString)
  {
    c.setImageUrl(paramString);
    cp.b(c, k);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */