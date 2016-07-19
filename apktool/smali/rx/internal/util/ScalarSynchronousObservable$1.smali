.class Lrx/internal/util/ScalarSynchronousObservable$1;
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
.field final synthetic a:Lrx/internal/schedulers/a;

.field final synthetic b:Lrx/internal/util/ScalarSynchronousObservable;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable;Lrx/internal/schedulers/a;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$1;->b:Lrx/internal/util/ScalarSynchronousObservable;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$1;->a:Lrx/internal/schedulers/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/dg/a;)Lrx/f;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$1;->a:Lrx/internal/schedulers/a;

    invoke-virtual {v0, p1}, Lrx/internal/schedulers/a;->a(Lcom/yelp/android/dg/a;)Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/yelp/android/dg/a;

    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$1;->a(Lcom/yelp/android/dg/a;)Lrx/f;

    move-result-object v0

    return-object v0
.end method
