.class Lcom/yelp/android/dl/b$a;
.super Lrx/d$a;
.source "ImmediateScheduler.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/dl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/yelp/android/dm/a;

.field final synthetic b:Lcom/yelp/android/dl/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/dl/b;)V
    .locals 1

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/dl/b$a;->b:Lcom/yelp/android/dl/b;

    invoke-direct {p0}, Lrx/d$a;-><init>()V

    .line 46
    new-instance v0, Lcom/yelp/android/dm/a;

    invoke-direct {v0}, Lcom/yelp/android/dm/a;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/dl/b$a;->a:Lcom/yelp/android/dm/a;

    .line 49
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/dg/a;)Lrx/f;
    .locals 1

    .prologue
    .line 61
    invoke-interface {p1}, Lcom/yelp/android/dg/a;->call()V

    .line 62
    invoke-static {}, Lcom/yelp/android/dm/d;->b()Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/dg/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/dl/b$a;->b:Lcom/yelp/android/dl/b;

    invoke-virtual {v0}, Lcom/yelp/android/dl/b;->b()J

    move-result-wide v0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 56
    new-instance v2, Lcom/yelp/android/dl/e;

    invoke-direct {v2, p1, p0, v0, v1}, Lcom/yelp/android/dl/e;-><init>(Lcom/yelp/android/dg/a;Lrx/d$a;J)V

    invoke-virtual {p0, v2}, Lcom/yelp/android/dl/b$a;->a(Lcom/yelp/android/dg/a;)Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/dl/b$a;->a:Lcom/yelp/android/dm/a;

    invoke-virtual {v0}, Lcom/yelp/android/dm/a;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/dl/b$a;->a:Lcom/yelp/android/dm/a;

    invoke-virtual {v0}, Lcom/yelp/android/dm/a;->unsubscribe()V

    .line 68
    return-void
.end method
