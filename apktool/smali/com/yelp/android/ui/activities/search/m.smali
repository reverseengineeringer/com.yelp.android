.class Lcom/yelp/android/ui/activities/search/m;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/yelp/android/ui/activities/search/l;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/l;Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;II)V
    .locals 0

    .prologue
    .line 943
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/m;->d:Lcom/yelp/android/ui/activities/search/l;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/search/m;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    iput p3, p0, Lcom/yelp/android/ui/activities/search/m;->b:I

    iput p4, p0, Lcom/yelp/android/ui/activities/search/m;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 946
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/m;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/search/m;->b:I

    iget v2, p0, Lcom/yelp/android/ui/activities/search/m;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelectionFromTop(II)V

    .line 947
    return-void
.end method
