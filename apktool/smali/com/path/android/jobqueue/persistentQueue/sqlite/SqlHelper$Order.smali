.class public Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;
.super Ljava/lang/Object;
.source "SqlHelper.java"


# instance fields
.field final a:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

.field final b:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;


# direct methods
.method public constructor <init>(Lcom/path/android/jobqueue/persistentQueue/sqlite/c;Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    .line 193
    iput-object p2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;->b:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    .line 194
    return-void
.end method
