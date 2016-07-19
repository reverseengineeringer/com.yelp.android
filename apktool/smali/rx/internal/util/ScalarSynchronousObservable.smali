.class public final Lrx/internal/util/ScalarSynchronousObservable;
.super Lrx/a;
.source "ScalarSynchronousObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/ScalarSynchronousObservable$ScalarAsyncProducer;,
        Lrx/internal/util/ScalarSynchronousObservable$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/a",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final c:Z


# instance fields
.field final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-string/jumbo v0, "rx.just.strong-mode"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lrx/internal/util/ScalarSynchronousObservable;->c:Z

    .line 45
    return-void
.end method


# virtual methods
.method public c(Lrx/d;)Lrx/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d;",
            ")",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    instance-of v0, p1, Lrx/internal/schedulers/a;

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Lrx/internal/schedulers/a;

    .line 105
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$1;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/internal/schedulers/a;)V

    .line 131
    :goto_0
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$a;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable;->d:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lrx/internal/util/ScalarSynchronousObservable$a;-><init>(Ljava/lang/Object;Lcom/yelp/android/dg/e;)V

    invoke-static {v1}, Lrx/internal/util/ScalarSynchronousObservable;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Lrx/internal/util/ScalarSynchronousObservable$2;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$2;-><init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/d;)V

    goto :goto_0
.end method
