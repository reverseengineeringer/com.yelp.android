package pl.droidsonroids.gif;

import java.io.IOException;

public class GifIOException
  extends IOException
{
  private static final long serialVersionUID = 13038402904505L;
  public final GifError reason;
  
  GifIOException(int paramInt)
  {
    this(GifError.fromCode(paramInt));
  }
  
  private GifIOException(GifError paramGifError)
  {
    super(paramGifError.getFormattedDescription());
    reason = paramGifError;
  }
  
  static GifIOException fromCode(int paramInt)
  {
    if (paramInt == NO_ERRORerrorCode) {
      return null;
    }
    return new GifIOException(paramInt);
  }
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.GifIOException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */