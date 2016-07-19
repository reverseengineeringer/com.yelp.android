.class public Lcom/bumptech/glide/g;
.super Ljava/lang/Object;
.source "Glide.java"


# static fields
.field private static volatile a:Lcom/bumptech/glide/g;


# instance fields
.field private final b:Lcom/yelp/android/aa/c;

.field private final c:Lcom/bumptech/glide/load/engine/b;

.field private final d:Lcom/yelp/android/x/c;

.field private final e:Lcom/yelp/android/y/h;

.field private final f:Lcom/bumptech/glide/load/DecodeFormat;

.field private final g:Lcom/yelp/android/am/f;

.field private final h:Lcom/yelp/android/ai/d;

.field private final i:Lcom/yelp/android/ak/c;

.field private final j:Lcom/bumptech/glide/load/resource/bitmap/e;

.field private final k:Lcom/yelp/android/ah/f;

.field private final l:Lcom/bumptech/glide/load/resource/bitmap/i;

.field private final m:Lcom/yelp/android/ah/f;

.field private final n:Landroid/os/Handler;

.field private final o:Lcom/yelp/android/z/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/b;Lcom/yelp/android/y/h;Lcom/yelp/android/x/c;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 6

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/yelp/android/am/f;

    invoke-direct {v0}, Lcom/yelp/android/am/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->g:Lcom/yelp/android/am/f;

    .line 93
    new-instance v0, Lcom/yelp/android/ai/d;

    invoke-direct {v0}, Lcom/yelp/android/ai/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/yelp/android/ai/d;

    .line 204
    iput-object p1, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/engine/b;

    .line 205
    iput-object p3, p0, Lcom/bumptech/glide/g;->d:Lcom/yelp/android/x/c;

    .line 206
    iput-object p2, p0, Lcom/bumptech/glide/g;->e:Lcom/yelp/android/y/h;

    .line 207
    iput-object p5, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/DecodeFormat;

    .line 208
    new-instance v0, Lcom/yelp/android/aa/c;

    invoke-direct {v0, p4}, Lcom/yelp/android/aa/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->b:Lcom/yelp/android/aa/c;

    .line 209
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->n:Landroid/os/Handler;

    .line 210
    new-instance v0, Lcom/yelp/android/z/a;

    invoke-direct {v0, p2, p3, p5}, Lcom/yelp/android/z/a;-><init>(Lcom/yelp/android/y/h;Lcom/yelp/android/x/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->o:Lcom/yelp/android/z/a;

    .line 212
    new-instance v0, Lcom/yelp/android/ak/c;

    invoke-direct {v0}, Lcom/yelp/android/ak/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/g;->i:Lcom/yelp/android/ak/c;

    .line 214
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/n;

    invoke-direct {v0, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/n;-><init>(Lcom/yelp/android/x/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 216
    iget-object v1, p0, Lcom/bumptech/glide/g;->i:Lcom/yelp/android/ak/c;

    const-class v2, Ljava/io/InputStream;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v0}, Lcom/yelp/android/ak/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ak/b;)V

    .line 218
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/g;

    invoke-direct {v1, p3, p5}, Lcom/bumptech/glide/load/resource/bitmap/g;-><init>(Lcom/yelp/android/x/c;Lcom/bumptech/glide/load/DecodeFormat;)V

    .line 220
    iget-object v2, p0, Lcom/bumptech/glide/g;->i:Lcom/yelp/android/ak/c;

    const-class v3, Landroid/os/ParcelFileDescriptor;

    const-class v4, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4, v1}, Lcom/yelp/android/ak/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ak/b;)V

    .line 222
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/m;

    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/m;-><init>(Lcom/yelp/android/ak/b;Lcom/yelp/android/ak/b;)V

    .line 224
    iget-object v0, p0, Lcom/bumptech/glide/g;->i:Lcom/yelp/android/ak/c;

    const-class v1, Lcom/yelp/android/aa/g;

    const-class v3, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3, v2}, Lcom/yelp/android/ak/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ak/b;)V

    .line 226
    new-instance v0, Lcom/yelp/android/ag/c;

    invoke-direct {v0, p4, p3}, Lcom/yelp/android/ag/c;-><init>(Landroid/content/Context;Lcom/yelp/android/x/c;)V

    .line 228
    iget-object v1, p0, Lcom/bumptech/glide/g;->i:Lcom/yelp/android/ak/c;

    const-class v3, Ljava/io/InputStream;

    const-class v4, Lcom/yelp/android/ag/b;

    invoke-virtual {v1, v3, v4, v0}, Lcom/yelp/android/ak/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ak/b;)V

    .line 230
    iget-object v1, p0, Lcom/bumptech/glide/g;->i:Lcom/yelp/android/ak/c;

    const-class v3, Lcom/yelp/android/aa/g;

    const-class v4, Lcom/yelp/android/ah/a;

    new-instance v5, Lcom/yelp/android/ah/g;

    invoke-direct {v5, v2, v0, p3}, Lcom/yelp/android/ah/g;-><init>(Lcom/yelp/android/ak/b;Lcom/yelp/android/ak/b;Lcom/yelp/android/x/c;)V

    invoke-virtual {v1, v3, v4, v5}, Lcom/yelp/android/ak/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ak/b;)V

    .line 233
    iget-object v0, p0, Lcom/bumptech/glide/g;->i:Lcom/yelp/android/ak/c;

    const-class v1, Ljava/io/InputStream;

    const-class v2, Ljava/io/File;

    new-instance v3, Lcom/yelp/android/af/d;

    invoke-direct {v3}, Lcom/yelp/android/af/d;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ak/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ak/b;)V

    .line 235
    const-class v0, Ljava/io/File;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/yelp/android/ab/a$a;

    invoke-direct {v2}, Lcom/yelp/android/ab/a$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)V

    .line 236
    const-class v0, Ljava/io/File;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/ac/d$a;

    invoke-direct {v2}, Lcom/yelp/android/ac/d$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)V

    .line 237
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/yelp/android/ab/c$a;

    invoke-direct {v2}, Lcom/yelp/android/ab/c$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)V

    .line 238
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/ac/f$a;

    invoke-direct {v2}, Lcom/yelp/android/ac/f$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)V

    .line 239
    const-class v0, Ljava/lang/Integer;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/yelp/android/ab/c$a;

    invoke-direct {v2}, Lcom/yelp/android/ab/c$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)V

    .line 240
    const-class v0, Ljava/lang/Integer;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/ac/f$a;

    invoke-direct {v2}, Lcom/yelp/android/ac/f$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)V

    .line 241
    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/yelp/android/ab/d$a;

    invoke-direct {v2}, Lcom/yelp/android/ab/d$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)V

    .line 242
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/ac/g$a;

    invoke-direct {v2}, Lcom/yelp/android/ac/g$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)V

    .line 243
    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/yelp/android/ab/e$a;

    invoke-direct {v2}, Lcom/yelp/android/ab/e$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)V

    .line 244
    const-class v0, Landroid/net/Uri;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/ac/h$a;

    invoke-direct {v2}, Lcom/yelp/android/ac/h$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)V

    .line 245
    const-class v0, Ljava/net/URL;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/ac/i$a;

    invoke-direct {v2}, Lcom/yelp/android/ac/i$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)V

    .line 246
    const-class v0, Lcom/yelp/android/aa/d;

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/ac/a$a;

    invoke-direct {v2}, Lcom/yelp/android/ac/a$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)V

    .line 247
    const-class v0, [B

    const-class v1, Ljava/io/InputStream;

    new-instance v2, Lcom/yelp/android/ac/c$a;

    invoke-direct {v2}, Lcom/yelp/android/ac/c$a;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)V

    .line 249
    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/yelp/android/ai/d;

    const-class v1, Landroid/graphics/Bitmap;

    const-class v2, Lcom/bumptech/glide/load/resource/bitmap/j;

    new-instance v3, Lcom/yelp/android/ai/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p3}, Lcom/yelp/android/ai/b;-><init>(Landroid/content/res/Resources;Lcom/yelp/android/x/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ai/d;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ai/c;)V

    .line 251
    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/yelp/android/ai/d;

    const-class v1, Lcom/yelp/android/ah/a;

    const-class v2, Lcom/yelp/android/ae/b;

    new-instance v3, Lcom/yelp/android/ai/a;

    new-instance v4, Lcom/yelp/android/ai/b;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, p3}, Lcom/yelp/android/ai/b;-><init>(Landroid/content/res/Resources;Lcom/yelp/android/x/c;)V

    invoke-direct {v3, v4}, Lcom/yelp/android/ai/a;-><init>(Lcom/yelp/android/ai/c;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ai/d;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/ai/c;)V

    .line 255
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/e;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/load/resource/bitmap/e;-><init>(Lcom/yelp/android/x/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/load/resource/bitmap/e;

    .line 256
    new-instance v0, Lcom/yelp/android/ah/f;

    iget-object v1, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/load/resource/bitmap/e;

    invoke-direct {v0, p3, v1}, Lcom/yelp/android/ah/f;-><init>(Lcom/yelp/android/x/c;Lcom/bumptech/glide/load/f;)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->k:Lcom/yelp/android/ah/f;

    .line 258
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct {v0, p3}, Lcom/bumptech/glide/load/resource/bitmap/i;-><init>(Lcom/yelp/android/x/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/load/resource/bitmap/i;

    .line 259
    new-instance v0, Lcom/yelp/android/ah/f;

    iget-object v1, p0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/load/resource/bitmap/i;

    invoke-direct {v0, p3, v1}, Lcom/yelp/android/ah/f;-><init>(Lcom/yelp/android/x/c;Lcom/bumptech/glide/load/f;)V

    iput-object v0, p0, Lcom/bumptech/glide/g;->m:Lcom/yelp/android/ah/f;

    .line 260
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/g;
    .locals 6

    .prologue
    .line 145
    sget-object v0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/g;

    if-nez v0, :cond_2

    .line 146
    const-class v1, Lcom/bumptech/glide/g;

    monitor-enter v1

    .line 147
    :try_start_0
    sget-object v0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/g;

    if-nez v0, :cond_1

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 149
    new-instance v0, Lcom/yelp/android/aj/b;

    invoke-direct {v0, v2}, Lcom/yelp/android/aj/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/yelp/android/aj/b;->a()Ljava/util/List;

    move-result-object v3

    .line 151
    new-instance v4, Lcom/bumptech/glide/h;

    invoke-direct {v4, v2}, Lcom/bumptech/glide/h;-><init>(Landroid/content/Context;)V

    .line 152
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/aj/a;

    .line 153
    invoke-interface {v0, v2, v4}, Lcom/yelp/android/aj/a;->a(Landroid/content/Context;Lcom/bumptech/glide/h;)V

    goto :goto_0

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 155
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/bumptech/glide/h;->a()Lcom/bumptech/glide/g;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/g;

    .line 156
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/aj/a;

    .line 157
    sget-object v4, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/g;

    invoke-interface {v0, v2, v4}, Lcom/yelp/android/aj/a;->a(Landroid/content/Context;Lcom/bumptech/glide/g;)V

    goto :goto_1

    .line 160
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_2
    sget-object v0, Lcom/bumptech/glide/g;->a:Lcom/bumptech/glide/g;

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Landroid/content/Context;)Lcom/yelp/android/aa/l;
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
            "Lcom/yelp/android/aa/l",
            "<TT;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    const-class v0, Ljava/io/InputStream;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/yelp/android/aa/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/yelp/android/aa/l;
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
            "Lcom/yelp/android/aa/l",
            "<TT;TY;>;"
        }
    .end annotation

    .prologue
    .line 524
    if-nez p0, :cond_1

    .line 525
    const-string/jumbo v0, "Glide"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    const-string/jumbo v0, "Glide"

    const-string/jumbo v1, "Unable to load null model, setting placeholder only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    const/4 v0, 0x0

    .line 530
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p2}, Lcom/bumptech/glide/g;->a(Landroid/content/Context;)Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-direct {v0}, Lcom/bumptech/glide/g;->j()Lcom/yelp/android/aa/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/yelp/android/aa/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/aa/l;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/yelp/android/am/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/am/j",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 418
    invoke-static {}, Lcom/yelp/android/ao/h;->a()V

    .line 419
    invoke-interface {p0}, Lcom/yelp/android/am/j;->a()Lcom/bumptech/glide/request/b;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v0}, Lcom/bumptech/glide/request/b;->d()V

    .line 422
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/yelp/android/am/j;->a(Lcom/bumptech/glide/request/b;)V

    .line 424
    :cond_0
    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/i;
    .locals 1

    .prologue
    .line 619
    invoke-static {}, Lcom/bumptech/glide/manager/j;->a()Lcom/bumptech/glide/manager/j;

    move-result-object v0

    .line 620
    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/j;->a(Landroid/content/Context;)Lcom/bumptech/glide/i;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/Class;Landroid/content/Context;)Lcom/yelp/android/aa/l;
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
            "Lcom/yelp/android/aa/l",
            "<TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    const-class v0, Landroid/os/ParcelFileDescriptor;

    invoke-static {p0, v0, p1}, Lcom/bumptech/glide/g;->a(Ljava/lang/Class;Ljava/lang/Class;Landroid/content/Context;)Lcom/yelp/android/aa/l;

    move-result-object v0

    return-object v0
