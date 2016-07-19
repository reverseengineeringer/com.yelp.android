.class Lrx/d$a$1;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lcom/yelp/android/dg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/d$a;->a(Lcom/yelp/android/dg/a;JJLjava/util/concurrent/TimeUnit;)Lrx/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field b:J

.field c:J

.field final synthetic d:J

.field final synthetic e:J

.field final synthetic f:Lcom/yelp/android/dm/c;

.field final synthetic g:Lcom/yelp/android/dg/a;

.field final synthetic h:J

.field final synthetic i:Lrx/d$a;


# direct methods
.method constructor <init>(Lrx/d$a;JJLcom/yelp/android/dm/c;Lcom/yelp/android/dg/a;J)V
    .locals 2

    .prologue
    .line 127
    iput-object p1, p0, Lrx/d$a$1;->i:Lrx/d$a;

    iput-wide p2, p0, Lrx/d$a$1;->d:J

    iput-wide p4, p0, Lrx/d$a$1;->e:J

    iput-object p6, p0, Lrx/d$a$1;->f:Lcom/yelp/android/dm/c;

    iput-object p7, p0, Lrx/d$a$1;->g:Lcom/yelp/android/dg/a;

    iput-wide p8, p0, Lrx/d$a$1;->h:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iget-wide v0, p0, Lrx/d$a$1;->d:J

    iput-wide v0, p0, Lrx/d$a$1;->b:J

    .line 130
    iget-wide v0, p0, Lrx/d$a$1;->e:J

    iput-wide v0, p0, Lrx/d$a$1;->c:J

    return-void
.end method


# virtual methods
.method public call()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    .line 133
    iget-object v0, p0, Lrx/d$a$1;->f:Lcom/yelp/android/dm/c;

    invoke-virtual {v0}, Lcom/yelp/android/dm/c;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lrx/d$a$1;->g:Lcom/yelp/android/dg/a;

    invoke-interface {v0}, Lcom/yelp/android/dg/a;->call()V

    .line 138
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lrx/d$a$1;->i:Lrx/d$a;

    invoke-virtual {v1}, Lrx/d$a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 140
    sget-wide v0, Lrx/d;->a:J

    add-long/2addr v0, v2

    iget-wide v4, p0, Lrx/d$a$1;->b:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lrx/d$a$1;->b:J

    iget-wide v4, p0, Lrx/d$a$1;->h:J

    add-long/2addr v0, v4

    sget-wide v4, Lrx/d;->a:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_2

    .line 142
    :cond_0
    iget-wide v0, p0, Lrx/d$a$1;->h:J

    add-long/2addr v0, v2

    .line 147
    iget-wide v4, p0, Lrx/d$a$1;->h:J

    iget-wide v6, p0, Lrx/d$a$1;->a:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lrx/d$a$1;->a:J

    mul-long/2addr v4, v6

    sub-long v4, v0, v4

    iput-wide v4, p0, Lrx/d$a$1;->c:J

    .line 151
    :goto_0
    iput-wide v2, p0, Lrx/d$a$1;->b:J

    .line 153
    sub-long/2addr v0, v2

    .line 154
    iget-object v2, p0, Lrx/d$a$1;->f:Lcom/yelp/android/dm/c;

    iget-object v3, p0, Lrx/d$a$1;->i:Lrx/d$a;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p0, v0, v1, v4}, Lrx/d$a;->a(Lcom/yelp/android/dg/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/yelp/android/dm/c;->a(Lrx/f;)V

    .line 156
    :cond_1
    return-void

    .line 149
    :cond_2
    iget-wide v0, p0, Lrx/d$a$1;->c:J

    iget-wide v4, p0, Lrx/d$a$1;->a:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lrx/d$a$1;->a:J

    iget-wide v6, p0, Lrx/d$a$1;->h:J

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    goto :goto_0
.end method
