.class final Lcom/yelp/android/services/job/b;
.super Ljava/lang/Object;
.source "JobQueueUtil.java"

# interfaces
.implements Lcom/yelp/android/at/a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 26
    const-string/jumbo v0, "JobManager"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->d(Ljava/lang/Object;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 31
    const-string/jumbo v0, "JobManager"

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 36
    const-string/jumbo v0, "JobManager"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 37
    return-void
.end method
