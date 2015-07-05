.class public Lcom/bumptech/glide/load/resource/bitmap/l;
.super Lcom/bumptech/glide/load/resource/bitmap/d;
.source "FitCenter.java"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/resource/bitmap/d;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 24
    invoke-static {p2, p1, p3, p4}, Lcom/bumptech/glide/load/resource/bitmap/v;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "FitCenter.com.bumptech.glide.load.resource.bitmap"

    return-object v0
.end method
