.class Lcom/yelp/android/df/b$a;
.super Lrx/d$a;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/df/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/yelp/android/dm/b;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lrx/d$a;-><init>()V

    .line 50
    new-instance v0, Lcom/yelp/android/dm/b;

    invoke-direct {v0}, Lcom/yelp/android/dm/b;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/df/b$a;->b:Lcom/yelp/android/dm/b;

    .line 53
    iput-object p1, p0, Lcom/yelp/android/df/b$a;->a:Landroid/os/Handler;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/df/b$a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/df/b$a;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/dg/a;)Lrx/f;
    .locals 3

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/yelp/android/df/b$a;->a(Lcom/yelp/android/dg/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/dg/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
    .locals 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/df/b$a;->b:Lcom/yelp/android/dm/b;

    invoke-virtual {v0}, Lcom/yelp/android/dm/b;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/yelp/android/dm/d;->b()Lrx/f;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-static {}, Lcom/yelp/android/de/a;->a()Lcom/yelp/android/de/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/de/a;->b()Lcom/yelp/android/de/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/de/b;->a(Lcom/yelp/android/dg/a;)Lcom/yelp/android/dg/a;

    move-result-object v1

    .line 74
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v0, v1}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lcom/yelp/android/dg/a;)V

    .line 75
    iget-object v1, p0, Lcom/yelp/android/df/b$a;->b:Lcom/yelp/android/dm/b;

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->addParent(Lcom/yelp/android/dm/b;)V

    .line 76
    iget-object v1, p0, Lcom/yelp/android/df/b$a;->b:Lcom/yelp/android/dm/b;

    invoke-virtual {v1, v0}, Lcom/yelp/android/dm/b;->a(Lrx/f;)V

    .line 78
    iget-object v1, p0, Lcom/yelp/android/df/b$a;->a:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    new-instance v1, Lcom/yelp/android/df/b$a$1;

    invoke-direct {v1, p0, v0}, Lcom/yelp/android/df/b$a$1;-><init>(Lcom/yelp/android/df/b$a;Lrx/internal/schedulers/ScheduledAction;)V

    invoke-static {v1}, Lcom/yelp/android/dm/d;->a(Lcom/yelp/android/dg/a;)Lrx/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Lrx/f;)V

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/df/b$a;->b:Lcom/yelp/android/dm/b;

    invoke-virtual {v0}, Lcom/yelp/android/dm/b;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/df/b$a;->b:Lcom/yelp/android/dm/b;

    invoke-virtual {v0}, Lcom/yelp/android/dm/b;->unsubscribe()V

    .line 59
    return-void
.end method
