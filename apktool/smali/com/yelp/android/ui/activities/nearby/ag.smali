.class public Lcom/yelp/android/ui/activities/nearby/ag;
.super Lcom/yelp/android/ui/util/au;
.source "NearbySearchSuggestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/RichSearchSuggestion;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030127

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    new-instance v1, Lcom/yelp/android/ui/activities/nearby/ah;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/activities/nearby/ah;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    return-object v0
.end method

.method private a(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/nearby/ag;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/nearby/ah;

    .line 50
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, v1, Lcom/yelp/android/ui/activities/nearby/ah;->b:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    :goto_0
    iget-object v1, v1, Lcom/yelp/android/ui/activities/nearby/ah;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getTerm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void

    .line 53
    :cond_0
    iget-object v2, v1, Lcom/yelp/android/ui/activities/nearby/ah;->b:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    invoke-direct {p0, p1, v1, v0}, Lcom/yelp/android/ui/activities/nearby/ag;->a(Landroid/view/View;Lcom/yelp/android/ui/activities/nearby/ah;Lcom/yelp/android/serializable/RichSearchSuggestion;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Lcom/yelp/android/ui/activities/nearby/ah;Lcom/yelp/android/serializable/RichSearchSuggestion;)V
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->getResourceForName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/h;->c(Landroid/content/Context;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {p3}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/util/RemoteImageExceptionCallback;->INSTANCE:Lcom/yelp/android/util/RemoteImageExceptionCallback;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(Lcom/bumptech/glide/request/c;)Lcom/bumptech/glide/c;

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v1, p2, Lcom/yelp/android/ui/activities/nearby/ah;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/ag;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->getRichSearchSuggestionType()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .prologue
    .line 35
    if-nez p2, :cond_0

    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/nearby/ag;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 36
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/yelp/android/ui/activities/nearby/ag;->a(Landroid/view/View;I)V

    .line 37
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->values()[Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
