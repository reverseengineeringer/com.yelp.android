.class Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$1;
.super Lcom/yelp/android/ui/util/m;
.source "BusinessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/m",
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
    .line 579
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$1;->a:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/m;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 579
    check-cast p2, Lcom/yelp/android/ui/panels/businesssearch/a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$1;->a(Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/yelp/android/ui/panels/businesssearch/a;)Ljava/lang/String;
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
    .line 582
    const-string/jumbo v0, ""

    .line 583
    invoke-interface {p2}, Lcom/yelp/android/ui/panels/businesssearch/a;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    .line 584
    if-nez v1, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-object v0

    .line 587
    :cond_1
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aV()Ljava/util/List;

    move-result-object v1

    .line 588
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 589
    const-string/jumbo v0, ", "

    new-instance v2, Lcom/yelp/android/serializable/Category$b;

    invoke-direct {v2}, Lcom/yelp/android/serializable/Category$b;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/StringUtils$c;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
