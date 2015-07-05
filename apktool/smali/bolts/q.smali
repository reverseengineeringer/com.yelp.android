.class Lbolts/q;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/j",
        "<TTResult;",
        "Lbolts/k",
        "<TTContinuationResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/j;

.field final synthetic b:Lbolts/k;


# direct methods
.method constructor <init>(Lbolts/k;Lbolts/j;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lbolts/q;->b:Lbolts/k;

    iput-object p2, p0, Lbolts/q;->a:Lbolts/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbolts/k;)Lbolts/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/k",
            "<TTResult;>;)",
            "Lbolts/k",
            "<TTContinuationResult;>;"
        }
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p1}, Lbolts/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p1}, Lbolts/k;->f()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/k;->a(Ljava/lang/Exception;)Lbolts/k;

    move-result-object v0

    .line 386
    :goto_0
    return-object v0

    .line 383
    :cond_0
    invoke-virtual {p1}, Lbolts/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    invoke-static {}, Lbolts/k;->g()Lbolts/k;

    move-result-object v0

    goto :goto_0

    .line 386
    :cond_1
    iget-object v0, p0, Lbolts/q;->a:Lbolts/j;

    invoke-virtual {p1, v0}, Lbolts/k;->a(Lbolts/j;)Lbolts/k;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(Lbolts/k;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 378
    invoke-virtual {p0, p1}, Lbolts/q;->a(Lbolts/k;)Lbolts/k;

    move-result-object v0

    return-object v0
.end method
