.class public abstract Lcom/google/android/gms/internal/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/g;


# static fields
.field protected static i:Lcom/google/android/gms/common/api/GoogleApiClient;


# instance fields
.field protected a:Landroid/view/MotionEvent;

.field protected b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected c:J

.field protected d:J

.field protected e:J

.field protected f:J

.field protected g:Landroid/util/DisplayMetrics;

.field protected h:Lcom/google/android/gms/internal/k;

.field private j:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/k;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->b:Ljava/util/LinkedList;

    iput-wide v2, p0, Lcom/google/android/gms/internal/h;->c:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/h;->d:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/h;->e:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/h;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/h;->j:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/h;->h:Lcom/google/android/gms/internal/k;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->g:Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->g:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->g:Landroid/util/DisplayMetrics;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x7

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/h;->c(Landroid/content/Context;)Lcom/yelp/android/az/b$a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/h;->j:Z

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/az/b$a;->g()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/h;->b(Landroid/content/Context;)Lcom/yelp/android/az/b$a;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/h;->a(Lcom/yelp/android/az/b$a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_2
    move-exception v0

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/h;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/yelp/android/az/b$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/lq;->a(Lcom/google/android/gms/internal/lq;)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/h;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_0

    const-string/jumbo v0, "^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->h:Lcom/google/android/gms/internal/k;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/k;->a([BZ)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method a([BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x100

    const/16 v5, 0xf0

    const/16 v4, 0xef

    array-length v0, p1

    if-le v0, v4, :cond_0

    new-instance v0, Lcom/yelp/android/az/b$a;

    invoke-direct {v0}, Lcom/yelp/android/az/b$a;-><init>()V

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/az/b$a;->t:Ljava/lang/Long;

    invoke-static {v0}, Lcom/google/android/gms/internal/lq;->a(Lcom/google/android/gms/internal/lq;)[B

    move-result-object p1

    :cond_0
    array-length v0, p1

    if-ge v0, v4, :cond_2

    array-length v0, p1

    rsub-int v0, v0, 0xef

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    new-array v1, v6, [B

    new-instance v2, Lcom/google/android/gms/internal/f;

    invoke-direct {v2}, Lcom/google/android/gms/internal/f;-><init>()V

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/f;->a([B[B)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, p2, v1}, Lcom/google/android/gms/internal/h;->a(Ljava/lang/String;[B)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->h:Lcom/google/android/gms/internal/k;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/k;->a([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    array-length v1, p1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_0
.end method

.method public a(III)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/h;->a:Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/internal/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    const-wide/16 v2, 0x0

    move/from16 v0, p3

    int-to-long v4, v0

    const/4 v6, 0x1

    move/from16 v0, p1

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/gms/internal/h;->g:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    move/from16 v0, p2

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/internal/h;->g:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gms/internal/h;->a:Landroid/view/MotionEvent;

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 4

    const-wide/16 v2, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/h;->j:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/h;->f:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/h;->e:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/h;->d:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/h;->c:J

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/h;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->a:Landroid/view/MotionEvent;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/h;->j:Z

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    return-void

    :pswitch_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/h;->a:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->b:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/google/android/gms/internal/h;->a:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/h;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/h;->e:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/h;->e:J

    goto :goto_1

    :pswitch_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/h;->c:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/h;->c:J

    goto :goto_1

    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/h;->f:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/h;->f:J

    goto :goto_1

    :pswitch_3
    iget-wide v0, p0, Lcom/google/android/gms/internal/h;->d:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/h;->d:J

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method a(Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/16 v1, 0x20

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/lj;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/lj;-><init>([B)V

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/lj;->a([B)V

    return-void
.end method

.method protected abstract b(Landroid/content/Context;)Lcom/yelp/android/az/b$a;
.end method

.method protected abstract c(Landroid/content/Context;)Lcom/yelp/android/az/b$a;
.end method
