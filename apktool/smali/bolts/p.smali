.class Lbolts/p;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbolts/s;

.field final synthetic b:Lbolts/j;

.field final synthetic c:Ljava/util/concurrent/Executor;

.field final synthetic d:Lbolts/k;


# direct methods
.method constructor <init>(Lbolts/k;Lbolts/s;Lbolts/j;Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lbolts/p;->d:Lbolts/k;

    iput-object p2, p0, Lbolts/p;->a:Lbolts/s;

    iput-object p3, p0, Lbolts/p;->b:Lbolts/j;

    iput-object p4, p0, Lbolts/p;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbolts/k;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/k",
            "<TTResult;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 351
    iget-object v0, p0, Lbolts/p;->a:Lbolts/s;

    iget-object v1, p0, Lbolts/p;->b:Lbolts/j;

    iget-object v2, p0, Lbolts/p;->c:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, v2}, Lbolts/k;->b(Lbolts/s;Lbolts/j;Lbolts/k;Ljava/util/concurrent/Executor;)V

    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic then(Lbolts/k;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lbolts/p;->a(Lbolts/k;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
