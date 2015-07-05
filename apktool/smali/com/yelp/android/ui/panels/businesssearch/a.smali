.class Lcom/yelp/android/ui/panels/businesssearch/a;
.super Lcom/yelp/android/ui/util/x;
.source "BusinessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/x",
        "<TT;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;)V
    .locals 0

    .prologue
    .line 487
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/a;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/x;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 487
    check-cast p2, Lcom/yelp/android/ui/panels/businesssearch/f;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/panels/businesssearch/a;->a(Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/f;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 490
    const-string/jumbo v0, ""

    .line 491
    invoke-interface {p2}, Lcom/yelp/android/ui/panels/businesssearch/f;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    .line 492
    if-nez v1, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-object v0

    .line 495
    :cond_1
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getCategories()Ljava/util/List;

    move-result-object v1

    .line 496
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 497
    const-string/jumbo v0, ", "

    new-instance v2, Lcom/yelp/android/serializable/w;

    invoke-direct {v2}, Lcom/yelp/android/serializable/w;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/ag;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
