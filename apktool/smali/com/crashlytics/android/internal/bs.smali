.class final Lcom/crashlytics/android/internal/bs;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private synthetic c:Lcom/crashlytics/android/internal/bp;


# direct methods
.method private constructor <init>(Lcom/crashlytics/android/internal/bp;Lcom/crashlytics/android/internal/br;)V
    .locals 1

    .prologue
    .line 447
    iput-object p1, p0, Lcom/crashlytics/android/internal/bs;->c:Lcom/crashlytics/android/internal/bp;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 448
    iget v0, p2, Lcom/crashlytics/android/internal/br;->b:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lcom/crashlytics/android/internal/bp;->a(Lcom/crashlytics/android/internal/bp;I)I

    move-result v0

    iput v0, p0, Lcom/crashlytics/android/internal/bs;->a:I

    .line 449
    iget v0, p2, Lcom/crashlytics/android/internal/br;->c:I

    iput v0, p0, Lcom/crashlytics/android/internal/bs;->b:I

    .line 450
    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/internal/bp;Lcom/crashlytics/android/internal/br;B)V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/internal/bs;-><init>(Lcom/crashlytics/android/internal/bp;Lcom/crashlytics/android/internal/br;)V

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 4

    .prologue
    .line 473
    iget v0, p0, Lcom/crashlytics/android/internal/bs;->b:I

    if-nez v0, :cond_0

    .line 474
    const/4 v0, -0x1

    .line 480
    :goto_0
    return v0

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/bs;->c:Lcom/crashlytics/android/internal/bp;

    invoke-static {v0}, Lcom/crashlytics/android/internal/bp;->a(Lcom/crashlytics/android/internal/bp;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget v1, p0, Lcom/crashlytics/android/internal/bs;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 477
    iget-object v0, p0, Lcom/crashlytics/android/internal/bs;->c:Lcom/crashlytics/android/internal/bp;

    invoke-static {v0}, Lcom/crashlytics/android/internal/bp;->a(Lcom/crashlytics/android/internal/bp;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 478
    iget-object v1, p0, Lcom/crashlytics/android/internal/bs;->c:Lcom/crashlytics/android/internal/bp;

    iget v2, p0, Lcom/crashlytics/android/internal/bs;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/crashlytics/android/internal/bp;->a(Lcom/crashlytics/android/internal/bp;I)I

    move-result v1

    iput v1, p0, Lcom/crashlytics/android/internal/bs;->a:I

    .line 479
    iget v1, p0, Lcom/crashlytics/android/internal/bs;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/crashlytics/android/internal/bs;->b:I

    goto :goto_0
.end method

.method public final read([BII)I
    .locals 2

    .prologue
    .line 454
    const-string/jumbo v0, "buffer"

    invoke-static {p1, v0}, Lcom/crashlytics/android/internal/bp;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 455
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1

    .line 456
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 458
    :cond_1
    iget v0, p0, Lcom/crashlytics/android/internal/bs;->b:I

    if-lez v0, :cond_3

    .line 459
    iget v0, p0, Lcom/crashlytics/android/internal/bs;->b:I

    if-le p3, v0, :cond_2

    .line 460
    iget p3, p0, Lcom/crashlytics/android/internal/bs;->b:I

    .line 462
    :cond_2
    iget-object v0, p0, Lcom/crashlytics/android/internal/bs;->c:Lcom/crashlytics/android/internal/bp;

    iget v1, p0, Lcom/crashlytics/android/internal/bs;->a:I

    invoke-static {v0, v1, p1, p2, p3}, Lcom/crashlytics/android/internal/bp;->a(Lcom/crashlytics/android/internal/bp;I[BII)V

    .line 463
    iget-object v0, p0, Lcom/crashlytics/android/internal/bs;->c:Lcom/crashlytics/android/internal/bp;

    iget v1, p0, Lcom/crashlytics/android/internal/bs;->a:I

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lcom/crashlytics/android/internal/bp;->a(Lcom/crashlytics/android/internal/bp;I)I

    move-result v0

    iput v0, p0, Lcom/crashlytics/android/internal/bs;->a:I

    .line 464
    iget v0, p0, Lcom/crashlytics/android/internal/bs;->b:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/crashlytics/android/internal/bs;->b:I

    .line 467
    :goto_0
    return p3

    :cond_3
    const/4 p3, -0x1

    goto :goto_0
.end method
