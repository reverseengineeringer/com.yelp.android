.class public final Lrx/internal/operators/c;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/a$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lrx/d;

.field final b:Lrx/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/a;Lrx/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/a",
            "<TT;>;",
            "Lrx/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lrx/internal/operators/c;->a:Lrx/d;

    .line 37
    iput-object p1, p0, Lrx/internal/operators/c;->b:Lrx/a;

    .line 38
    return-void
.end method


# virtual methods
.method public a(Lrx/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lrx/internal/operators/c;->a:Lrx/d;

    invoke-virtual {v0}, Lrx/d;->a()Lrx/d$a;

    move-result-object v0

    .line 43
    invoke-virtual {p1, v0}, Lrx/e;->a(Lrx/f;)V

    .line 45
    new-instance v1, Lrx/internal/operators/c$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/operators/c$1;-><init>(Lrx/internal/operators/c;Lrx/e;Lrx/d$a;)V

    invoke-virtual {v0, v1}, Lrx/d$a;->a(Lcom/yelp/android/dg/a;)Lrx/f;

    .line 97
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lrx/internal/operators/c;->a(Lrx/e;)V

    return-void
.end method
