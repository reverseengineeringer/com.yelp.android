package com.yelp.android.ui.activities.drawer;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.view.View;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class e
  extends AnimatorListenerAdapter
{
  e(a parama) {}
  
  public void onAnimationEnd(Animator paramAnimator)
  {
    super.onAnimationEnd(paramAnimator);
    AppData.a(EventIri.DinoFinished);
    a.a(a).setVisibility(0);
    paramAnimator = ObjectAnimator.ofFloat(a.a(a), View.TRANSLATION_Y, new float[] { a.a(a).getHeight(), 0.0F });
    paramAnimator.setDuration(AppData.b().getResources().getInteger(2131558407));
    paramAnimator.start();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.drawer.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */