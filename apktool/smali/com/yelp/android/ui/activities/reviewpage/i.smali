.class Lcom/yelp/android/ui/activities/reviewpage/i;
.super Ljava/lang/Object;
.source "ActivityReviewPager.java"

# interfaces
.implements Lcom/yelp/android/ui/widgets/ah;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/i;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZI)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 378
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/i;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;I)I

    .line 381
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/i;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/i;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;Z)V

    .line 423
    :goto_0
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/i;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/n;

    .line 394
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/n;->a()I

    move-result v3

    if-le v3, p2, :cond_1

    .line 395
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/n;->c()Ljava/util/Locale;

    move-result-object v1

    .line 402
    :goto_1
    if-nez v1, :cond_4

    .line 406
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/i;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_2
    if-ltz v3, :cond_4

    .line 407
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/i;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/n;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/n;->a()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/i;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/n;

    .line 409
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/n;->b()Ljava/util/Locale;

    move-result-object v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 418
    :goto_3
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/i;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/n;->a()I

    move-result v1

    :goto_4
    invoke-static {v2, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->b(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;I)I

    .line 420
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/i;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;Ljava/util/Locale;)Ljava/util/Locale;

    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/i;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;Z)V

    goto :goto_0

    .line 406
    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_2

    .line 418
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    move-object v0, v1

    move-object v1, v2

    goto :goto_3

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method
