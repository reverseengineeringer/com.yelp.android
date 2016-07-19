.class public Lcom/yelp/android/ag/c;
.super Ljava/lang/Object;
.source "GifDrawableLoadProvider.java"

# interfaces
.implements Lcom/yelp/android/ak/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ak/b",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/yelp/android/ag/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ag/i;

.field private final b:Lcom/yelp/android/ag/j;

.field private final c:Lcom/yelp/android/aa/o;

.field private final d:Lcom/yelp/android/af/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/af/c",
            "<",
            "Lcom/yelp/android/ag/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/x/c;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/yelp/android/ag/i;

    invoke-direct {v0, p1, p2}, Lcom/yelp/android/ag/i;-><init>(Landroid/content/Context;Lcom/yelp/android/x/c;)V

    iput-object v0, p0, Lcom/yelp/android/ag/c;->a:Lcom/yelp/android/ag/i;

    .line 28
    new-instance v0, Lcom/yelp/android/af/c;

    iget-object v1, p0, Lcom/yelp/android/ag/c;->a:Lcom/yelp/android/ag/i;

    invoke-direct {v0, v1}, Lcom/yelp/android/af/c;-><init>(Lcom/bumptech/glide/load/d;)V

    iput-object v0, p0, Lcom/yelp/android/ag/c;->d:Lcom/yelp/android/af/c;

    .line 29
    new-instance v0, Lcom/yelp/android/ag/j;

    invoke-direct {v0, p2}, Lcom/yelp/android/ag/j;-><init>(Lcom/yelp/android/x/c;)V

    iput-object v0, p0, Lcom/yelp/android/ag/c;->b:Lcom/yelp/android/ag/j;

    .line 30
    new-instance v0, Lcom/yelp/android/aa/o;

    invoke-direct {v0}, Lcom/yelp/android/aa/o;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ag/c;->c:Lcom/yelp/android/aa/o;

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
            "Lcom/yelp/android/ag/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ag/c;->d:Lcom/yelp/android/af/c;

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
            "Lcom/yelp/android/ag/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ag/c;->a:Lcom/yelp/android/ag/i;

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
    iget-object v0, p0, Lcom/yelp/android/ag/c;->c:Lcom/yelp/android/aa/o;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/yelp/android/ag/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ag/c;->b:Lcom/yelp/android/ag/j;

    return-object v0
.end method
