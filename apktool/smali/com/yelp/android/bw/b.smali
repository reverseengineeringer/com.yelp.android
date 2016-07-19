.class public abstract Lcom/yelp/android/bw/b;
.super Lcom/yelp/android/bw/a;
.source "SubscriptionPresenter.java"

# interfaces
.implements Lcom/yelp/android/bx/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V::",
        "Lcom/yelp/android/bx/b;",
        "M::",
        "Lcom/yelp/android/bx/c;",
        ">",
        "Lcom/yelp/android/bw/a",
        "<TV;TM;>;",
        "Lcom/yelp/android/bx/a;"
    }
.end annotation


# instance fields
.field private final c:Lcom/yelp/android/dm/b;

.field private final d:Lrx/d;

.field private final e:Lrx/d;


# direct methods
.method public constructor <init>(Lcom/yelp/android/by/b;Lcom/yelp/android/bx/b;Lcom/yelp/android/bx/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/by/b;",
            "TV;TM;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p2, p3}, Lcom/yelp/android/bw/a;-><init>(Lcom/yelp/android/bx/b;Lcom/yelp/android/bx/c;)V

    .line 28
    iget-object v0, p1, Lcom/yelp/android/by/b;->a:Lrx/d;

    iput-object v0, p0, Lcom/yelp/android/bw/b;->d:Lrx/d;

    .line 29
    iget-object v0, p1, Lcom/yelp/android/by/b;->b:Lrx/d;

    iput-object v0, p0, Lcom/yelp/android/bw/b;->e:Lrx/d;

    .line 30
    new-instance v0, Lcom/yelp/android/dm/b;

    invoke-direct {v0}, Lcom/yelp/android/dm/b;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/bw/b;->c:Lcom/yelp/android/dm/b;

    .line 31
    return-void
.end method


# virtual methods
.method protected a(Lrx/a;Lrx/e;)Lrx/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/a",
            "<TT;>;",
            "Lrx/e",
            "<TT;>;)",
            "Lrx/f;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/bw/b;->d:Lrx/d;

    invoke-virtual {p1, v0}, Lrx/a;->b(Lrx/d;)Lrx/a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/bw/b;->e:Lrx/d;

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/d;)Lrx/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lrx/a;->b(Lrx/e;)Lrx/f;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/yelp/android/bw/b;->c:Lcom/yelp/android/dm/b;

    invoke-virtual {v1, v0}, Lcom/yelp/android/dm/b;->a(Lrx/f;)V

    .line 56
    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Lcom/yelp/android/bw/a;->c()V

    .line 36
    iget-object v0, p0, Lcom/yelp/android/bw/b;->c:Lcom/yelp/android/dm/b;

    invoke-virtual {v0}, Lcom/yelp/android/dm/b;->a()V

    .line 37
    return-void
.end method
