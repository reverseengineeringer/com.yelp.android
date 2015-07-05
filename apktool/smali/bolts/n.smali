.class Lbolts/n;
.super Ljava/lang/Object;
.source "Task.java"

# interfaces
.implements Lbolts/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/j",
        "<TTContinuationResult;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/m;


# direct methods
.method constructor <init>(Lbolts/m;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lbolts/n;->a:Lbolts/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbolts/k;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/k",
            "<TTContinuationResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p1}, Lbolts/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lbolts/n;->a:Lbolts/m;

    iget-object v0, v0, Lbolts/m;->c:Lbolts/s;

    invoke-virtual {v0}, Lbolts/s;->c()V

    .line 500
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 495
    :cond_0
    invoke-virtual {p1}, Lbolts/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lbolts/n;->a:Lbolts/m;

    iget-object v0, v0, Lbolts/m;->c:Lbolts/s;

    invoke-virtual {p1}, Lbolts/k;->f()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/s;->b(Ljava/lang/Exception;)V

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, Lbolts/n;->a:Lbolts/m;

    iget-object v0, v0, Lbolts/m;->c:Lbolts/s;

    invoke-virtual {p1}, Lbolts/k;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/s;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public synthetic then(Lbolts/k;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0, p1}, Lbolts/n;->a(Lbolts/k;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
