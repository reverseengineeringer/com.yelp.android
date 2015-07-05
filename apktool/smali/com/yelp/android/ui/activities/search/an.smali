.class Lcom/yelp/android/ui/activities/search/an;
.super Lcom/yelp/android/database/x;
.source "SearchOverlay.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchOverlay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/an;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Lcom/yelp/android/database/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/an;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->a(Lcom/yelp/android/ui/activities/search/SearchOverlay;Ljava/util/List;)Ljava/util/List;

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/an;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->e(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/an;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->d(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/c;->a(Ljava/util/List;)V

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/an;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->e(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/c;->notifyDataSetChanged()V

    .line 250
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 254
    const-string/jumbo v0, "SearchOverlay"

    const-string/jumbo v1, "Failed to load saved searches"

    invoke-static {v0, v1}, Lcom/yelp/android/util/YelpLog;->d(Ljava/lang/Object;Ljava/lang/String;)I

    .line 255
    return-void
.end method
