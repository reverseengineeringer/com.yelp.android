.class public Lcom/yelp/android/services/job/a;
.super Ljava/lang/Object;
.source "JobQueueUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/yelp/android/aq/a;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/yelp/android/aq/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/aq/c;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/yelp/android/services/job/b;

    invoke-direct {v1}, Lcom/yelp/android/services/job/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yelp/android/aq/c;->a(Lcom/yelp/android/at/a;)Lcom/yelp/android/aq/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/aq/c;->c(I)Lcom/yelp/android/aq/c;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yelp/android/aq/c;->b(I)Lcom/yelp/android/aq/c;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/yelp/android/aq/c;->d(I)Lcom/yelp/android/aq/c;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/yelp/android/aq/c;->a(I)Lcom/yelp/android/aq/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/aq/c;->a()Lcom/yelp/android/aq/a;

    move-result-object v0

    return-object v0
.end method
