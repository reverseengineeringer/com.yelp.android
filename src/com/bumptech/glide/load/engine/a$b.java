package com.bumptech.glide.load.engine;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;

class a$b
{
  public OutputStream a(File paramFile)
    throws FileNotFoundException
  {
    return new BufferedOutputStream(new FileOutputStream(paramFile));
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */