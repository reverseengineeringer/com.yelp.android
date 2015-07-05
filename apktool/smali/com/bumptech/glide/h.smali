.class public Lcom/bumptech/glide/h;
.super Ljava/lang/Object;
.source "Glide.java"


# static fields
.field private static volatile a:Lcom/bumptech/glide/h;


# instance fields
.field private final b:Lcom/yelp/android/v/c;

.field private final c:Lcom/bumptech/glide/load/engine/d;

.field private final d:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

.field private final e:Lcom/yelp/android/s/f;

.field private final f:Lcom/bumptech/glide/load/DecodeFormat;

.field private final g:Lcom/yelp/android/ag/f;

.field private final h:Lcom/yelp/android/ad/d;

.field private final i:Lcom/yelp/android/ae/c;

.field private final j:Lcom/bumptech/glide/load/resource/bitmap/e;

.field private final k:Lcom/yelp/android/ac/h;

.field private final l:Lcom/bumptech/glide/load/resource/bitmap/l;

.field private final m:Lcom/yelp/android/ac/h;

.field private final n:Landroid/os/Handler;

.field private final o:Lcom/yelp/android/u/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/d;Lcom/yelp/android/s/f;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 6

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/yelp/android/ag/f;

    invoke-direct {v0}, Lcom/yelp/android/ag/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/h;->g:Lcom/yelp/android/ag/f;

    .line 92
    new-instance v0, Lcom/yelp/android/ad/d;

    invoke-direct {v0}, Lcom/yelp/android/ad/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/h;->h:Lcom/yelp/android/ad/d;

    .line 188
    iput-object p1, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/load/engine/d;

    .line 189
    iput-object p3, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    .line 190
    iput-object p2, p0, Lcom/bumptech/glide/h;->e:Lcom/yelp/android/s/f;

    .line 191
    iput-object p5, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/load/DecodeFormat;

    .line 192
    new-instance v0, Lcom/yelp/android/v/c;

    invoke-direct {v0, p4}, Lcom/yelp/android/v/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/yelp/android/v/c;

    .line 193
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->n:Landroid/os/Handler;

    .line 194
    new-instance v0, Lcom/yelp/android/u/a;

    invoke-direct {v0, p2, p3, p5}, Lcom/yelp/android/u/a;-><init>(Lcom/yelp/android/s/f;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->o:Lcom/yelp/android/u/a;

    .line 196
    new-instance v0, Lcom/yelp/android/ae/c;

    invoke-direct {v0}, Lcom/yelp/android/ae/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/h;->i:Lcom/yelp/android/ae/c;

    .line 198
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/t;

    invoke-direct {v0, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/t;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 200
    iget-object v1, p0, Lcom/bumptech/glide/h;->i:Lcom/yelp/android/ae/c;

    const-class v2, Ljava/io/InputStream;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v0}, Lcom/yelp/android/ae/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ae/b;)V

    .line 202
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-direct {v1, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/j;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 204
    iget-object v2, p0, Lcom/bumptech/glide/h;->i:Lcom/yelp/android/ae/c;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    const-class v4, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4, v1}, Lcom/yelp/android/ae/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ae/b;)V

    .line 206
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/s;

    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/s;-><init>(Lcom/yelp/android/ae/b;Lcom/yelp/android/ae/b;)V

    .line 208
    iget-object v0, p0, Lcom/bumptech/glide/h;->i:Lcom/yelp/android/ae/c;

    const-class v1, Lcom/yelp/android/v/h;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yelp/android/ae/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ae/b;)V

    .line 210
    new-instance v0, Lcom/yelp/android/ab/d;

    invoke-direct {v0, p4, p3}, Lcom/yelp/android/ab/d;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    .line 212
    iget-object v1, p0, Lcom/bumptech/glide/h;->i:Lcom/yelp/android/ae/c;

    const-class v3, Ljava/io/InputStream;

    const-class v4, Lcom/yelp/android/ab/b;

    invoke-virtual {v1, v3, v4, v0}, Lcom/yelp/android/ae/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ae/b;)V

    .line 214
    iget-object v1, p0, Lcom/bumptech/glide/h;->i:Lcom/yelp/android/ae/c;

    const-class v3, Lcom/yelp/android/v/h;

    const-class v4, Lcom/yelp/android/ac/a;

    new-instance v5, Lcom/yelp/android/ac/i;

    invoke-direct {v5, v2, v0, p3}, Lcom/yelp/android/ac/i;-><init>(Lcom/yelp/android/ae/b;Lcom/yelp/android/ae/b;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/yelp/android/ae/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ae/b;)V

    .line 217
    iget-object v0, p0, Lcom/bumptech/glide/h;->i:Lcom/yelp/android/ae/c;

    const-class v1, Ljava/io/InputStream;

    const-class v2, Ljava/io/File;

    new-instance v3, Lcom/yelp/android/aa/e;

    invoke-direct {v3}, Lcom/yelp/android/aa/e;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ae/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ae/b;)V

    .line 219
    const-class v0, Ljava/io/File;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/yelp/android/w/b;

    invoke-direct {v2}, Lcom/yelp/android/w/b;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/v/n;)V

    .line 220
    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/x/g;

    invoke-direct {v2}, Lcom/yelp/android/x/g;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/v/n;)V

    .line 221
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/yelp/android/w/e;

    invoke-direct {v2}, Lcom/yelp/android/w/e;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/v/n;)V

    .line 222
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/x/j;

    invoke-direct {v2}, Lcom/yelp/android/x/j;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/v/n;)V

    .line 223
    const-class v0, Ljava/lang/Integer;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/yelp/android/w/e;

    invoke-direct {v2}, Lcom/yelp/android/w/e;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/v/n;)V

    .line 224
    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/x/j;

    invoke-direct {v2}, Lcom/yelp/android/x/j;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/v/n;)V

    .line 225
    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/yelp/android/w/g;

    invoke-direct {v2}, Lcom/yelp/android/w/g;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/v/n;)V

    .line 226
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/x/l;

    invoke-direct {v2}, Lcom/yelp/android/x/l;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/v/n;)V

    .line 227
    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/yelp/android/w/i;

    invoke-direct {v2}, Lcom/yelp/android/w/i;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/v/n;)V

    .line 228
    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/x/n;

    invoke-direct {v2}, Lcom/yelp/android/x/n;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/v/n;)V

    .line 229
    const-class v0, Ljava/net/URL;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/x/p;

    invoke-direct {v2}, Lcom/yelp/android/x/p;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/v/n;)V

    .line 230
    const-class v0, Lcom/yelp/android/v/e;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/x/b;

    invoke-direct {v2}, Lcom/yelp/android/x/b;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/v/n;)V

    .line 231
    const-class v0, [B

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/x/e;

    invoke-direct {v2}, Lcom/yelp/android/x/e;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/v/n;)V

    .line 233
    iget-object v0, p0, Lcom/bumptech/glide/h;->h:Lcom/yelp/android/ad/d;

    const-class v1, Landroid/graphics/Bitmap;

    const-class v2, Lcom/bumptech/glide/load/resource/bitmap/m;

    new-instance v3, Lcom/yelp/android/ad/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Lcom/yelp/android/ad/b;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ad/d;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ad/c;)V

    .line 235
    iget-object v0, p0, Lcom/bumptech/glide/h;->h:Lcom/yelp/android/ad/d;

    const-class v1, Lcom/yelp/android/ac/a;

    const-class v2, Lcom/yelp/android/z/b;

    new-instance v3, Lcom/yelp/android/ad/a;

    new-instance v4, Lcom/yelp/android/ad/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lcom/yelp/android/ad/b;-><init>(Landroid/content/res/Resources;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    invoke-direct {v3, v4}, Lcom/yelp/android/ad/a;-><init>(Lcom/yelp/android/ad/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ad/d;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ad/c;)V

    .line 239
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/e;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/load/resource/bitmap/e;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->j:Lcom/bumptech/glide/load/resource/bitmap/e;

    .line 240
    new-instance v0, Lcom/yelp/android/ac/h;

    iget-object v1, p0, Lcom/bumptech/glide/h;->j:Lcom/bumptech/glide/load/resource/bitmap/e;

    invoke-direct {v0, p3, v1}, Lcom/yelp/android/ac/h;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/f;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->k:Lcom/yelp/android/ac/h;

    .line 242
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->l:Lcom/bumptech/glide/load/resource/bitmap/l;

    .line 243
    new-instance v0, Lcom/yelp/android/ac/h;

    iget-object v1, p0, Lcom/bumptech/glide/h;->l:Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v0, p3, v1}, Lcom/yelp/android/ac/h;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/f;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->m:Lcom/yelp/android/ac/h;

    .line 244
    return-void
.end method

.method public static a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/j;
    .locals 1

    .prologue
    .line 635
    invoke-static {}, Lcom/bumptech/glide/manager/k;->a()Lcom/bumptech/glide/manager/k;

    move-result-object v0

    .line 636
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->a(Landroid/support/v4/app/Fragment;)Lcom/bumptech/glide/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/j;
    .locals 1

    .prologue
    .line 610
    invoke-static {}, Lcom/bumptech/glide/manager/k;->a()Lcom/bumptech/glide/manager/k;

    move-result-object v0

    .line 611
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->a(Landroid/support/v4/app/FragmentActivity;)Lcom/bumptech/glide/j;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Landroid/content/Context;)Lcom/yelp/android/v/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/yelp/android/v/m",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/yelp/android/v/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/yelp/android/v/m;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/yelp/android/v/m",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 491
    if-nez p0, :cond_1

    .line 492
    const-string/jumbo v0, "Glide"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    const-string/jumbo v0, "Glide"

    const-string/jumbo v1, "Unable to load null model, setting placeholder only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_0
    const/4 v0, 0x0

    .line 497
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/bumptech/glide/h;->b(Landroid/content/Context;)Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-direct {v0}, Lcom/bumptech/glide/h;->i()Lcom/yelp/android/v/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/yelp/android/v/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/v/m;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .prologue
    .line 110
    const-string/jumbo v0, "image_manager_disk_cache"

    invoke-static {p0, v0}, Lcom/bumptech/glide/h;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    .line 124
    if-eqz v2, :cond_2

    .line 125
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 130
    goto :goto_0

    .line 132
    :cond_2
    const-string/jumbo v1, "Glide"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-string/jumbo v1, "Glide"

    const-string/jumbo v2, "default disk cache dir is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Lcom/yelp/android/ag/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ag/j",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 389
    invoke-static {}, Lcom/yelp/android/ai/f;->a()V

    .line 390
    invoke-interface {p0}, Lcom/yelp/android/ag/j;->f()Lcom/bumptech/glide/request/a;

    move-result-object v0

    .line 391
    if-eqz v0, :cond_0

    .line 392
    invoke-interface {v0}, Lcom/bumptech/glide/request/a;->d()V

    .line 394
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/h;
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/h;

    if-nez v0, :cond_1

    .line 145
    const-class v1, Lcom/bumptech/glide/h;

    monitor-enter v1

    .line 146
    :try_start_0
    sget-object v0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/h;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/bumptech/glide/i;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/i;->a()Lcom/bumptech/glide/h;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/h;

    .line 149
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_1
    sget-object v0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/h;

    return-object v0

    .line 149
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b(Ljava/lang/Class;Landroid/content/Context;)Lcom/yelp/android/v/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/content/Context;",
            ")",
            "Lcom/yelp/android/v/m",
            "<TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/yelp/android/v/m;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/bumptech/glide/j;
    .locals 1

    .prologue
    .line 586
    invoke-static {}, Lcom/bumptech/glide/manager/k;->a()Lcom/bumptech/glide/manager/k;

    move-result-object v0

    .line 587
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    return-object v0
.end method

.method private i()Lcom/yelp/android/v/c;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/yelp/android/v/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/bitmap_recycle/e;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    return-object v0
.end method

.method a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/ad/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/yelp/android/ad/c",
            "<TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/bumptech/glide/h;->h:Lcom/yelp/android/ad/d;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ad/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/ad/c;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/yelp/android/ag/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/yelp/android/ag/j",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/bumptech/glide/h;->g:Lcom/yelp/android/ag/f;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ag/f;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/yelp/android/ag/j;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;->a(I)V

    .line 363
    iget-object v0, p0, Lcom/bumptech/glide/h;->e:Lcom/yelp/android/s/f;

    invoke-interface {v0, p1}, Lcom/yelp/android/s/f;->a(I)V

    .line 364
    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/v/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TY;>;",
            "Lcom/yelp/android/v/n",
            "<TT;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 453
    iget-object v0, p0, Lcom/bumptech/glide/h;->b:Lcom/yelp/android/v/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/v/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/v/n;)Lcom/yelp/android/v/n;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_0

    .line 455
    invoke-interface {v0}, Lcom/yelp/android/v/n;->a()V

    .line 457
    :cond_0
    return-void
.end method

.method b()Lcom/bumptech/glide/load/engine/d;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/load/engine/d;

    return-object v0
.end method

.method b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/ae/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/yelp/android/ae/b",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 277
    iget-object v0, p0, Lcom/bumptech/glide/h;->i:Lcom/yelp/android/ae/c;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ae/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/ae/b;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/bumptech/glide/load/resource/bitmap/e;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/h;->j:Lcom/bumptech/glide/load/resource/bitmap/e;

    return-object v0
.end method

.method d()Lcom/bumptech/glide/load/resource/bitmap/l;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/bumptech/glide/h;->l:Lcom/bumptech/glide/load/resource/bitmap/l;

    return-object v0
.end method

.method e()Lcom/yelp/android/ac/h;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/bumptech/glide/h;->k:Lcom/yelp/android/ac/h;

    return-object v0
.end method

.method f()Lcom/yelp/android/ac/h;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/bumptech/glide/h;->m:Lcom/yelp/android/ac/h;

    return-object v0
.end method

.method g()Lcom/bumptech/glide/load/DecodeFormat;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/load/DecodeFormat;

    return-object v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;->a()V

    .line 353
    iget-object v0, p0, Lcom/bumptech/glide/h;->e:Lcom/yelp/android/s/f;

    invoke-interface {v0}, Lcom/yelp/android/s/f;->a()V

    .line 354
    return-void
.end method
