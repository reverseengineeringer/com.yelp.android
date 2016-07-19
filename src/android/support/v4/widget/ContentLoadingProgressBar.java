package android.support.v4.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;

public class ContentLoadingProgressBar
  extends ProgressBar
{
  private long a = -1L;
  private boolean b = false;
  private boolean c = false;
  private boolean d = false;
  private final Runnable e = new Runnable()
  {
    public void run()
    {
      ContentLoadingProgressBar.a(ContentLoadingProgressBar.this, false);
      ContentLoadingProgressBar.a(ContentLoadingProgressBar.this, -1L);
      setVisibility(8);
    }
  };
  private final Runnable f = new Runnable()
  {
    public void run()
    {
      ContentLoadingProgressBar.b(ContentLoadingProgressBar.this, false);
      if (!ContentLoadingProgressBar.a(ContentLoadingProgressBar.this))
      {
        ContentLoadingProgressBar.a(ContentLoadingProgressBar.this, System.currentTimeMillis());
        setVisibility(0);
      }
    }
  };
  
  public ContentLoadingProgressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0);
  }
  
  private void a()
  {
    removeCallbacks(e);
    removeCallbacks(f);
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    a();
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    a();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ContentLoadingProgressBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */