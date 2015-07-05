.class final Lcom/bumptech/glide/load/resource/bitmap/g;
.super Lcom/bumptech/glide/load/resource/bitmap/f;
.source "Downsampler.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(IIII)I
    .locals 2

    .prologue
    .line 39
    div-int v0, p2, p4

    div-int v1, p1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "AT_LEAST.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method
