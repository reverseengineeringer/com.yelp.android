.class Lcom/yelp/android/ui/activities/reviews/as;
.super Ljava/lang/Object;
.source "ReviewOverviewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/as;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/as;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a()I

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/as;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/reviews/ao;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/as;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->d:Lcom/yelp/android/ui/activities/reviews/ao;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/reviews/ao;->a(Z)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/as;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    .line 156
    sget-object v1, Lcom/yelp/android/analytics/iris/ReviewEventIri;->ReviewWriteRating:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    const-string/jumbo v2, "source"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/as;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->b(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "navigation_bar"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    return-void

    .line 156
    :cond_1
    const-string/jumbo v0, "overview_page"

    goto :goto_0
.end method
