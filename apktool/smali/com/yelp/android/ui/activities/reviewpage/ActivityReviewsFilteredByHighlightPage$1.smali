.class Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$1;
.super Ljava/lang/Object;
.source "ActivityReviewsFilteredByHighlightPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->a(Lcom/yelp/android/serializable/MoreInfoAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yelp/android/serializable/MoreInfoAction;

.field final synthetic c:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;Ljava/lang/String;Lcom/yelp/android/serializable/MoreInfoAction;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$1;->c:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$1;->b:Lcom/yelp/android/serializable/MoreInfoAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 308
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessHighlightReviewsMoreInfo:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$1;->c:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$1;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$1;->b:Lcom/yelp/android/serializable/MoreInfoAction;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/MoreInfoAction;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessMenu:Lcom/yelp/android/analytics/iris/ViewIri;

    const-class v4, Lcom/yelp/android/ui/activities/support/WebViewActivity$Feature;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;->NONE:Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getWebIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/yelp/android/analytics/iris/ViewIri;Ljava/util/EnumSet;Lcom/yelp/android/ui/activities/support/WebViewActivity$BackBehavior;)Landroid/content/Intent;

    move-result-object v0

    .line 317
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage$1;->c:Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewsFilteredByHighlightPage;->startActivity(Landroid/content/Intent;)V

    .line 318
    return-void
.end method
