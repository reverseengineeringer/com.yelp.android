.class Lcom/yelp/android/ui/activities/search/ap;
.super Ljava/lang/Object;
.source "SearchOverlay.java"

# interfaces
.implements Lcom/yelp/android/ui/util/cc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/util/cc",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchOverlay;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/ap;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ap;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->j(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/ab;->notifyDataSetInvalidated()V

    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ap;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->i(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    .line 316
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ap;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->j(Lcom/yelp/android/ui/activities/search/SearchOverlay;)Lcom/yelp/android/ui/activities/search/ab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/search/ab;->a(Ljava/util/List;)V

    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ap;->a:Lcom/yelp/android/ui/activities/search/SearchOverlay;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/SearchOverlay;->i(Lcom/yelp/android/ui/activities/search/SearchOverlay;)V

    .line 310
    return-void
.end method
