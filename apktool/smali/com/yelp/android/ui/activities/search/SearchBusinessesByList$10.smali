.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$10;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V
    .locals 0

    .prologue
    .line 2063
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$10;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$10;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$10;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$10;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->c(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/SpellingSuggestPanel;)V

    .line 2068
    return-void
.end method
