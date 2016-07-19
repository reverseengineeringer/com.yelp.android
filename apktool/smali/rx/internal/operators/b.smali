.class public final Lrx/internal/operators/b;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/a$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/d;

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>(Lrx/d;ZI)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lrx/internal/operators/b;->a:Lrx/d;

    .line 60
    iput-boolean p2, p0, Lrx/internal/operators/b;->b:Z

    .line 61
    if-lez p3, :cond_0

    :goto_0
    iput p3, p0, Lrx/internal/operators/b;->c:I

    .line 62
    return-void

    .line 61
    :cond_0
    sget p3, Lrx/internal/util/d;->b:I

    goto :goto_0
.end method


# virtual methods
.method public a(Lrx/e;)Lrx/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-TT;>;)",
            "Lrx/e",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lrx/internal/operators/b;->a:Lrx/d;

    instance-of v0, v0, Lcom/yelp/android/dl/b;

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-object p1

    .line 69
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/b;->a:Lrx/d;

    instance-of v0, v0, Lcom/yelp/android/dl/f;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lrx/internal/operators/b$a;

    iget-object v1, p0, Lrx/internal/operators/b;->a:Lrx/d;

    iget-boolean v2, p0, Lrx/internal/operators/b;->b:Z

    iget v3, p0, Lrx/internal/operators/b;->c:I

    invoke-direct {v0, v1, p1, v2, v3}, Lrx/internal/operators/b$a;-><init>(Lrx/d;Lrx/e;ZI)V

    .line 74
    invoke-virtual {v0}, Lrx/internal/operators/b$a;->c()V

    move-object p1, v0

    .line 75
    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lrx/e;

    invoke-virtual {p0, p1}, Lrx/internal/operators/b;->a(Lrx/e;)Lrx/e;

    move-result-object v0

    return-object v0
.end method
