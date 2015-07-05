.class public Lcom/yelp/android/ui/activities/ei;
.super Lcom/yelp/android/ui/util/au;
.source "CategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/Category;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/ei;-><init>(ZLjava/util/Map;Ljava/util/List;)V

    .line 31
    return-void
.end method

.method public constructor <init>(ZLjava/util/Map;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/yelp/android/ui/activities/ei;->a:Ljava/util/Map;

    .line 36
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/ei;->c:Z

    .line 37
    iput-object p3, p0, Lcom/yelp/android/ui/activities/ei;->b:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 42
    if-nez p2, :cond_0

    .line 43
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300f0

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 45
    new-instance v0, Lcom/yelp/android/ui/activities/ej;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/ej;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 47
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ej;

    .line 48
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/ei;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Category;

    .line 49
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ei;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Category;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 50
    iget-object v4, v0, Lcom/yelp/android/ui/activities/ej;->a:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v2, v5, v5, v5}, Landroid/widget/CheckedTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/ei;->c:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Category;->getNumChildren()I

    move-result v2

    if-lez v2, :cond_1

    .line 52
    iget-object v2, v0, Lcom/yelp/android/ui/activities/ej;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    :goto_0
    iget-object v4, v0, Lcom/yelp/android/ui/activities/ej;->a:Landroid/widget/CheckedTextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ei;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Category;->getNumChildren()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 58
    iget-object v0, v0, Lcom/yelp/android/ui/activities/ej;->a:Landroid/widget/CheckedTextView;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-object p2

    .line 54
    :cond_1
    iget-object v2, v0, Lcom/yelp/android/ui/activities/ej;->b:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 56
    goto :goto_1
.end method
