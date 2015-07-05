package com.yelp.android.ui.panels;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.fh;
import com.yelp.android.serializable.ReviewSuggestion;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.reviews.ActivityReviewWrite;
import com.yelp.android.ui.activities.reviews.ReviewSource;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.ui.activities.reviews.StarsView;
import com.yelp.android.ui.activities.reviews.StarsView.StarSize;
import com.yelp.android.ui.util.cw;
import com.yelp.android.ui.util.dd;
import com.yelp.android.webimageview.WebImageView;
import java.util.Map;

public class ak
  extends RelativeLayout
{
  private final View a;
  private VelocityTracker b;
  private ReviewSuggestion c;
  private at d;
  private IriSource e;
  private float f;
  private boolean g;
  private boolean h;
  private StarsView i;
  private TextView j;
  private TextView k;
  private TextView l;
  private WebImageView m;
  private ImageView n;
  private final dd o = new ar(this);
  
  public ak(Context paramContext, ReviewSuggestion paramReviewSuggestion, at paramat, IriSource paramIriSource)
  {
    super(paramContext);
    d = paramat;
    e = paramIriSource;
    LayoutInflater.from(paramContext).inflate(2130903444, this);
    a = findViewById(2131494111);
    j = ((TextView)findViewById(2131493020));
    k = ((TextView)findViewById(2131494113));
    n = ((ImageView)findViewById(2131494112));
    l = ((TextView)findViewById(2131494115));
    m = ((WebImageView)findViewById(2131493648));
    b();
    findViewById(2131493402).setOnClickListener(new al(this));
    findViewById(2131494116).setOnClickListener(null);
    setSuggestion(paramReviewSuggestion);
  }
  
  private String a(String paramString)
  {
    return paramString.substring("bundle://".length());
  }
  
  private void a(float paramFloat)
  {
    int i2;
    if (paramFloat > 0.0F)
    {
      paramFloat = Math.max(paramFloat, 1.0F);
      i2 = a.getLayoutParams()).leftMargin;
      if (paramFloat <= 0.0F) {
        break label96;
      }
    }
    label96:
    for (int i1 = a.getWidth() - i2;; i1 = (a.getWidth() + i2) * -1)
    {
      aq localaq = new aq(this, i2, i1);
      localaq.setDuration(Math.abs((i1 / paramFloat)));
      localaq.setAnimationListener(o);
      a.startAnimation(localaq);
      return;
      paramFloat = Math.min(paramFloat, -1.0F);
      break;
    }
  }
  
  private void a(int paramInt)
  {
    if (h) {
      return;
    }
    Object localObject = e.getMapWithParameter();
    ((Map)localObject).put("business_id", getBusiness().getId());
    AppData.a(EventIri.ReviewSuggestionOpened, (Map)localObject);
    localObject = ActivityReviewWrite.b(getContext(), getBusiness(), paramInt, ReviewSource.PostReviewYNRA);
    getContext().startActivity(ActivityLogin.a(getContext(), 2131166786, 2131166048, (Intent)localObject));
    d.a(this);
  }
  
  private void b()
  {
    i = ((StarsView)findViewById(2131493525));
    i.setStarSize(StarsView.StarSize.MEDIUM);
    i.setOnStarsClicked(new am(this));
    i.setOnActionDown(new an(this));
    findViewById(2131494114).setOnClickListener(new ao(this));
  }
  
  private void c()
  {
    new fh(getBusiness().getId(), null).execute(new Void[0]);
    AppData.a(EventIri.ReviewSuggestionRemoved, "business_id", getBusiness().getId());
  }
  
  private void d()
  {
    if (!h) {
      a.startAnimation(cw.c(getContext(), o));
    }
  }
  
  public boolean a()
  {
    return h;
  }
  
  public YelpBusiness getBusiness()
  {
    return c.getBusiness();
  }
  
  public ReviewSuggestion getSuggestion()
  {
    return c;
  }
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (h) {}
    do
    {
      int i1;
      do
      {
        do
        {
          return true;
          if (paramMotionEvent.getAction() == 0)
          {
            a.setPressed(true);
            f = paramMotionEvent.getRawX();
            b = VelocityTracker.obtain();
            return true;
          }
          if (paramMotionEvent.getAction() != 2) {
            break;
          }
        } while ((!g) && (Math.abs(f - paramMotionEvent.getRawX()) <= 20.0F));
        FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -2);
        i1 = (int)(paramMotionEvent.getRawX() - f);
        leftMargin = i1;
        rightMargin = (i1 * -1);
        a.setLayoutParams(localLayoutParams);
        b.addMovement(paramMotionEvent);
      } while (g);
      d.b(this);
      g = true;
      return true;
      if (((paramMotionEvent.getAction() == 1) || (paramMotionEvent.getAction() == 3)) && (g))
      {
        a.setPressed(false);
        b.computeCurrentVelocity(1);
        float f1 = b.getXVelocity();
        b.recycle();
        if (Math.abs(f1) > 2.0F) {
          a(f1);
        }
        for (;;)
        {
          d.a();
          g = false;
          return true;
          i1 = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay().getWidth();
          if (Math.abs(paramMotionEvent.getRawX() - f) > i1 / 4.0D)
          {
            a(f1);
          }
          else
          {
            paramMotionEvent = new ap(this, a.getLayoutParams()).leftMargin);
            paramMotionEvent.setDuration(200L);
            a.startAnimation(paramMotionEvent);
          }
        }
      }
    } while (paramMotionEvent.getAction() != 1);
    a.setPressed(false);
    a(i.getNumStars());
    return true;
  }
  
  public void setCallback(at paramat)
  {
    d = paramat;
  }
  
  public void setSuggestion(ReviewSuggestion paramReviewSuggestion)
  {
    String str1 = a(paramReviewSuggestion.getImageUrl());
    String str2 = paramReviewSuggestion.getReviewActivity();
    c = paramReviewSuggestion;
    i.setNumStars(c.getLatestReviewRating());
    j.setText(getBusiness().getDisplayName());
    k.setText(paramReviewSuggestion.getReasonText());
    n.setImageResource(WebImageView.getResourceForName(getContext(), str1));
    m.setImageUrl(getBusiness().getPhotoUrl(), 2130837648);
    if ((str2 != null) && (str2.equals(ReviewState.DRAFTED.getDescription()))) {
      l.setText(2131165827);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */