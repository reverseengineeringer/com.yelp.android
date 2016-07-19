.class Lrx/internal/util/ScalarSynchronousObservable$2;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lcom/yelp/android/dg/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable;->c(Lrx/d;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/dg/e",
        "<",
        "Lcom/yelp/android/dg/a;",
        "Lrx/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/d;

.field final synthetic b:Lrx/internal/util/ScalarSynchronousObservable;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/d;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->b:Lrx/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->a:Lrx/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/dg/a;)Lrx/f;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2;->a:Lrx/d;

    invoke-virtual {v0}, Lrx/d;->a()Lrx/d$a;

    move-result-object v0

    .line 116
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$2$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/internal/util/ScalarSynchronousObservable$2$1;-><init>(Lrx/internal/util/ScalarSynchronousObservable$2;Lcom/yelp/android/dg/a;Lrx/d$a;)V

    invoke-virtual {v0, v1}, Lrx/d$a;->a(Lcom/yelp/android/dg/a;)Lrx/f;

    .line 126
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    check-cast p1, Lcom/yelp/android/dg/a;

    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$2;->a(Lcom/yelp/android/dg/a;)Lrx/f;

    move-result-object v0

    return-object v0
.end method
