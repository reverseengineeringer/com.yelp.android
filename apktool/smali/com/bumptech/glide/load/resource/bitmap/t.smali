.class public Lcom/bumptech/glide/load/resource/bitmap/t;
.super Ljava/lang/Object;
.source "StreamBitmapDataLoadProvider.java"

# interfaces
.implements Lcom/yelp/android/ae/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ae/b",
        "<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/bitmap/u;

.field private final b:Lcom/bumptech/glide/load/resource/bitmap/b;

.field private final c:Lcom/yelp/android/v/p;

.field private final d:Lcom/yelp/android/aa/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/aa/c",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/yelp/android/v/p;

    invoke-direct {v0}, Lcom/yelp/android/v/p;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->c:Lcom/yelp/android/v/p;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/u;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/bitmap/u;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;Lcom/bumptech/glide/load/DecodeFormat;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->a:Lcom/bumptech/glide/load/resource/bitmap/u;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->b:Lcom/bumptech/glide/load/resource/bitmap/b;

    .line 31
    new-instance v0, Lcom/yelp/android/aa/c;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->a:Lcom/bumptech/glide/load/resource/bitmap/u;

    invoke-direct {v0, v1}, Lcom/yelp/android/aa/c;-><init>(Lcom/bumptech/glide/load/d;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->d:Lcom/yelp/android/aa/c;

    .line 32
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
    .line 36
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->d:Lcom/yelp/android/aa/c;

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->a:Lcom/bumptech/glide/load/resource/bitmap/u;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/a",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->c:Lcom/yelp/android/v/p;

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
    .line 51
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/bitmap/t;->b:Lcom/bumptech/glide/load/resource/bitmap/b;

    return-object v0
.end method
