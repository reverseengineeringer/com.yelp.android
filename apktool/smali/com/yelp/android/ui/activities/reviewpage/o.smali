.class Lcom/yelp/android/ui/activities/reviewpage/o;
.super Ljava/lang/Object;
.source "ActivityReviewsFilteredByHighlightPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yelp/android/serializable/MoreInfoAction;

.field final synthetic c:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;Ljava/lang/String;Lcom/yelp/android/serializable/MoreInfoAction;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/o;->c:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/o;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviewpage/o;->b:Lcom/yelp/android/serializable/MoreInfoAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 278
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessHighlightReviewsMoreInfo:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/o;->c:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/o;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/o;->b:Lcom/yelp/android/serializable/MoreInfoAction;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/MoreInfoAction;->getTitle()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessMenu:Lcom/yelp/android/analytics/iris/ViewIri;

    const-class v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;)Landroid/content/Intent;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/o;->c:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->startActivity(Landroid/content/Intent;)V

    .line 286
    return-void
.end method
