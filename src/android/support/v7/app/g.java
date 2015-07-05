package android.support.v7.app;

import android.support.v4.view.bn;
import android.support.v4.view.fa;
import android.view.View;

class g
  implements bn
{
  g(ActionBarActivityDelegateBase paramActionBarActivityDelegateBase) {}
  
  public fa a(View paramView, fa paramfa)
  {
    int i = paramfa.b();
    int j = ActionBarActivityDelegateBase.c(a, i);
    paramView = paramfa;
    if (i != j) {
      paramView = paramfa.a(paramfa.a(), j, paramfa.c(), paramfa.d());
    }
    return paramView;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */