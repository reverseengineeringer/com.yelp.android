.class public Lcom/bumptech/glide/load/resource/bitmap/k;
.super Lcom/yelp/android/ae/a;
.source "GlideBitmapDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ae/a",
        "<",
        "Lcom/bumptech/glide/load/resource/bitmap/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lcom/yelp/android/x/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/j;Lcom/yelp/android/x/c;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/yelp/android/ae/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 15
    iput-object p2, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->b:Lcom/yelp/android/x/c;

    .line 16
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/j;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ao/h;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 25
    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->b:Lcom/yelp/android/x/c;

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/k;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/bumptech/glide/load/resource/bitmap/j;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/j;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/yelp/android/x/c;->a(Landroid/graphics/Bitmap;)Z

    .line 26
    return-void
.end method