.end method

.method private j()Lcom/yelp/android/aa/c;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/bumptech/glide/g;->b:Lcom/yelp/android/aa/c;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/ai/c;
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
            "Lcom/yelp/android/ai/c",
            "<TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/bumptech/glide/g;->h:Lcom/yelp/android/ai/d;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ai/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/ai/c;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/yelp/android/am/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lcom/yelp/android/am/j",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/bumptech/glide/g;->g:Lcom/yelp/android/am/f;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/am/f;->a(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/yelp/android/am/j;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/yelp/android/x/c;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/yelp/android/x/c;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/yelp/android/x/c;

    invoke-interface {v0, p1}, Lcom/yelp/android/x/c;->a(I)V

    .line 380
    iget-object v0, p0, Lcom/bumptech/glide/g;->e:Lcom/yelp/android/y/h;

    invoke-interface {v0, p1}, Lcom/yelp/android/y/h;->a(I)V

    .line 381
    return-void
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)V
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
            "Lcom/yelp/android/aa/m",
            "<TT;TY;>;)V"
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/bumptech/glide/g;->b:Lcom/yelp/android/aa/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/aa/c;->a(Ljava/lang/Class;Ljava/lang/Class;Lcom/yelp/android/aa/m;)Lcom/yelp/android/aa/m;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_0

    .line 485
    invoke-interface {v0}, Lcom/yelp/android/aa/m;->a()V

    .line 487
    :cond_0
    return-void
