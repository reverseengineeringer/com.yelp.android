package android.support.v4.widget;

class g
  implements Runnable
{
  g(ContentLoadingProgressBar paramContentLoadingProgressBar) {}
  
  public void run()
  {
    ContentLoadingProgressBar.a(a, false);
    ContentLoadingProgressBar.a(a, -1L);
    a.setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */