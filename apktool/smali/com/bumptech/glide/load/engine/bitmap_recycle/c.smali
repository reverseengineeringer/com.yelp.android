.class Lcom/bumptech/glide/load/engine/bitmap_recycle/c;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
.source "AttributeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/d",
        "<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/c;)V

    return-object v0
.end method

.method public a(IILandroid/graphics/Bitmap$Config;)Lcom/bumptech/glide/load/engine/bitmap_recycle/b;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->c()Lcom/bumptech/glide/load/engine/bitmap_recycle/n;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    .line 64
    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/load/engine/bitmap_recycle/b;->a(IILandroid/graphics/Bitmap$Config;)V

    .line 65
    return-object v0
.end method

.method protected synthetic b()Lcom/bumptech/glide/load/engine/bitmap_recycle/n;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/c;->a()Lcom/bumptech/glide/load/engine/bitmap_recycle/b;

    move-result-object v0

    return-object v0
.end method
