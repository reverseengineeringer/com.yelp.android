.class public Lcom/yelp/android/ag/e;
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
        "Lcom/yelp/android/ag/b;",
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

.field private final b:Lcom/yelp/android/x/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/f;Lcom/yelp/android/x/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/yelp/android/x/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/yelp/android/ag/e;->a:Lcom/bumptech/glide/load/f;

    .line 20
    iput-object p2, p0, Lcom/yelp/android/ag/e;->b:Lcom/yelp/android/x/c;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/i;II)Lcom/bumptech/glide/load/engine/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/i",
            "<",
            "Lcom/yelp/android/ag/b;",
            ">;II)",
            "Lcom/bumptech/glide/load/engine/i",
            "<",
            "Lcom/yelp/android/ag/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/i;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ag/b;

    .line 31
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/i;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ag/b;

    invoke-virtual {v1}, Lcom/yelp/android/ag/b;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 32
    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/c;

    iget-object v3, p0, Lcom/yelp/android/ag/e;->b:Lcom/yelp/android/x/c;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Landroid/graphics/Bitmap;Lcom/yelp/android/x/c;)V

    .line 33
    iget-object v3, p0, Lcom/yelp/android/ag/e;->a:Lcom/bumptech/glide/load/f;

    invoke-interface {v3, v1, p2, p3}, Lcom/bumptech/glide/load/f;->a(Lcom/bumptech/glide/load/engine/i;II)Lcom/bumptech/glide/load/engine/i;

    move-result-object v1

    .line 34
    invoke-interface {v1}, Lcom/bumptech/glide/load/engine/i;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    new-instance p1, Lcom/yelp/android/ag/d;

    new-instance v2, Lcom/yelp/android/ag/b;

    iget-object v3, p0, Lcom/yelp/android/ag/e;->a:Lcom/bumptech/glide/load/f;

    invoke-direct {v2, v0, v1, v3}, Lcom/yelp/android/ag/b;-><init>(Lcom/yelp/android/ag/b;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/f;)V

    invoke-direct {p1, v2}, Lcom/yelp/android/ag/d;-><init>(Lcom/yelp/android/ag/b;)V

    .line 38
    :cond_0
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/ag/e;->a:Lcom/bumptech/glide/load/f;

    invoke-interface {v0}, Lcom/bumptech/glide/load/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
