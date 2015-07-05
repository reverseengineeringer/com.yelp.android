.class Lcom/yelp/android/ui/activities/search/e;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/e;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/e;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchUtils;->b(Landroid/app/Activity;)V

    .line 327
    return-void
.end method
