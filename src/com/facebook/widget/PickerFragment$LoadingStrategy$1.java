package com.facebook.widget;

import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.r;
import com.facebook.FacebookException;

class PickerFragment$LoadingStrategy$1
  implements LoaderManager.LoaderCallbacks<SimpleGraphObjectCursor<T>>
{
  PickerFragment$LoadingStrategy$1(PickerFragment.LoadingStrategy paramLoadingStrategy) {}
  
  public r<SimpleGraphObjectCursor<T>> onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return this$1.onCreateLoader();
  }
  
  public void onLoadFinished(r<SimpleGraphObjectCursor<T>> paramr, SimpleGraphObjectCursor<T> paramSimpleGraphObjectCursor)
  {
    if (paramr != this$1.loader) {
      throw new FacebookException("Received callback for unknown loader.");
    }
    this$1.onLoadFinished((GraphObjectPagingLoader)paramr, paramSimpleGraphObjectCursor);
  }
  
  public void onLoaderReset(r<SimpleGraphObjectCursor<T>> paramr)
  {
    if (paramr != this$1.loader) {
      throw new FacebookException("Received callback for unknown loader.");
    }
    this$1.onLoadReset((GraphObjectPagingLoader)paramr);
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.PickerFragment.LoadingStrategy.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */