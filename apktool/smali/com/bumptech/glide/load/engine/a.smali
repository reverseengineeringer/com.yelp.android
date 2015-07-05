.class Lcom/bumptech/glide/load/engine/a;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/engine/b;


# instance fields
.field private final b:Lcom/bumptech/glide/load/engine/n;

.field private final c:I

.field private final d:I

.field private final e:Lcom/yelp/android/r/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/r/c",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/yelp/android/ae/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ae/b",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/yelp/android/ad/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ad/c",
            "<TT;TZ;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private final j:Lcom/yelp/android/s/a;

.field private final k:Lcom/bumptech/glide/Priority;

.field private final l:Lcom/bumptech/glide/load/engine/b;

.field private volatile m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/bumptech/glide/load/engine/b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/engine/a;->a:Lcom/bumptech/glide/load/engine/b;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/engine/n;IILcom/yelp/android/r/c;Lcom/yelp/android/ae/b;Lcom/bumptech/glide/load/f;Lcom/yelp/android/ad/c;Lcom/yelp/android/s/a;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/n;",
            "II",
            "Lcom/yelp/android/r/c",
            "<TA;>;",
            "Lcom/yelp/android/ae/b",
            "<TA;TT;>;",
            "Lcom/bumptech/glide/load/f",
            "<TT;>;",
            "Lcom/yelp/android/ad/c",
            "<TT;TZ;>;",
            "Lcom/yelp/android/s/a;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/Priority;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    sget-object v11, Lcom/bumptech/glide/load/engine/a;->a:Lcom/bumptech/glide/load/engine/b;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/bumptech/glide/load/engine/a;-><init>(Lcom/bumptech/glide/load/engine/n;IILcom/yelp/android/r/c;Lcom/yelp/android/ae/b;Lcom/bumptech/glide/load/f;Lcom/yelp/android/ad/c;Lcom/yelp/android/s/a;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/b;)V

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/engine/n;IILcom/yelp/android/r/c;Lcom/yelp/android/ae/b;Lcom/bumptech/glide/load/f;Lcom/yelp/android/ad/c;Lcom/yelp/android/s/a;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/n;",
            "II",
            "Lcom/yelp/android/r/c",
            "<TA;>;",
            "Lcom/yelp/android/ae/b",
            "<TA;TT;>;",
            "Lcom/bumptech/glide/load/f",
            "<TT;>;",
            "Lcom/yelp/android/ad/c",
            "<TT;TZ;>;",
            "Lcom/yelp/android/s/a;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/a;->b:Lcom/bumptech/glide/load/engine/n;

    .line 60
    iput p2, p0, Lcom/bumptech/glide/load/engine/a;->c:I

    .line 61
    iput p3, p0, Lcom/bumptech/glide/load/engine/a;->d:I

    .line 62
    iput-object p4, p0, Lcom/bumptech/glide/load/engine/a;->e:Lcom/yelp/android/r/c;

    .line 63
    iput-object p5, p0, Lcom/bumptech/glide/load/engine/a;->f:Lcom/yelp/android/ae/b;

    .line 64
    iput-object p6, p0, Lcom/bumptech/glide/load/engine/a;->g:Lcom/bumptech/glide/load/f;

    .line 65
    iput-object p7, p0, Lcom/bumptech/glide/load/engine/a;->h:Lcom/yelp/android/ad/c;

    .line 66
    iput-object p9, p0, Lcom/bumptech/glide/load/engine/a;->i:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 67
    iput-object p8, p0, Lcom/bumptech/glide/load/engine/a;->j:Lcom/yelp/android/s/a;

    .line 68
    iput-object p10, p0, Lcom/bumptech/glide/load/engine/a;->k:Lcom/bumptech/glide/Priority;

    .line 69
    iput-object p11, p0, Lcom/bumptech/glide/load/engine/a;->l:Lcom/bumptech/glide/load/engine/b;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/a;)Lcom/bumptech/glide/load/engine/b;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->l:Lcom/bumptech/glide/load/engine/b;

    return-object v0
.end method

.method private a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/bumptech/glide/load/engine/t",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->j:Lcom/yelp/android/s/a;

    invoke-interface {v1, p1}, Lcom/yelp/android/s/a;->a(Lcom/bumptech/glide/load/b;)Ljava/io/File;

    move-result-object v1

    .line 215
    if-nez v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-object v0

    .line 221
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->f:Lcom/yelp/android/ae/b;

    invoke-interface {v2}, Lcom/yelp/android/ae/b;->a()Lcom/bumptech/glide/load/d;

    move-result-object v2

    iget v3, p0, Lcom/bumptech/glide/load/engine/a;->c:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/a;->d:I

    invoke-interface {v2, v1, v3, v4}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 223
    if-nez v0, :cond_0

    .line 224
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->j:Lcom/yelp/android/s/a;

    invoke-interface {v1, p1}, Lcom/yelp/android/s/a;->b(Lcom/bumptech/glide/load/b;)V

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v1

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->j:Lcom/yelp/android/s/a;

    invoke-interface {v0, p1}, Lcom/yelp/android/s/a;->b(Lcom/bumptech/glide/load/b;)V

    :cond_2
    throw v1
.end method

.method private a(Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/t",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    .line 137
    invoke-static {}, Lcom/yelp/android/ai/c;->a()J

    move-result-wide v0

    .line 138
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/a;->c(Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v2

    .line 139
    const-string/jumbo v3, "DecodeJob"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const-string/jumbo v3, "Transformed resource from source"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/a;->a(Ljava/lang/String;J)V

    .line 143
    :cond_0
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/a;->b(Lcom/bumptech/glide/load/engine/t;)V

    .line 145
    invoke-static {}, Lcom/yelp/android/ai/c;->a()J

    move-result-wide v0

    .line 146
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/a;->d(Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v2

    .line 147
    const-string/jumbo v3, "DecodeJob"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    const-string/jumbo v3, "Transcoded transformed from source"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/a;->a(Ljava/lang/String;J)V

    .line 150
    :cond_1
    return-object v2
.end method

.method private a(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/load/engine/t",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->i:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/a;->b(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    .line 194
    :cond_0
    :goto_0
    return-object v0

    .line 188
    :cond_1
    invoke-static {}, Lcom/yelp/android/ai/c;->a()J

    move-result-wide v2

    .line 189
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->f:Lcom/yelp/android/ae/b;

    invoke-interface {v0}, Lcom/yelp/android/ae/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/engine/a;->c:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/a;->d:I

    invoke-interface {v0, p1, v1, v4}, Lcom/bumptech/glide/load/d;->a(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    .line 190
    const-string/jumbo v1, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const-string/jumbo v1, "Decoded from source"

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/a;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 250
    const-string/jumbo v0, "DecodeJob"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lcom/yelp/android/ai/c;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->b:Lcom/bumptech/glide/load/engine/n;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method private b(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/t;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/bumptech/glide/load/engine/t",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 198
    invoke-static {}, Lcom/yelp/android/ai/c;->a()J

    move-result-wide v0

    .line 199
    new-instance v2, Lcom/bumptech/glide/load/engine/c;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a;->f:Lcom/yelp/android/ae/b;

    invoke-interface {v3}, Lcom/yelp/android/ae/b;->c()Lcom/bumptech/glide/load/a;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/bumptech/glide/load/engine/c;-><init>(Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/load/a;Ljava/lang/Object;)V

    .line 200
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a;->j:Lcom/yelp/android/s/a;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/a;->b:Lcom/bumptech/glide/load/engine/n;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/engine/n;->a()Lcom/bumptech/glide/load/b;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/yelp/android/s/a;->a(Lcom/bumptech/glide/load/b;Lcom/yelp/android/s/b;)V

    .line 201
    const-string/jumbo v2, "DecodeJob"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const-string/jumbo v2, "Wrote source to cache"

    invoke-direct {p0, v2, v0, v1}, Lcom/bumptech/glide/load/engine/a;->a(Ljava/lang/String;J)V

    .line 205
    :cond_0
    invoke-static {}, Lcom/yelp/android/ai/c;->a()J

    move-result-wide v0

    .line 206
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->b:Lcom/bumptech/glide/load/engine/n;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/n;->a()Lcom/bumptech/glide/load/b;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v2

    .line 207
    const-string/jumbo v3, "DecodeJob"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 208
    const-string/jumbo v3, "Decoded source from cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/a;->a(Ljava/lang/String;J)V

    .line 210
    :cond_1
    return-object v2
.end method

.method private b(Lcom/bumptech/glide/load/engine/t;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 154
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->i:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-static {}, Lcom/yelp/android/ai/c;->a()J

    move-result-wide v0

    .line 158
    new-instance v2, Lcom/bumptech/glide/load/engine/c;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a;->f:Lcom/yelp/android/ae/b;

    invoke-interface {v3}, Lcom/yelp/android/ae/b;->d()Lcom/bumptech/glide/load/e;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lcom/bumptech/glide/load/engine/c;-><init>(Lcom/bumptech/glide/load/engine/a;Lcom/bumptech/glide/load/a;Ljava/lang/Object;)V

    .line 159
    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a;->j:Lcom/yelp/android/s/a;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/a;->b:Lcom/bumptech/glide/load/engine/n;

    invoke-interface {v3, v4, v2}, Lcom/yelp/android/s/a;->a(Lcom/bumptech/glide/load/b;Lcom/yelp/android/s/b;)V

    .line 160
    const-string/jumbo v2, "DecodeJob"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const-string/jumbo v2, "Wrote transformed from source to cache"

    invoke-direct {p0, v2, v0, v1}, Lcom/bumptech/glide/load/engine/a;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private c(Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/t",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 231
    if-nez p1, :cond_1

    .line 232
    const/4 v0, 0x0

    .line 239
    :cond_0
    :goto_0
    return-object v0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->g:Lcom/bumptech/glide/load/f;

    iget v1, p0, Lcom/bumptech/glide/load/engine/a;->c:I

    iget v2, p0, Lcom/bumptech/glide/load/engine/a;->d:I

    invoke-interface {v0, p1, v1, v2}, Lcom/bumptech/glide/load/f;->a(Lcom/bumptech/glide/load/engine/t;II)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    .line 236
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->d()V

    goto :goto_0
.end method

.method private d(Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<TT;>;)",
            "Lcom/bumptech/glide/load/engine/t",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    const/4 v0, 0x0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->h:Lcom/yelp/android/ad/c;

    invoke-interface {v0, p1}, Lcom/yelp/android/ad/c;->a(Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Lcom/bumptech/glide/load/engine/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/t",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 166
    .line 168
    :try_start_0
    invoke-static {}, Lcom/yelp/android/ai/c;->a()J

    move-result-wide v0

    .line 169
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->e:Lcom/yelp/android/r/c;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/a;->k:Lcom/bumptech/glide/Priority;

    invoke-interface {v2, v3}, Lcom/yelp/android/r/c;->a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;

    move-result-object v2

    .line 170
    const-string/jumbo v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    const-string/jumbo v3, "Fetched data"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/a;->a(Ljava/lang/String;J)V

    .line 173
    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/a;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 174
    const/4 v0, 0x0

    .line 178
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->e:Lcom/yelp/android/r/c;

    invoke-interface {v1}, Lcom/yelp/android/r/c;->a()V

    .line 180
    :goto_0
    return-object v0

    .line 176
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/a;->a(Ljava/lang/Object;)Lcom/bumptech/glide/load/engine/t;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->e:Lcom/yelp/android/r/c;

    invoke-interface {v1}, Lcom/yelp/android/r/c;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/a;->e:Lcom/yelp/android/r/c;

    invoke-interface {v1}, Lcom/yelp/android/r/c;->a()V

    throw v0
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/t;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/t",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    .line 79
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->i:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x0

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 83
    :cond_1
    invoke-static {}, Lcom/yelp/android/ai/c;->a()J

    move-result-wide v0

    .line 84
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->b:Lcom/bumptech/glide/load/engine/n;

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v2

    .line 85
    const-string/jumbo v3, "DecodeJob"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 86
    const-string/jumbo v3, "Decoded transformed from cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/a;->a(Ljava/lang/String;J)V

    .line 88
    :cond_2
    invoke-static {}, Lcom/yelp/android/ai/c;->a()J

    move-result-wide v4

    .line 89
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/a;->d(Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    .line 90
    const-string/jumbo v1, "DecodeJob"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    const-string/jumbo v1, "Transcoded transformed from cache"

    invoke-direct {p0, v1, v4, v5}, Lcom/bumptech/glide/load/engine/a;->a(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public b()Lcom/bumptech/glide/load/engine/t;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/t",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->i:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    .line 107
    :cond_0
    invoke-static {}, Lcom/yelp/android/ai/c;->a()J

    move-result-wide v0

    .line 108
    iget-object v2, p0, Lcom/bumptech/glide/load/engine/a;->b:Lcom/bumptech/glide/load/engine/n;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/engine/n;->a()Lcom/bumptech/glide/load/b;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v2

    .line 109
    const-string/jumbo v3, "DecodeJob"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 110
    const-string/jumbo v3, "Decoded source from cache"

    invoke-direct {p0, v3, v0, v1}, Lcom/bumptech/glide/load/engine/a;->a(Ljava/lang/String;J)V

    .line 112
    :cond_1
    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    goto :goto_0
.end method

.method public c()Lcom/bumptech/glide/load/engine/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/t",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/a;->e()Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    .line 128
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/a;->a(Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/a;->e:Lcom/yelp/android/r/c;

    invoke-interface {v0}, Lcom/yelp/android/r/c;->c()V

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/a;->m:Z

    .line 134
    return-void
.end method
