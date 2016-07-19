.class public abstract Lrx/d$a;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract a(Lcom/yelp/android/dg/a;)Lrx/f;
.end method

.method public a(Lcom/yelp/android/dg/a;JJLjava/util/concurrent/TimeUnit;)Lrx/f;
    .locals 14

    .prologue
    .line 122
    move-object/from16 v0, p6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v12

    .line 123
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0}, Lrx/d$a;->a()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    .line 124
    move-object/from16 v0, p6

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    add-long v8, v6, v4

    .line 126
    new-instance v10, Lcom/yelp/android/dm/c;

    invoke-direct {v10}, Lcom/yelp/android/dm/c;-><init>()V

    .line 127
    new-instance v4, Lrx/d$a$1;

    move-object v5, p0

    move-object v11, p1

    invoke-direct/range {v4 .. v13}, Lrx/d$a$1;-><init>(Lrx/d$a;JJLcom/yelp/android/dm/c;Lcom/yelp/android/dg/a;J)V

    .line 158
    new-instance v5, Lcom/yelp/android/dm/c;

    invoke-direct {v5}, Lcom/yelp/android/dm/c;-><init>()V

    .line 160
    invoke-virtual {v10, v5}, Lcom/yelp/android/dm/c;->a(Lrx/f;)V

    .line 161
    move-wide/from16 v0, p2

    move-object/from16 v2, p6

    invoke-virtual {p0, v4, v0, v1, v2}, Lrx/d$a;->a(Lcom/yelp/android/dg/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/yelp/android/dm/c;->a(Lrx/f;)V

    .line 162
    return-object v10
.end method

.method public abstract a(Lcom/yelp/android/dg/a;JLjava/util/concurrent/TimeUnit;)Lrx/f;
.end method