.end method

.method b()Lcom/bumptech/glide/load/engine/b;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/bumptech/glide/g;->c:Lcom/bumptech/glide/load/engine/b;

    return-object v0
.end method

.method b(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/ak/b;
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
            "Lcom/yelp/android/ak/b",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/bumptech/glide/g;->i:Lcom/yelp/android/ak/c;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ak/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lcom/yelp/android/ak/b;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/bumptech/glide/load/resource/bitmap/e;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/bumptech/glide/g;->j:Lcom/bumptech/glide/load/resource/bitmap/e;

    return-object v0
.end method

.method d()Lcom/bumptech/glide/load/resource/bitmap/i;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/bumptech/glide/g;->l:Lcom/bumptech/glide/load/resource/bitmap/i;

    return-object v0
.end method

.method e()Lcom/yelp/android/ah/f;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/bumptech/glide/g;->k:Lcom/yelp/android/ah/f;

    return-object v0
.end method

.method f()Lcom/yelp/android/ah/f;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/bumptech/glide/g;->m:Lcom/yelp/android/ah/f;

    return-object v0
.end method

.method g()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/bumptech/glide/g;->n:Landroid/os/Handler;

    return-object v0
.end method

.method h()Lcom/bumptech/glide/load/DecodeFormat;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/bumptech/glide/g;->f:Lcom/bumptech/glide/load/DecodeFormat;

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/bumptech/glide/g;->d:Lcom/yelp/android/x/c;

    invoke-interface {v0}, Lcom/yelp/android/x/c;->a()V

    .line 370
    iget-object v0, p0, Lcom/bumptech/glide/g;->e:Lcom/yelp/android/y/h;

    invoke-interface {v0}, Lcom/yelp/android/y/h;->a()V

    .line 371
    return-void
.end method
