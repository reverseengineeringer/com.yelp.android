.class public Lcom/yelp/android/ah/g;
.super Ljava/lang/Object;
.source "ImageVideoGifDrawableLoadProvider.java"

# interfaces
.implements Lcom/yelp/android/ak/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ak/b",
        "<",
        "Lcom/yelp/android/aa/g;",
        "Lcom/yelp/android/ah/a;",
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
            "Lcom/yelp/android/ah/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/yelp/android/aa/g;",
            "Lcom/yelp/android/ah/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/yelp/android/ah/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bumptech/glide/load/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a",
            "<",
            "Lcom/yelp/android/aa/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/ak/b;Lcom/yelp/android/ak/b;Lcom/yelp/android/x/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ak/b",
            "<",
            "Lcom/yelp/android/aa/g;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/yelp/android/ak/b",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/yelp/android/ag/b;",
            ">;",
            "Lcom/yelp/android/x/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/yelp/android/ah/c;

    invoke-interface {p1}, Lcom/yelp/android/ak/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v1

    invoke-interface {p2}, Lcom/yelp/android/ak/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v2

    invoke-direct {v0, v1, v2, p3}, Lcom/yelp/android/ah/c;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;Lcom/yelp/android/x/c;)V

    .line 36
    new-instance v1, Lcom/yelp/android/af/c;

    new-instance v2, Lcom/yelp/android/ah/e;

    invoke-direct {v2, v0}, Lcom/yelp/android/ah/e;-><init>(Lcom/bumptech/glide/load/d;)V

    invoke-direct {v1, v2}, Lcom/yelp/android/af/c;-><init>(Lcom/bumptech/glide/load/d;)V

    iput-object v1, p0, Lcom/yelp/android/ah/g;->a:Lcom/bumptech/glide/load/d;

    .line 37
    iput-object v0, p0, Lcom/yelp/android/ah/g;->b:Lcom/bumptech/glide/load/d;

    .line 38
    new-instance v0, Lcom/yelp/android/ah/d;

    invoke-interface {p1}, Lcom/yelp/android/ak/b;->d()Lcom/bumptech/glide/load/e;

    move-result-object v1

    invoke-interface {p2}, Lcom/yelp/android/ak/b;->d()Lcom/bumptech/glide/load/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ah/d;-><init>(Lcom/bumptech/glide/load/e;Lcom/bumptech/glide/load/e;)V

    iput-object v0, p0, Lcom/yelp/android/ah/g;->c:Lcom/bumptech/glide/load/e;

    .line 41
    invoke-interface {p1}, Lcom/yelp/android/ak/b;->c()Lcom/bumptech/glide/load/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ah/g;->d:Lcom/bumptech/glide/load/a;

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
            "Lcom/yelp/android/ah/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ah/g;->a:Lcom/bumptech/glide/load/d;

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/yelp/android/aa/g;",
            "Lcom/yelp/android/ah/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ah/g;->b:Lcom/bumptech/glide/load/d;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/a",
            "<",
            "Lcom/yelp/android/aa/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ah/g;->d:Lcom/bumptech/glide/load/a;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/yelp/android/ah/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ah/g;->c:Lcom/bumptech/glide/load/e;

    return-object v0
.end method
