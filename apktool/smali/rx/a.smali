.class public Lrx/a;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/a$b;,
        Lrx/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final b:Lcom/yelp/android/dk/b;


# instance fields
.field final a:Lrx/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/a$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/yelp/android/dk/d;->a()Lcom/yelp/android/dk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/dk/d;->c()Lcom/yelp/android/dk/b;

    move-result-object v0

    sput-object v0, Lrx/a;->b:Lcom/yelp/android/dk/b;

    return-void
.end method

.method protected constructor <init>(Lrx/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/a$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/a;->a:Lrx/a$a;

    .line 61
    return-void
.end method

.method public static a(Lrx/a$a;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/a$a",
            "<TT;>;)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Lrx/a;

    sget-object v1, Lrx/a;->b:Lcom/yelp/android/dk/b;

    invoke-virtual {v1, p0}, Lcom/yelp/android/dk/b;->a(Lrx/a$a;)Lrx/a$a;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/a;-><init>(Lrx/a$a;)V

    return-object v0
.end method

.method private static a(Lrx/e;Lrx/a;)Lrx/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<-TT;>;",
            "Lrx/a",
            "<TT;>;)",
            "Lrx/f;"
        }
    .end annotation

    .prologue
    .line 8806
    if-nez p0, :cond_0

    .line 8807
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "observer can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8809
    :cond_0
    iget-object v0, p1, Lrx/a;->a:Lrx/a$a;

    if-nez v0, :cond_1

    .line 8810
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onSubscribe function can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8818
    :cond_1
    invoke-virtual {p0}, Lrx/e;->b()V

    .line 8825
    instance-of v0, p0, Lcom/yelp/android/dj/a;

    if-nez v0, :cond_2

    .line 8827
    new-instance v0, Lcom/yelp/android/dj/a;

    invoke-direct {v0, p0}, Lcom/yelp/android/dj/a;-><init>(Lrx/e;)V

    move-object p0, v0

    .line 8834
    :cond_2
    :try_start_0
    sget-object v0, Lrx/a;->b:Lcom/yelp/android/dk/b;

    iget-object v1, p1, Lrx/a;->a:Lrx/a$a;

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/dk/b;->a(Lrx/a;Lrx/a$a;)Lrx/a$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lrx/a$a;->call(Ljava/lang/Object;)V

    .line 8835
    sget-object v0, Lrx/a;->b:Lcom/yelp/android/dk/b;

    invoke-virtual {v0, p0}, Lcom/yelp/android/dk/b;->a(Lrx/f;)Lrx/f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 8852
    :goto_0
    return-object v0

    .line 8836
    :catch_0
    move-exception v0

    .line 8838
    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 8841
    :try_start_1
    sget-object v1, Lrx/a;->b:Lcom/yelp/android/dk/b;

    invoke-virtual {v1, v0}, Lcom/yelp/android/dk/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lrx/e;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 8852
    invoke-static {}, Lcom/yelp/android/dm/d;->b()Lrx/f;

    move-result-object v0

    goto :goto_0

    .line 8842
    :catch_1
    move-exception v1

    .line 8843
    invoke-static {v1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 8846
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8848
    sget-object v0, Lrx/a;->b:Lcom/yelp/android/dk/b;

    invoke-virtual {v0, v2}, Lcom/yelp/android/dk/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8850
    throw v2
.end method


# virtual methods
.method public final a(Lrx/a$b;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/a$b",
            "<+TR;-TT;>;)",
            "Lrx/a",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lrx/a;

    new-instance v1, Lrx/a$1;

    invoke-direct {v1, p0, p1}, Lrx/a$1;-><init>(Lrx/a;Lrx/a$b;)V

    invoke-direct {v0, v1}, Lrx/a;-><init>(Lrx/a$a;)V

    return-object v0
.end method

.method public final a(Lrx/d;)Lrx/a;
    .locals 1
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
    .line 6352
    sget v0, Lrx/internal/util/d;->b:I

    invoke-virtual {p0, p1, v0}, Lrx/a;->a(Lrx/d;I)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/d;I)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d;",
            "I)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6381
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lrx/a;->a(Lrx/d;ZI)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lrx/d;ZI)Lrx/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d;",
            "ZI)",
            "Lrx/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6441
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v0, :cond_0

    .line 6442
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->c(Lrx/d;)Lrx/a;

    move-result-object v0

    .line 6444
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/operators/b;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/b;-><init>(Lrx/d;ZI)V

    invoke-virtual {p0, v0}, Lrx/a;->a(Lrx/a$b;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lrx/e;)Lrx/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-TT;>;)",
            "Lrx/f;"
        }
    .end annotation

    .prologue
    .line 8739
    :try_start_0
    invoke-virtual {p1}, Lrx/e;->b()V

    .line 8741
    sget-object v0, Lrx/a;->b:Lcom/yelp/android/dk/b;

    iget-object v1, p0, Lrx/a;->a:Lrx/a$a;

    invoke-virtual {v0, p0, v1}, Lcom/yelp/android/dk/b;->a(Lrx/a;Lrx/a$a;)Lrx/a$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/a$a;->call(Ljava/lang/Object;)V

    .line 8742
    sget-object v0, Lrx/a;->b:Lcom/yelp/android/dk/b;

    invoke-virtual {v0, p1}, Lcom/yelp/android/dk/b;->a(Lrx/f;)Lrx/f;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 8759
    :goto_0
    return-object v0

    .line 8743
    :catch_0
    move-exception v0

    .line 8745
    invoke-static {v0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 8748
    :try_start_1
    sget-object v1, Lrx/a;->b:Lcom/yelp/android/dk/b;

    invoke-virtual {v1, v0}, Lcom/yelp/android/dk/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/e;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 8759
    invoke-static {}, Lcom/yelp/android/dm/d;->b()Lrx/f;

    move-result-object v0

    goto :goto_0

    .line 8749
    :catch_1
    move-exception v1

    .line 8750
    invoke-static {v1}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;)V

    .line 8753
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "] and then again while trying to pass to onError."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8755
    sget-object v0, Lrx/a;->b:Lcom/yelp/android/dk/b;

    invoke-virtual {v0, v2}, Lcom/yelp/android/dk/b;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8757
    throw v2
.end method

.method public final b(Lrx/d;)Lrx/a;
    .locals 1
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
    .line 8874
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v0, :cond_0

    .line 8875
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->c(Lrx/d;)Lrx/a;

    move-result-object v0

    .line 8877
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/operators/c;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/c;-><init>(Lrx/a;Lrx/d;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lrx/e;)Lrx/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/e",
            "<-TT;>;)",
            "Lrx/f;"
        }
    .end annotation

    .prologue
    .line 8801
    invoke-static {p1, p0}, Lrx/a;->a(Lrx/e;Lrx/a;)Lrx/f;

    move-result-object v0

    return-object v0
.end method
