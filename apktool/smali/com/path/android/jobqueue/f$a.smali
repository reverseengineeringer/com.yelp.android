.class Lcom/path/android/jobqueue/f$a;
.super Lcom/path/android/jobqueue/f;
.source "RetryConstraint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/path/android/jobqueue/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/path/android/jobqueue/f;-><init>(Z)V

    .line 117
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This object is immutable. Create a new one using the constructor."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
