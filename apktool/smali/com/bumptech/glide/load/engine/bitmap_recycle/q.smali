.class Lcom/bumptech/glide/load/engine/bitmap_recycle/q;
.super Lcom/bumptech/glide/load/engine/bitmap_recycle/d;
.source "SizeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/d",
        "<",
        "Lcom/bumptech/glide/load/engine/bitmap_recycle/p;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/bumptech/glide/load/engine/bitmap_recycle/p;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/q;)V

    return-object v0
.end method

.method public a(I)Lcom/bumptech/glide/load/engine/bitmap_recycle/p;
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/q;->c()Lcom/bumptech/glide/load/engine/bitmap_recycle/n;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;

    .line 128
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/p;->a(I)V

    .line 129
    return-object v0
.end method

.method protected synthetic b()Lcom/bumptech/glide/load/engine/bitmap_recycle/n;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/q;->a()Lcom/bumptech/glide/load/engine/bitmap_recycle/p;

    move-result-object v0

    return-object v0
.end method
