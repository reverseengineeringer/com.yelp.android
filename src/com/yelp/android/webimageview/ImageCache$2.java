package com.yelp.android.webimageview;

import java.io.File;
import java.util.Comparator;

final class ImageCache$2
  implements Comparator<File>
{
  public int compare(File paramFile1, File paramFile2)
  {
    int i = (int)(paramFile2.lastModified() - paramFile1.lastModified());
    if (i != 0) {
      return i;
    }
    return paramFile2.compareTo(paramFile1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.webimageview.ImageCache.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */