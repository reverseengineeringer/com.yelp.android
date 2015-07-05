.class Lcom/bumptech/glide/load/engine/k;
.super Ljava/lang/Object;
.source "EngineJob.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/engine/t;Z)Lcom/bumptech/glide/load/engine/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/engine/t",
            "<TR;>;Z)",
            "Lcom/bumptech/glide/load/engine/p",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Lcom/bumptech/glide/load/engine/p;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/engine/p;-><init>(Lcom/bumptech/glide/load/engine/t;Z)V

    return-object v0
.end method
