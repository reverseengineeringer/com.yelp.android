.class public Lcom/bumptech/glide/load/resource/bitmap/s;
.super Ljava/lang/Object;
.source "ImageVideoDataLoadProvider.java"

# interfaces
.implements Lcom/yelp/android/ae/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ae/b",
        "<",
        "Lcom/yelp/android/v/h;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/r;

.field private final b:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/e",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yelp/android/v/i;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ae/b;Lcom/yelp/android/ae/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ae/b",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/yelp/android/ae/b",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Lcom/yelp/android/ae/b;->d()Lcom/bumptech/glide/load/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/s;->c:Lcom/bumptech/glide/load/e;

    .line 29
    new-instance v0, Lcom/yelp/android/v/i;

    invoke-interface {p1}, Lcom/yelp/android/ae/b;->c()Lcom/bumptech/glide/load/a;

    move-result-object v1

    invoke-interface {p2}, Lcom/yelp/android/ae/b;->c()Lcom/bumptech/glide/load/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/v/i;-><init>(Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/a;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/s;->d:Lcom/yelp/android/v/i;

    .line 31
    invoke-interface {p1}, Lcom/yelp/android/ae/b;->a()Lcom/bumptech/glide/load/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/s;->b:Lcom/bumptech/glide/load/d;

    .line 32
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/r;

    invoke-interface {p1}, Lcom/yelp/android/ae/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v1

    invoke-interface {p2}, Lcom/yelp/android/ae/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/r;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/s;->a:Lcom/bumptech/glide/load/resource/bitmap/r;

    .line 34
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/s;->b:Lcom/bumptech/glide/load/d;

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/yelp/android/v/h;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/s;->a:Lcom/bumptech/glide/load/resource/bitmap/r;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/a",
            "<",
            "Lcom/yelp/android/v/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/s;->d:Lcom/yelp/android/v/i;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/s;->c:Lcom/bumptech/glide/load/e;

    return-object v0
.end method
