package android.support.v4.widget;

import android.view.View;
import android.widget.ListView;

public class ah
  extends a
{
  private final ListView a;
  
  public ah(ListView paramListView)
  {
    super(paramListView);
    a = paramListView;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    ListView localListView = a;
    paramInt1 = localListView.getFirstVisiblePosition();
    if (paramInt1 == -1) {}
    View localView;
    do
    {
      return;
      localView = localListView.getChildAt(0);
    } while (localView == null);
    localListView.setSelectionFromTop(paramInt1, localView.getTop() - paramInt2);
  }
  
  public boolean e(int paramInt)
  {
    return false;
  }
  
  public boolean f(int paramInt)
  {
    ListView localListView = a;
    int i = localListView.getCount();
    if (i == 0) {}
    int j;
    int k;
    do
    {
      return false;
      j = localListView.getChildCount();
      k = localListView.getFirstVisiblePosition();
      if (paramInt <= 0) {
        break;
      }
    } while ((k + j >= i) && (localListView.getChildAt(j - 1).getBottom() <= localListView.getHeight()));
    do
    {
      return true;
      if (paramInt >= 0) {
        break;
      }
    } while ((k > 0) || (localListView.getChildAt(0).getTop() < 0));
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */