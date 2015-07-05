.class public Lcom/yelp/android/s/e;
.super Lcom/yelp/android/ai/d;
.source "LruResourceCache.java"

# interfaces
.implements Lcom/yelp/android/s/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ai/d",
        "<",
        "Lcom/bumptech/glide/load/b;",
        "Lcom/bumptech/glide/load/engine/t",
        "<*>;>;",
        "Lcom/yelp/android/s/f;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/s/g;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/yelp/android/ai/d;-><init>(I)V

    .line 22
    return-void
.end method


# virtual methods
.method protected a(Lcom/bumptech/glide/load/engine/t;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 38
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/t;->c()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/bumptech/glide/load/engine/t;

    invoke-virtual {p0, p1}, Lcom/yelp/android/s/e;->a(Lcom/bumptech/glide/load/engine/t;)I

    move-result v0

    return v0
.end method

.method public synthetic a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/load/engine/t;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/ai/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/t;

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 44
    const/16 v0, 0x3c

    if-lt p1, v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/s/e;->a()V

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/s/e;->b()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/yelp/android/s/e;->b(I)V

    goto :goto_0
.end method

.method protected a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            "Lcom/bumptech/glide/load/engine/t",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yelp/android/s/e;->a:Lcom/yelp/android/s/g;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/yelp/android/s/e;->a:Lcom/yelp/android/s/g;

    invoke-interface {v0, p2}, Lcom/yelp/android/s/g;->b(Lcom/bumptech/glide/load/engine/t;)V

    .line 34
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/s/g;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yelp/android/s/e;->a:Lcom/yelp/android/s/g;

    .line 27
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/bumptech/glide/load/b;

    check-cast p2, Lcom/bumptech/glide/load/engine/t;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/s/e;->a(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/t;)V

    return-void
.end method

.method public bridge synthetic b(Lcom/bumptech/glide/load/b;Lcom/bumptech/glide/load/engine/t;)Lcom/bumptech/glide/load/engine/t;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ai/d;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/engine/t;

    return-object v0
.end method
