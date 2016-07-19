.class Lrx/internal/util/ScalarSynchronousObservable$2$1;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lcom/yelp/android/dg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ScalarSynchronousObservable$2;->a(Lcom/yelp/android/dg/a;)Lrx/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/dg/a;

.field final synthetic b:Lrx/d$a;

.field final synthetic c:Lrx/internal/util/ScalarSynchronousObservable$2;


# direct methods
.method constructor <init>(Lrx/internal/util/ScalarSynchronousObservable$2;Lcom/yelp/android/dg/a;Lrx/d$a;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->c:Lrx/internal/util/ScalarSynchronousObservable$2;

    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->a:Lcom/yelp/android/dg/a;

    iput-object p3, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->b:Lrx/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 120
    :try_start_0
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->a:Lcom/yelp/android/dg/a;

    invoke-interface {v0}, Lcom/yelp/android/dg/a;->call()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->b:Lrx/d$a;

    invoke-virtual {v0}, Lrx/d$a;->unsubscribe()V

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$2$1;->b:Lrx/d$a;

    invoke-virtual {v1}, Lrx/d$a;->unsubscribe()V

    throw v0
.end method
