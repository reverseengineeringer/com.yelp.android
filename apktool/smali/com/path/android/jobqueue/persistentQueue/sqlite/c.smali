.class public Lcom/path/android/jobqueue/persistentQueue/sqlite/c;
.super Ljava/lang/Object;
.source "SqlHelper.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    .line 182
    iput-object p2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->b:Ljava/lang/String;

    .line 183
    iput p3, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    .line 184
    return-void
.end method
