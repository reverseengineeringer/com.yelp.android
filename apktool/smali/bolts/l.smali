.class Lbolts/l;
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
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# virtual methods
.method public a(Lbolts/k;)Lbolts/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/k",
            "<TTResult;>;)",
            "Lbolts/k",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p1}, Lbolts/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lbolts/k;->g()Lbolts/k;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 171
    :cond_0
    invoke-virtual {p1}, Lbolts/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p1}, Lbolts/k;->f()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lbolts/k;->a(Ljava/lang/Exception;)Lbolts/k;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/k;->a(Ljava/lang/Object;)Lbolts/k;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(Lbolts/k;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lbolts/l;->a(Lbolts/k;)Lbolts/k;

    move-result-object v0

    return-object v0
.end method
