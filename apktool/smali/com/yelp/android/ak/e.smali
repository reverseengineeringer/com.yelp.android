.class public Lcom/yelp/android/ak/e;
.super Ljava/lang/Object;
.source "FixedLoadProvider.java"

# interfaces
.implements Lcom/yelp/android/ak/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ak/f",
        "<TA;TT;TZ;TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/aa/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/aa/l",
            "<TA;TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/yelp/android/ai/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ai/c",
            "<TZ;TR;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/yelp/android/ak/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ak/b",
            "<TT;TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/aa/l;Lcom/yelp/android/ai/c;Lcom/yelp/android/ak/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/aa/l",
            "<TA;TT;>;",
            "Lcom/yelp/android/ai/c",
            "<TZ;TR;>;",
            "Lcom/yelp/android/ak/b",
            "<TT;TZ;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "ModelLoader must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p1, p0, Lcom/yelp/android/ak/e;->a:Lcom/yelp/android/aa/l;

    .line 32
    if-nez p2, :cond_1

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Transcoder must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    iput-object p2, p0, Lcom/yelp/android/ak/e;->b:Lcom/yelp/android/ai/c;

    .line 37
    if-nez p3, :cond_2

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "DataLoadProvider must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    iput-object p3, p0, Lcom/yelp/android/ak/e;->c:Lcom/yelp/android/ak/b;

    .line 41
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
            "TZ;>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ak/e;->c:Lcom/yelp/android/ak/b;

    invoke-interface {v0}, Lcom/yelp/android/ak/b;->a()Lcom/bumptech/glide/load/d;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/d",
            "<TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ak/e;->c:Lcom/yelp/android/ak/b;

    invoke-interface {v0}, Lcom/yelp/android/ak/b;->b()Lcom/bumptech/glide/load/d;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/ak/e;->c:Lcom/yelp/android/ak/b;

    invoke-interface {v0}, Lcom/yelp/android/ak/b;->c()Lcom/bumptech/glide/load/a;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/e",
            "<TZ;>;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ak/e;->c:Lcom/yelp/android/ak/b;

    invoke-interface {v0}, Lcom/yelp/android/ak/b;->d()Lcom/bumptech/glide/load/e;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/yelp/android/aa/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/aa/l",
            "<TA;TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ak/e;->a:Lcom/yelp/android/aa/l;

    return-object v0
.end method

.method public f()Lcom/yelp/android/ai/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/ai/c",
            "<TZ;TR;>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/ak/e;->b:Lcom/yelp/android/ai/c;

    return-object v0
.end method
