.class Lcom/yelp/android/ui/activities/search/SearchOverlay$2;
.super Ljava/lang/Object;
.source "SearchOverlay.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchOverlay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 636
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$2;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 639
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchButtonUi:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 640
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchOverlay$2;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchButtonUi:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v1}, Lcom/yelp/android/analytics/iris/EventIri;->getIriName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Ljava/lang/String;)V

    .line 641
    return-void
.end method
