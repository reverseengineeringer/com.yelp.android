.class public Lcom/bumptech/glide/c;
.super Lcom/bumptech/glide/e;
.source "DrawableRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e",
        "<TModelType;",
        "Lcom/yelp/android/aa/g;",
        "Lcom/yelp/android/ah/a;",
        "Lcom/yelp/android/ae/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/yelp/android/ak/f;Lcom/bumptech/glide/g;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TModelType;>;",
            "Lcom/yelp/android/ak/f",
            "<TModelType;",
            "Lcom/yelp/android/aa/g;",
            "Lcom/yelp/android/ah/a;",
            "Lcom/yelp/android/ae/b;",
            ">;",
            "Lcom/bumptech/glide/g;",
            "Lcom/bumptech/glide/manager/l;",
            "Lcom/bumptech/glide/manager/g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    const-class v4, Lcom/yelp/android/ae/b;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/yelp/android/ak/f;Ljava/lang/Class;Lcom/bumptech/glide/g;Lcom/bumptech/glide/manager/l;Lcom/bumptech/glide/manager/g;)V

    .line 50
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->c()Lcom/bumptech/glide/c;

    .line 51
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 179
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/f;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/g;

    invoke-virtual {v2}, Lcom/bumptech/glide/g;->e()Lcom/yelp/android/ah/f;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 319
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->d(I)Lcom/bumptech/glide/e;

    .line 320
    return-object p0
.end method

.method public a(II)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 395
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/e;->b(II)Lcom/bumptech/glide/e;

    .line 396
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            ")",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/e;

    .line 143
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/a",
            "<",
            "Lcom/yelp/android/aa/g;",
            ">;)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e;

    .line 405
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b;",
            ")",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 419
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;

    .line 420
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Lcom/yelp/android/aa/g;",
            "Lcom/yelp/android/ah/a;",
            ">;)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;

    .line 116
    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 377
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/e;

    .line 378
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 425
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Ljava/lang/Object;)Lcom/bumptech/glide/e;

    .line 426
    return-object p0
.end method

.method public a(Z)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Z)Lcom/bumptech/glide/e;

    .line 387
    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/f",
            "<",
            "Lcom/yelp/android/ah/a;",
            ">;)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;

    .line 229
    return-object p0
.end method

.method public a(Landroid/widget/ImageView;)Lcom/yelp/android/am/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/yelp/android/am/j",
            "<",
            "Lcom/yelp/android/ae/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->a(Landroid/widget/ImageView;)Lcom/yelp/android/am/j;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/f;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/c;->c:Lcom/bumptech/glide/g;

    invoke-virtual {v2}, Lcom/bumptech/glide/g;->f()Lcom/yelp/android/ah/f;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/bumptech/glide/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 349
    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->c(I)Lcom/bumptech/glide/e;

    .line 350
    return-object p0
.end method

.method public synthetic b(II)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/c;->a(II)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/d;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(Z)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a([Lcom/bumptech/glide/load/f;)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/bumptech/glide/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 246
    new-instance v0, Lcom/yelp/android/al/a;

    invoke-direct {v0}, Lcom/yelp/android/al/a;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/e;->a(Lcom/yelp/android/al/d;)Lcom/bumptech/glide/e;

    .line 247
    return-object p0
.end method

.method public synthetic c(I)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->b(I)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->g()Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(I)Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c;->a(I)Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 0

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->b()Lcom/bumptech/glide/c;

    .line 454
    return-void
.end method

.method e()V
    .locals 0

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->a()Lcom/bumptech/glide/c;

    .line 459
    return-void
.end method

.method public synthetic f()Lcom/bumptech/glide/e;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/bumptech/glide/c;->g()Lcom/bumptech/glide/c;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/c",
            "<TModelType;>;"
        }
    .end annotation

    .prologue
    .line 431
    invoke-super {p0}, Lcom/bumptech/glide/e;->f()Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/c;

    return-object v0
.end method
