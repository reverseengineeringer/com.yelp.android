.class public final Lcom/yelp/android/ai/f;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ai/f;->a:[C

    .line 17
    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, Lcom/yelp/android/ai/f;->b:[C

    .line 19
    const/16 v0, 0x28

    new-array v0, v0, [C

    sput-object v0, Lcom/yelp/android/ai/f;->c:[C

    return-void
.end method

.method public static a(IILandroid/graphics/Bitmap$Config;)I
    .locals 2

    .prologue
    .line 85
    mul-int v0, p0, p1

    invoke-static {p2}, Lcom/yelp/android/ai/f;->a(Landroid/graphics/Bitmap$Config;)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private static a(Landroid/graphics/Bitmap$Config;)I
    .locals 2

    .prologue
    .line 90
    if-nez p0, :cond_0

    .line 91
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 95
    :cond_0
    sget-object v0, Lcom/yelp/android/ai/g;->a:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    const/4 v0, 0x4

    .line 107
    :goto_0
    return v0

    .line 97
    :pswitch_0
    const/4 v0, 0x1

    .line 98
    goto :goto_0

    .line 101
    :pswitch_1
    const/4 v0, 0x2

    .line 102
    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/graphics/Bitmap;)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 77
    :goto_0
    return v0

    .line 73
    :catch_0
    move-exception v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/yelp/android/ai/f;->b:[C

    invoke-static {p0, v0}, Lcom/yelp/android/ai/f;->a([B[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B[C)Ljava/lang/String;
    .locals 5

    .prologue
    .line 43
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 44
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 45
    mul-int/lit8 v2, v0, 0x2

    sget-object v3, Lcom/yelp/android/ai/f;->a:[C

    ushr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, p1, v2

    .line 46
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/yelp/android/ai/f;->a:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, p1, v2

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static a(I)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, p0}, Ljava/util/ArrayDeque;-><init>(I)V

    return-object v0
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 114
    invoke-static {}, Lcom/yelp/android/ai/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You must call this method on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 132
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 139
    invoke-static {}, Lcom/yelp/android/ai/f;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
