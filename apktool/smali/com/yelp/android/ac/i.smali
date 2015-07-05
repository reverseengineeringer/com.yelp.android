.class public Lcom/yelp/android/ac/i;
.super Ljava/lang/Object;
.source "ImageVideoGifDrawableLoadProvider.java"

# interfaces
.implements Lcom/yelp/android/ae/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ae/b",
        "<",
        "Lcom/yelp/android/v/h;",
        "Lcom/yelp/android/ac/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/File;",
            "Lcom/yelp/android/ac/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/yelp/android/v/h;",
            "Lcom/yelp/android/ac/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/yelp/android/ac/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/load/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a",
            "<",
            "Lcom/yelp/android/v/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/ae/b;Lcom/yelp/android/ae/b;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ae/b",
            "<",
            "Lcom/yelp/android/v/h;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/yelp/android/ae/b",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/yelp/android/ab/b;",
            ">;",
            "Lcom/bumptech/glide/load/engine/bitmap_recycle/e;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/yelp/android/ac/c;

    invoke-interface {p1}, Lcom/yelp/android/ae/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v1

    invoke-interface {p2}, Lcom/yelp/android/ae/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lcom/yelp/android/ac/c;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    .line 36
    new-instance v1, Lcom/yelp/android/aa/c;

    new-instance v2, Lcom/yelp/android/ac/g;

    invoke-direct {v2, v0}, Lcom/yelp/android/ac/g;-><init>(Lcom/bumptech/glide/load/d;)V

    invoke-direct {v1, v2}, Lcom/yelp/android/aa/c;-><init>(Lcom/bumptech/glide/load/d;)V

    iput-object v1, p0, Lcom/yelp/android/ac/i;->a:Lcom/bumptech/glide/load/d;

    .line 37
    iput-object v0, p0, Lcom/yelp/android/ac/i;->b:Lcom/bumptech/glide/load/d;

    .line 38
    new-instance v0, Lcom/yelp/android/ac/f;

    invoke-interface {p1}, Lcom/yelp/android/ae/b;->d()Lcom/bumptech/glide/load/e;

    move-result-object v1

    invoke-interface {p2}, Lcom/yelp/android/ae/b;->d()Lcom/bumptech/glide/load/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ac/f;-><init>(Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/e;)V

    iput-object v0, p0, Lcom/yelp/android/ac/i;->c:Lcom/bumptech/glide/load/e;

    .line 41
    invoke-interface {p1}, Lcom/yelp/android/ae/b;->c()Lcom/bumptech/glide/load/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ac/i;->d:Lcom/bumptech/glide/load/a;

    .line 42
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
            "Lcom/yelp/android/ac/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ac/i;->a:Lcom/bumptech/glide/load/d;

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
            "Lcom/yelp/android/ac/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ac/i;->b:Lcom/bumptech/glide/load/d;

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
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ac/i;->d:Lcom/bumptech/glide/load/a;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/yelp/android/ac/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ac/i;->c:Lcom/bumptech/glide/load/e;

    return-object v0
.end method
