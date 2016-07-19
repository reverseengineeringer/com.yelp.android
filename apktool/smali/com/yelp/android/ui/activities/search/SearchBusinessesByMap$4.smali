.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$4;
.super Ljava/lang/Object;
.source "SearchBusinessesByMap.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;->setHotButtonListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$4;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->HotButtonSearch:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 356
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap$4;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByMap;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/d;->a(Landroid/app/Activity;)V

    .line 357
    return-void
.end method
