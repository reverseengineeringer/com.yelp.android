.class Lcom/yelp/android/ui/activities/reviewpage/r;
.super Ljava/lang/Object;
.source "ActivitySearchedReviewsPager.java"

# interfaces
.implements Lcom/yelp/android/ui/widgets/ah;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/r;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZI)V
    .locals 7

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/r;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->a(ZI)Landroid/util/Pair;

    move-result-object v4

    .line 75
    iget-object v6, p0, Lcom/yelp/android/ui/activities/reviewpage/r;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;

    new-instance v0, Lcom/yelp/android/appdata/webrequests/fc;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/r;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/r;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviewpage/r;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->b(Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;)Lcom/yelp/android/appdata/webrequests/m;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/fc;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    invoke-static {v6, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;Lcom/yelp/android/appdata/webrequests/fc;)Lcom/yelp/android/appdata/webrequests/fc;

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/r;->a:Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->c(Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;)Lcom/yelp/android/appdata/webrequests/fc;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fc;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 78
    return-void
.end method
