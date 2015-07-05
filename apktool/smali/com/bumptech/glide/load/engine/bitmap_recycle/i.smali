.class public Lcom/bumptech/glide/load/engine/bitmap_recycle/i;
.super Ljava/lang/Object;
.source "LruBitmapPool.java"

# interfaces
.implements Lcom/bumptech/glide/load/engine/bitmap_recycle/e;


# static fields
.field private static final a:Landroid/graphics/Bitmap$Config;


# instance fields
.field private final b:Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

.field private final c:I

.field private final d:Lcom/bumptech/glide/load/engine/bitmap_recycle/k;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->a:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->d()Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;-><init>(ILcom/bumptech/glide/load/engine/bitmap_recycle/m;)V

    .line 50
    return-void
.end method

.method constructor <init>(ILcom/bumptech/glide/load/engine/bitmap_recycle/m;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->c:I

    .line 38
    iput p1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->e:I

    .line 39
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    .line 40
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/l;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/j;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/k;

    .line 41
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->e:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b(I)V

    .line 91
    return-void
.end method

.method private declared-synchronized b(I)V
    .locals 4

    .prologue
    .line 149
    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->f:I

    if-le v0, p1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/m;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/k;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->b(Landroid/graphics/Bitmap;)V

    .line 152
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->f:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    invoke-interface {v2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/m;->c(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->f:I

    .line 153
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->j:I

    .line 155
    const-string/jumbo v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const-string/jumbo v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Evicting bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    invoke-interface {v3, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/m;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 160
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 163
    const-string/jumbo v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string/jumbo v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Hits="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " misses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " puts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " evictions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " currentSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " maxSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nStrategy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void
.end method

.method private static d()Lcom/bumptech/glide/load/engine/bitmap_recycle/m;
    .locals 2

    .prologue
    .line 171
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 172
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/SizeStrategy;-><init>()V

    .line 176
    :goto_0
    return-object v0

    .line 174
    :cond_0
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/a;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 100
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_0
    monitor-exit p0

    return-object v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b(I)V

    .line 136
    return-void
.end method

.method public a(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 141
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->a()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 144
    iget v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->e:I

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b(I)V

    goto :goto_0
.end method

.method public declared-synchronized a(Landroid/graphics/Bitmap;)Z
    .locals 3

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/m;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->e:I

    if-le v0, v1, :cond_2

    .line 66
    :cond_0
    const-string/jumbo v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    const-string/jumbo v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Reject bitmap from pool="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/m;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is mutable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 86
    :goto_0
    monitor-exit p0

    return v0

    .line 73
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/m;->c(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/m;->a(Landroid/graphics/Bitmap;)V

    .line 75
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/k;

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->a(Landroid/graphics/Bitmap;)V

    .line 77
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->i:I

    .line 78
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->f:I

    .line 80
    const-string/jumbo v0, "LruBitmapPool"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    const-string/jumbo v0, "LruBitmapPool"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Put bitmap in pool="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    invoke-interface {v2, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/m;->b(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->c()V

    .line 85
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    if-eqz p3, :cond_3

    move-object v0, p3

    :goto_0
    invoke-interface {v1, p1, p2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/m;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    if-nez v0, :cond_4

    .line 113
    const-string/jumbo v1, "LruBitmapPool"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string/jumbo v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Missing bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    invoke-interface {v3, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/m;->b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->h:I

    .line 125
    :cond_1
    :goto_1
    const-string/jumbo v1, "LruBitmapPool"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    const-string/jumbo v1, "LruBitmapPool"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Get bitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    invoke-interface {v3, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/m;->b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-object v0

    .line 111
    :cond_3
    :try_start_1
    sget-object v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->a:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 118
    :cond_4
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->g:I

    .line 119
    iget v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->f:I

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/m;

    invoke-interface {v2, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/m;->c(Landroid/graphics/Bitmap;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->f:I

    .line 120
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/bitmap_recycle/i;->d:Lcom/bumptech/glide/load/engine/bitmap_recycle/k;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/k;->b(Landroid/graphics/Bitmap;)V

    .line 121
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_1

    .line 122
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
