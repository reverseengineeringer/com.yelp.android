package com.yelp.android.ui.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.util.Pair;
import android.widget.ImageView;
import com.yelp.android.bf.e;
import java.lang.reflect.Array;

public class ag
{
  private final AsyncTask<Pair<Bitmap, ImageView>, Void, Pair<Bitmap, ImageView>> a = new ah(this);
  
  private Bitmap a(Bitmap paramBitmap, int paramInt)
  {
    paramBitmap = paramBitmap.copy(paramBitmap.getConfig(), true);
    if (paramInt < 1) {
      return null;
    }
    int i14 = paramBitmap.getWidth();
    int i15 = paramBitmap.getHeight();
    int[] arrayOfInt1 = new int[i14 * i15];
    paramBitmap.getPixels(arrayOfInt1, 0, i14, 0, 0, i14, i15);
    int i19 = i14 - 1;
    int i16 = i15 - 1;
    int i = i14 * i15;
    int i17 = paramInt + paramInt + 1;
    int[] arrayOfInt2 = new int[i];
    int[] arrayOfInt3 = new int[i];
    int[] arrayOfInt4 = new int[i];
    int[] arrayOfInt5 = new int[Math.max(i14, i15)];
    i = i17 + 1 >> 1;
    int j = i * i;
    int[] arrayOfInt6 = new int[j * 256];
    i = 0;
    while (i < j * 256)
    {
      arrayOfInt6[i] = (i / j);
      i += 1;
    }
    int[][] arrayOfInt = (int[][])Array.newInstance(Integer.TYPE, new int[] { i17, 3 });
    int i18 = paramInt + 1;
    int i7 = 0;
    i = 0;
    int i6 = 0;
    int i8;
    int m;
    int k;
    int i4;
    int n;
    int i3;
    int i5;
    int i1;
    int i2;
    int i9;
    int[] arrayOfInt7;
    int i12;
    int i10;
    int i11;
    while (i6 < i15)
    {
      j = 0;
      i8 = -paramInt;
      m = 0;
      k = 0;
      i4 = 0;
      n = 0;
      i3 = 0;
      i5 = 0;
      i1 = 0;
      i2 = 0;
      if (i8 <= paramInt)
      {
        i9 = arrayOfInt1[(Math.min(i19, Math.max(i8, 0)) + i)];
        arrayOfInt7 = arrayOfInt[(i8 + paramInt)];
        arrayOfInt7[0] = ((0xFF0000 & i9) >> 16);
        arrayOfInt7[1] = ((0xFF00 & i9) >> 8);
        arrayOfInt7[2] = (i9 & 0xFF);
        i9 = i18 - Math.abs(i8);
        i1 += arrayOfInt7[0] * i9;
        i5 += arrayOfInt7[1] * i9;
        i3 += i9 * arrayOfInt7[2];
        if (i8 > 0)
        {
          m += arrayOfInt7[0];
          i2 += arrayOfInt7[1];
          j += arrayOfInt7[2];
        }
        for (;;)
        {
          i8 += 1;
          break;
          n += arrayOfInt7[0];
          i4 += arrayOfInt7[1];
          k += arrayOfInt7[2];
        }
      }
      i12 = 0;
      i9 = i4;
      i8 = i2;
      i10 = i5;
      i4 = paramInt;
      i5 = m;
      m = i3;
      i11 = i1;
      i3 = i12;
      i2 = n;
      i1 = i9;
      n = k;
      i9 = i5;
      i5 = j;
      j = m;
      k = i10;
      m = i11;
      for (;;)
      {
        i10 = n;
        if (i3 >= i14) {
          break;
        }
        n = m;
        if (m >= arrayOfInt6.length) {
          n = arrayOfInt6.length - 1;
        }
        m = k;
        if (k >= arrayOfInt6.length) {
          m = arrayOfInt6.length - 1;
        }
        k = j;
        if (j >= arrayOfInt6.length) {
          k = arrayOfInt6.length - 1;
        }
        arrayOfInt2[i] = arrayOfInt6[n];
        arrayOfInt3[i] = arrayOfInt6[m];
        arrayOfInt4[i] = arrayOfInt6[k];
        arrayOfInt7 = arrayOfInt[((i4 - paramInt + i17) % i17)];
        j = arrayOfInt7[0];
        i12 = arrayOfInt7[1];
        i11 = arrayOfInt7[2];
        if (i6 == 0) {
          arrayOfInt5[i3] = Math.min(i3 + paramInt + 1, i19);
        }
        int i13 = arrayOfInt1[(arrayOfInt5[i3] + i7)];
        arrayOfInt7[0] = ((0xFF0000 & i13) >> 16);
        arrayOfInt7[1] = ((0xFF00 & i13) >> 8);
        arrayOfInt7[2] = (i13 & 0xFF);
        int i20 = i9 + arrayOfInt7[0];
        int i21 = i8 + arrayOfInt7[1];
        int i22 = i5 + arrayOfInt7[2];
        i4 = (i4 + 1) % i17;
        arrayOfInt7 = arrayOfInt[(i4 % i17)];
        i13 = arrayOfInt7[0];
        int i23 = arrayOfInt7[1];
        int i24 = arrayOfInt7[2];
        i9 = arrayOfInt7[0];
        i8 = arrayOfInt7[1];
        i5 = arrayOfInt7[2];
        i += 1;
        i3 += 1;
        i11 = i10 - i11 + i24;
        i12 = i1 - i12 + i23;
        i13 = i2 - j + i13;
        i5 = i22 - i5;
        i8 = i21 - i8;
        i9 = i20 - i9;
        j = k - i10 + i22;
        k = m - i1 + i21;
        m = n - i2 + i20;
        n = i11;
        i1 = i12;
        i2 = i13;
      }
      i7 += i14;
      i6 += 1;
    }
    i = 0;
    while (i < i14)
    {
      i5 = 0;
      i7 = -paramInt * i14;
      i6 = -paramInt;
      i3 = 0;
      n = 0;
      i1 = 0;
      i2 = 0;
      j = 0;
      m = 0;
      k = 0;
      i4 = 0;
      if (i6 <= paramInt)
      {
        i8 = Math.max(0, i7) + i;
        arrayOfInt7 = arrayOfInt[(i6 + paramInt)];
        arrayOfInt7[0] = arrayOfInt2[i8];
        arrayOfInt7[1] = arrayOfInt3[i8];
        arrayOfInt7[2] = arrayOfInt4[i8];
        i9 = i18 - Math.abs(i6);
        i10 = arrayOfInt2[i8];
        i11 = arrayOfInt3[i8];
        i12 = arrayOfInt4[i8];
        if (i6 > 0)
        {
          i3 += arrayOfInt7[0];
          i4 += arrayOfInt7[1];
          i5 += arrayOfInt7[2];
        }
        for (;;)
        {
          i8 = i7;
          if (i6 < i16) {
            i8 = i7 + i14;
          }
          i6 += 1;
          j = i12 * i9 + j;
          m = i11 * i9 + m;
          k = i10 * i9 + k;
          i7 = i8;
          break;
          i2 += arrayOfInt7[0];
          i1 += arrayOfInt7[1];
          n += arrayOfInt7[2];
        }
      }
      i9 = m;
      i10 = k;
      i11 = 0;
      k = i;
      i6 = i5;
      i7 = i4;
      i8 = i3;
      m = n;
      n = i1;
      i1 = i2;
      i2 = paramInt;
      i5 = i10;
      i4 = i9;
      i3 = j;
      j = i11;
      while (j < i15)
      {
        arrayOfInt1[k] = (0xFF000000 & arrayOfInt1[k] | arrayOfInt6[i5] << 16 | arrayOfInt6[i4] << 8 | arrayOfInt6[i3]);
        arrayOfInt7 = arrayOfInt[((i2 - paramInt + i17) % i17)];
        i11 = arrayOfInt7[0];
        i10 = arrayOfInt7[1];
        i9 = arrayOfInt7[2];
        if (i == 0) {
          arrayOfInt5[j] = (Math.min(j + i18, i16) * i14);
        }
        i12 = arrayOfInt5[j] + i;
        arrayOfInt7[0] = arrayOfInt2[i12];
        arrayOfInt7[1] = arrayOfInt3[i12];
        arrayOfInt7[2] = arrayOfInt4[i12];
        i8 += arrayOfInt7[0];
        i7 += arrayOfInt7[1];
        i6 += arrayOfInt7[2];
        i5 = i5 - i1 + i8;
        i4 = i4 - n + i7;
        i3 = i3 - m + i6;
        i2 = (i2 + 1) % i17;
        arrayOfInt7 = arrayOfInt[i2];
        i1 = i1 - i11 + arrayOfInt7[0];
        n = n - i10 + arrayOfInt7[1];
        m = m - i9 + arrayOfInt7[2];
        i8 -= arrayOfInt7[0];
        i7 -= arrayOfInt7[1];
        i6 -= arrayOfInt7[2];
        k += i14;
        j += 1;
      }
      i += 1;
    }
    paramBitmap.setPixels(arrayOfInt1, 0, i14, 0, 0, i14, i15);
    return paramBitmap;
  }
  
  public void a(Bitmap paramBitmap, ImageView paramImageView)
  {
    a.execute(new Pair[] { new Pair(paramBitmap, paramImageView) });
  }
  
  public void b(Bitmap paramBitmap, ImageView paramImageView)
  {
    Bitmap localBitmap = paramBitmap;
    if (paramBitmap != null) {
      localBitmap = Bitmap.createScaledBitmap(paramBitmap, (int)paramImageView.getContext().getResources().getDimension(e.blur_image_width), (int)paramImageView.getContext().getResources().getDimension(e.blur_image_height), false);
    }
    a.execute(new Pair[] { new Pair(localBitmap, paramImageView) });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */