package com.ooyala.android;

import java.util.List;

class ChannelSet$NextChildrenRunner
  implements Runnable
{
  private PaginatedItemListener _listener = null;
  
  public ChannelSet$NextChildrenRunner(ChannelSet paramChannelSet, PaginatedItemListener paramPaginatedItemListener)
  {
    _listener = paramPaginatedItemListener;
  }
  
  public void run()
  {
    PaginatedItemResponse localPaginatedItemResponse = this$0._api.contentTreeNext(this$0);
    if (localPaginatedItemResponse == null)
    {
      _listener.onItemsFetched(-1, 0, new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_FAILED, "Null response"));
      this$0._isFetchingMoreChildren = false;
      return;
    }
    if (firstIndex < 0)
    {
      _listener.onItemsFetched(firstIndex, count, new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_CONTENT_TREE_NEXT_FAILED, "No additional children found"));
      this$0._isFetchingMoreChildren = false;
      return;
    }
    List localList = ContentItem.getEmbedCodes(this$0._channels.subList(firstIndex, firstIndex + count));
    try
    {
      if ((this$0._api.authorizeEmbedCodes(localList, this$0)) && (this$0._api.fetchMetadataForEmbedCodes(localList, this$0))) {
        _listener.onItemsFetched(firstIndex, count, null);
      }
      for (;;)
      {
        this$0._isFetchingMoreChildren = false;
        return;
        _listener.onItemsFetched(firstIndex, count, new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_FAILED, "Additional child authorization failed"));
      }
    }
    catch (OoyalaException localOoyalaException)
    {
      for (;;)
      {
        _listener.onItemsFetched(firstIndex, count, localOoyalaException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.ChannelSet.NextChildrenRunner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */