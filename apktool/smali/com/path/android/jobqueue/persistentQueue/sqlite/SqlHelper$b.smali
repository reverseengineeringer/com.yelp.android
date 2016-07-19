.class public Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;
.super Ljava/lang/Object;
.source "SqlHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field public final c:I

.field public final d:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$a;)V

    .line 298
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$a;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->a:Ljava/lang/String;

    .line 302
    iput-object p2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->b:Ljava/lang/String;

    .line 303
    iput p3, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    .line 304
    iput-object p4, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$a;

    .line 305
    return-void
.end method
