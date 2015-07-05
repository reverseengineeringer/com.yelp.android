.class public Lcom/path/android/jobqueue/f;
.super Ljava/lang/Object;
.source "JobManager.java"

# interfaces
.implements Lcom/path/android/jobqueue/i;


# instance fields
.field a:Lcom/path/android/jobqueue/persistentQueue/sqlite/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/e;

    invoke-direct {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/e;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/f;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/f;

    .line 586
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Lcom/path/android/jobqueue/g;
    .locals 7

    .prologue
    .line 594
    new-instance v6, Lcom/yelp/android/ap/a;

    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v5, p0, Lcom/path/android/jobqueue/f;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/f;

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/path/android/jobqueue/persistentQueue/sqlite/f;)V

    invoke-direct {v6, v0}, Lcom/yelp/android/ap/a;-><init>(Lcom/path/android/jobqueue/g;)V

    return-object v6
.end method

.method public b(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;)Lcom/path/android/jobqueue/g;
    .locals 4

    .prologue
    .line 598
    new-instance v0, Lcom/yelp/android/ap/a;

    new-instance v1, Lcom/path/android/jobqueue/nonPersistentQueue/f;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p3}, Lcom/path/android/jobqueue/nonPersistentQueue/f;-><init>(JLjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/yelp/android/ap/a;-><init>(Lcom/path/android/jobqueue/g;)V

    return-object v0
.end method
