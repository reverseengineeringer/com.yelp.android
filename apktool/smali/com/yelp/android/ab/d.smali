.class public Lcom/yelp/android/ab/d;
.super Ljava/lang/Object;
.source "GifDrawableLoadProvider.java"

# interfaces
.implements Lcom/yelp/android/ae/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ae/b",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/yelp/android/ab/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ab/o;

.field private final b:Lcom/yelp/android/ab/r;

.field private final c:Lcom/yelp/android/v/p;

.field private final d:Lcom/yelp/android/aa/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/aa/c",
            "<",
            "Lcom/yelp/android/ab/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/yelp/android/ab/o;

    invoke-direct {v0, p1, p2}, Lcom/yelp/android/ab/o;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    iput-object v0, p0, Lcom/yelp/android/ab/d;->a:Lcom/yelp/android/ab/o;

    .line 28
    new-instance v0, Lcom/yelp/android/aa/c;

    iget-object v1, p0, Lcom/yelp/android/ab/d;->a:Lcom/yelp/android/ab/o;

    invoke-direct {v0, v1}, Lcom/yelp/android/aa/c;-><init>(Lcom/bumptech/glide/load/d;)V

    iput-object v0, p0, Lcom/yelp/android/ab/d;->d:Lcom/yelp/android/aa/c;

    .line 29
    new-instance v0, Lcom/yelp/android/ab/r;

    invoke-direct {v0, p2}, Lcom/yelp/android/ab/r;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/e;)V

    iput-object v0, p0, Lcom/yelp/android/ab/d;->b:Lcom/yelp/android/ab/r;

    .line 30
    new-instance v0, Lcom/yelp/android/v/p;

    invoke-direct {v0}, Lcom/yelp/android/v/p;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ab/d;->c:Lcom/yelp/android/v/p;

    .line 31
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
            "Lcom/yelp/android/ab/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ab/d;->d:Lcom/yelp/android/aa/c;

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
            "Lcom/yelp/android/ab/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ab/d;->a:Lcom/yelp/android/ab/o;

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
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ab/d;->c:Lcom/yelp/android/v/p;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/yelp/android/ab/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ab/d;->b:Lcom/yelp/android/ab/r;

    return-object v0
.end method
