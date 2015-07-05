.class public Lcom/bumptech/glide/i;
.super Ljava/lang/Object;
.source "GlideBuilder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/bumptech/glide/load/engine/d;

.field private c:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

.field private d:Lcom/yelp/android/s/f;

.field private e:Lcom/yelp/android/s/a;

.field private f:Ljava/util/concurrent/ExecutorService;

.field private g:Ljava/util/concurrent/ExecutorService;

.field private h:Lcom/bumptech/glide/load/DecodeFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/i;->a:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method a()Lcom/bumptech/glide/h;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 146
    iget-object v0, p0, Lcom/bumptech/glide/i;->f:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 148
    new-instance v1, Lcom/yelp/android/t/a;

    invoke-direct {v1, v0}, Lcom/yelp/android/t/a;-><init>(I)V

    iput-object v1, p0, Lcom/bumptech/glide/i;->f:Ljava/util/concurrent/ExecutorService;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/i;->g:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 151
    new-instance v0, Lcom/yelp/android/t/a;

    invoke-direct {v0, v2}, Lcom/yelp/android/t/a;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/i;->g:Ljava/util/concurrent/ExecutorService;

    .line 154
    :cond_1
    new-instance v0, Lcom/yelp/android/s/h;

    iget-object v1, p0, Lcom/bumptech/glide/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yelp/android/s/h;-><init>(Landroid/content/Context;)V

    .line 155
    iget-object v1, p0, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    if-nez v1, :cond_2

    .line 156
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_8

    .line 157
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;

    invoke-virtual {v0}, Lcom/yelp/android/s/h;->b()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;-><init>(I)V

    iput-object v1, p0, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    .line 163
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/i;->d:Lcom/yelp/android/s/f;

    if-nez v1, :cond_3

    .line 164
    new-instance v1, Lcom/yelp/android/s/e;

    invoke-virtual {v0}, Lcom/yelp/android/s/h;->a()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/yelp/android/s/e;-><init>(I)V

    iput-object v1, p0, Lcom/bumptech/glide/i;->d:Lcom/yelp/android/s/f;

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/i;->e:Lcom/yelp/android/s/a;

    if-nez v0, :cond_5

    .line 168
    iget-object v0, p0, Lcom/bumptech/glide/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_4

    .line 170
    const/high16 v1, 0xfa00000

    invoke-static {v0, v1}, Lcom/yelp/android/s/d;->a(Ljava/io/File;I)Lcom/yelp/android/s/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/i;->e:Lcom/yelp/android/s/a;

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/bumptech/glide/i;->e:Lcom/yelp/android/s/a;

    if-nez v0, :cond_5

    .line 173
    new-instance v0, Lcom/yelp/android/s/c;

    invoke-direct {v0}, Lcom/yelp/android/s/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/i;->e:Lcom/yelp/android/s/a;

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/load/engine/d;

    if-nez v0, :cond_6

    .line 178
    new-instance v0, Lcom/bumptech/glide/load/engine/d;

    iget-object v1, p0, Lcom/bumptech/glide/i;->d:Lcom/yelp/android/s/f;

    iget-object v2, p0, Lcom/bumptech/glide/i;->e:Lcom/yelp/android/s/a;

    iget-object v3, p0, Lcom/bumptech/glide/i;->g:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/bumptech/glide/i;->f:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bumptech/glide/load/engine/d;-><init>(Lcom/yelp/android/s/f;Lcom/yelp/android/s/a;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/load/engine/d;

    .line 181
    :cond_6
    iget-object v0, p0, Lcom/bumptech/glide/i;->h:Lcom/bumptech/glide/load/DecodeFormat;

    if-nez v0, :cond_7

    .line 182
    sget-object v0, Lcom/bumptech/glide/load/DecodeFormat;->DEFAULT:Lcom/bumptech/glide/load/DecodeFormat;

    iput-object v0, p0, Lcom/bumptech/glide/i;->h:Lcom/bumptech/glide/load/DecodeFormat;

    .line 185
    :cond_7
    new-instance v0, Lcom/bumptech/glide/h;

    iget-object v1, p0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/load/engine/d;

    iget-object v2, p0, Lcom/bumptech/glide/i;->d:Lcom/yelp/android/s/f;

    iget-object v3, p0, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    iget-object v4, p0, Lcom/bumptech/glide/i;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/bumptech/glide/i;->h:Lcom/bumptech/glide/load/DecodeFormat;

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/load/engine/d;Lcom/yelp/android/s/f;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Landroid/content/Context;Lcom/bumptech/glide/load/DecodeFormat;)V

    return-object v0

    .line 159
    :cond_8
    new-instance v1, Lcom/bumptech/glide/load/engine/bitmap_recycle/f;

    invoke-direct {v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/f;-><init>()V

    iput-object v1, p0, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    goto :goto_0
.end method
