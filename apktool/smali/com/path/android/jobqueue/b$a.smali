.class public Lcom/path/android/jobqueue/b$a;
.super Ljava/lang/Object;
.source "JobManager.java"

# interfaces
.implements Lcom/path/android/jobqueue/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/path/android/jobqueue/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$a;

    invoke-direct {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$a;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/b$a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$b;

    .line 770
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Z)Lcom/path/android/jobqueue/c;
    .locals 8

    .prologue
    .line 779
    new-instance v7, Lcom/yelp/android/bl/a;

    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v5, p0, Lcom/path/android/jobqueue/b$a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$b;

    move-object v1, p1

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$b;Z)V

    invoke-direct {v7, v0}, Lcom/yelp/android/bl/a;-><init>(Lcom/path/android/jobqueue/c;)V

    return-object v7
.end method

.method public b(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Z)Lcom/path/android/jobqueue/c;
    .locals 4

    .prologue
    .line 786
    new-instance v0, Lcom/yelp/android/bl/a;

    new-instance v1, Lcom/path/android/jobqueue/nonPersistentQueue/f;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p3, p4}, Lcom/path/android/jobqueue/nonPersistentQueue/f;-><init>(JLjava/lang/String;Z)V

    invoke-direct {v0, v1}, Lcom/yelp/android/bl/a;-><init>(Lcom/path/android/jobqueue/c;)V

    return-object v0
.end method
