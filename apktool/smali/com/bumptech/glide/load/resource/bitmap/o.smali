.class public Lcom/bumptech/glide/load/resource/bitmap/o;
.super Lcom/yelp/android/z/a;
.source "GlideBitmapDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/z/a",
        "<",
        "Lcom/bumptech/glide/load/resource/bitmap/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/m;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/yelp/android/z/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    .line 16
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/bitmap/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/m;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ai/f;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 25
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/o;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/bitmap/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/m;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/bitmap_recycle/e;->a(Landroid/graphics/Bitmap;)Z

    .line 26
    return-void
.end method
