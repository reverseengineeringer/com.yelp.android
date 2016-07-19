.class Lrx/internal/schedulers/a$a;
.super Lrx/d$a;
.source "EventLoopsScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lrx/internal/util/e;

.field private final b:Lcom/yelp/android/dm/b;

.field private final c:Lrx/internal/util/e;

.field private final d:Lrx/internal/schedulers/a$c;


# direct methods
.method constructor <init>(Lrx/internal/schedulers/a$c;)V
    .locals 4

    .prologue
    .line 143
    invoke-direct {p0}, Lrx/d$a;-><init>()V

    .line 138
    new-instance v0, Lrx/internal/util/e;

    invoke-direct {v0}, Lrx/internal/util/e;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/a$a;->a:Lrx/internal/util/e;

    .line 139
    new-instance v0, Lcom/yelp/android/dm/b;

    invoke-direct {v0}, Lcom/yelp/android/dm/b;-><init>()V

    iput-object v0, p0, Lrx/internal/schedulers/a$a;->b:Lcom/yelp/android/dm/b;

    .line 140
    new-instance v0, Lrx/internal/util/e;

    const/4 v1, 0x2

    new-array v1, v1, [Lrx/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lrx/internal/schedulers/a$a;->a:Lrx/internal/util/e;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lrx/internal/schedulers/a$a;->b:Lcom/yelp/android/dm/b;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lrx/internal/util/e;-><init>([Lrx/f;)V

    iput-object v0, p0, Lrx/internal/schedulers/a$a;->c:Lrx/internal/util/e;

    .line 144
    iput-object p1, p0, Lrx/internal/schedulers/a$a;->d:Lrx/internal/schedulers/a$c;

    .line 146
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/dg/a;)Lrx/f;
    .locals 6

    .prologue
    .line 160
    invoke-virtual {p0}, Lrx/internal/schedulers/a$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/yelp/android/dm/d;->b()Lrx/f;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/a$a;->d:Lrx/internal/schedulers/a$c;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lrx/internal/schedulers/a$a;->a:Lrx/internal/util/e;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lrx/internal/schedulers/a$c;->a(Lcom/yelp/android/dg/a;JLjava/util/concurrent/TimeUnit;Lrx/internal/util/e;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/dg/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
    .locals 6

    .prologue
    .line 168
    invoke-virtual {p0}, Lrx/internal/schedulers/a$a;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/yelp/android/dm/d;->b()Lrx/f;

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lrx/internal/schedulers/a$a;->d:Lrx/internal/schedulers/a$c;

    iget-object v5, p0, Lrx/internal/schedulers/a$a;->b:Lcom/yelp/android/dm/b;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/internal/schedulers/a$c;->a(Lcom/yelp/android/dg/a;JLjava/util/concurrent/TimeUnit;Lcom/yelp/android/dm/b;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v0

    goto :goto_0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lrx/internal/schedulers/a$a;->c:Lrx/internal/util/e;

    invoke-virtual {v0}, Lrx/internal/util/e;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lrx/internal/schedulers/a$a;->c:Lrx/internal/util/e;

    invoke-virtual {v0}, Lrx/internal/util/e;->unsubscribe()V

    .line 151
    return-void
.end method
