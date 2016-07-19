.class Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$InvalidJobException;
.super Ljava/lang/Exception;
.source "SqliteJobQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvalidJobException"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$1;)V
    .locals 0

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$InvalidJobException;-><init>()V

    return-void
.end method
