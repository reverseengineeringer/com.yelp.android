package android.support.v4.widget;

class ContentLoadingProgressBar$2
  implements Runnable
{
  ContentLoadingProgressBar$2(ContentLoadingProgressBar paramContentLoadingProgressBar) {}
  
  public void run()
  {
    ContentLoadingProgressBar.b(a, false);
    if (!ContentLoadingProgressBar.a(a))
    {
      ContentLoadingProgressBar.a(a, System.currentTimeMillis());
      a.setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ContentLoadingProgressBar.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */