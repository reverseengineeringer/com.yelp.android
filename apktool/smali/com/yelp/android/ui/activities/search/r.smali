.class Lcom/yelp/android/ui/activities/search/r;
.super Ljava/lang/Object;
.source "SearchBusinessesByMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/r;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->HotButtonSearch:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/r;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchUtils;->a(Landroid/app/Activity;)V

    .line 288
    return-void
.end method
