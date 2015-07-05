package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.content.r;

public abstract interface LoaderManager$LoaderCallbacks<D>
{
  public abstract r<D> onCreateLoader(int paramInt, Bundle paramBundle);
  
  public abstract void onLoadFinished(r<D> paramr, D paramD);
  
  public abstract void onLoaderReset(r<D> paramr);
}

/* Location:
 * Qualified Name:     android.support.v4.app.LoaderManager.LoaderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */