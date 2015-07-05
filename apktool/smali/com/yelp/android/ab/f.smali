.class public Lcom/yelp/android/ab/f;
.super Ljava/lang/Object;
.source "GifDrawableTransformation.java"

# interfaces
.implements Lcom/bumptech/glide/load/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/f",
        "<",
        "Lcom/yelp/android/ab/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/f;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yelp/android/ab/f;->a:Lcom/bumptech/glide/load/f;

    .line 20
    iput-object p2, p0, Lcom/yelp/android/ab/f;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/t;II)Lcom/bumptech/glide/load/engine/t;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Lcom/yelp/android/ab/b;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/t",
            "<",
            "Lcom/yelp/android/ab/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ab/b;

    .line 31
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ab/b;

    invoke-virtual {v1}, Lcom/yelp/android/ab/b;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/c;

    iget-object v3, p0, Lcom/yelp/android/ab/f;->b:Lcom/bumptech/glide/load/engine/bitmap_recycle/e;

    invoke-direct {v2, v1, v3}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    .line 33
    iget-object v1, p0, Lcom/yelp/android/ab/f;->a:Lcom/bumptech/glide/load/f;

    invoke-interface {v1, v2, p2, p3}, Lcom/bumptech/glide/load/f;->a(Lcom/bumptech/glide/load/engine/t;II)Lcom/bumptech/glide/load/engine/t;

    move-result-object v1

    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 35
    invoke-interface {v2}, Lcom/bumptech/glide/load/engine/t;->d()V

    .line 37
    :cond_0
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/t;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 39
    iget-object v2, p0, Lcom/yelp/android/ab/f;->a:Lcom/bumptech/glide/load/f;

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ab/b;->a(Lcom/bumptech/glide/load/f;Landroid/graphics/Bitmap;)V

    .line 40
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ab/f;->a:Lcom/bumptech/glide/load/f;

    invoke-interface {v0}, Lcom/bumptech/glide/load/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
