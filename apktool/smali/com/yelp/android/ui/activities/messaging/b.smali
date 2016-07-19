.class public Lcom/yelp/android/ui/activities/messaging/b;
.super Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
.source "SuggestedBusinessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter",
        "<",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/messaging/b;->c:Ljava/util/HashSet;

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const/4 v1, 0x0

    sget-object v2, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->RATING:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/b;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/messaging/b;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/b;->c:Ljava/util/HashSet;

    return-object v0
.end method

.method private a(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 68
    const v0, 0x7f0f00b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 69
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/messaging/b;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v2, Lcom/yelp/android/ui/activities/messaging/b$1;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/messaging/b$1;-><init>(Lcom/yelp/android/ui/activities/messaging/b;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 82
    iget-object v2, p0, Lcom/yelp/android/ui/activities/messaging/b;->c:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 83
    return-void
.end method

.method private a(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 3

    .prologue
    .line 59
    const v0, 0x7f0f045e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->aK()Lcom/yelp/android/serializable/MessageTheBusiness;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yelp/android/serializable/MessageTheBusiness;->c()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 62
    invoke-virtual {v1}, Lcom/yelp/android/serializable/MessageTheBusiness;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/b;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 43
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/b;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/b;->c:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/messaging/b;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/messaging/b;->notifyDataSetChanged()V

    .line 47
    return-void
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/b;->c:Ljava/util/HashSet;

    return-object v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f0300f6

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/messaging/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 36
    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/messaging/b;->a(Landroid/view/View;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 37
    invoke-direct {p0, v1, p1}, Lcom/yelp/android/ui/activities/messaging/b;->a(Landroid/view/View;I)V

    .line 38
    return-object v1
.end method
