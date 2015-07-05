package android.support.v4.app;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import com.yelp.android.e.a;
import java.util.ArrayList;

class BackStackRecord$2
  implements ViewTreeObserver.OnPreDrawListener
{
  BackStackRecord$2(BackStackRecord paramBackStackRecord, View paramView, Object paramObject, ArrayList paramArrayList, BackStackRecord.TransitionState paramTransitionState, boolean paramBoolean, Fragment paramFragment1, Fragment paramFragment2) {}
  
  public boolean onPreDraw()
  {
    val$sceneRoot.getViewTreeObserver().removeOnPreDrawListener(this);
    if (val$sharedElementTransition != null)
    {
      FragmentTransitionCompat21.removeTargets(val$sharedElementTransition, val$sharedElementTargets);
      val$sharedElementTargets.clear();
      a locala = BackStackRecord.access$000(this$0, val$state, val$isBack, val$inFragment);
      val$sharedElementTargets.add(val$state.nonExistentView);
      val$sharedElementTargets.addAll(locala.values());
      FragmentTransitionCompat21.addTargets(val$sharedElementTransition, val$sharedElementTargets);
      BackStackRecord.access$100(this$0, locala, val$state);
      BackStackRecord.access$200(this$0, val$state, val$inFragment, val$outFragment, val$isBack, locala);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.BackStackRecord.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */