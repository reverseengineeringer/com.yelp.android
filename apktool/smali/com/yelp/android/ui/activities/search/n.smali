.class Lcom/yelp/android/ui/activities/search/n;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

.field final synthetic b:Lcom/yelp/android/ui/activities/search/l;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/l;Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V
    .locals 0

    .prologue
    .line 970
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/n;->b:Lcom/yelp/android/ui/activities/search/l;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/n;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/n;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->enableLoading()V

    .line 975
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/n;->b:Lcom/yelp/android/ui/activities/search/l;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/l;->a(Lcom/yelp/android/ui/activities/search/l;)Lcom/yelp/android/appdata/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/ap;->e()Z

    .line 976
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/n;->b:Lcom/yelp/android/ui/activities/search/l;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/l;->b(Lcom/yelp/android/ui/activities/search/l;)Lcom/yelp/android/ui/panels/businesssearch/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/g;->clear()V

    .line 977
    return-void
.end method
