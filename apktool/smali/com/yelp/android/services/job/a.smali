.class public Lcom/yelp/android/services/job/a;
.super Ljava/lang/Object;
.source "JobQueueUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/yelp/android/bm/a;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/yelp/android/bm/a$a;

    invoke-direct {v0, p0}, Lcom/yelp/android/bm/a$a;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/yelp/android/services/job/a$1;

    invoke-direct {v1}, Lcom/yelp/android/services/job/a$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yelp/android/bm/a$a;->a(Lcom/yelp/android/bp/a;)Lcom/yelp/android/bm/a$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/bm/a$a;->c(I)Lcom/yelp/android/bm/a$a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/yelp/android/bm/a$a;->b(I)Lcom/yelp/android/bm/a$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/yelp/android/bm/a$a;->d(I)Lcom/yelp/android/bm/a$a;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/yelp/android/bm/a$a;->a(I)Lcom/yelp/android/bm/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/bm/a$a;->a()Lcom/yelp/android/bm/a;

    move-result-object v0

    return-object v0
.end method
