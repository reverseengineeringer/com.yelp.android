.class public Lcom/yelp/android/ui/activities/nearby/c;
.super Lcom/yelp/android/ui/util/w;
.source "NearbySearchSuggestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/nearby/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/RichSearchSuggestion;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/nearby/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 23
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/d;

    const-string/jumbo v1, "new_tag"

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/activities/nearby/d;-><init>(Ljava/lang/String;)V

    .line 24
    new-instance v1, Lcom/yelp/android/ui/activities/nearby/e;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/activities/nearby/e;-><init>(Lcom/yelp/android/ui/activities/nearby/d;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/nearby/c;->a:Lcom/yelp/android/ui/activities/nearby/e;

    .line 25
    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    new-instance v1, Lcom/yelp/android/ui/activities/nearby/c$a;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/activities/nearby/c$a;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    return-object v0
.end method

.method private a(Landroid/view/View;I)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 53
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/nearby/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/nearby/c$a;

    .line 56
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 57
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->f()I

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, v1, Lcom/yelp/android/ui/activities/nearby/c$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v2, v1, Lcom/yelp/android/ui/activities/nearby/c$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/c;->a:Lcom/yelp/android/ui/activities/nearby/e;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/nearby/e;->a(Lcom/yelp/android/serializable/RichSearchSuggestion;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/yelp/android/ui/activities/nearby/c$a;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 69
    iget-object v2, v1, Lcom/yelp/android/ui/activities/nearby/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/c;->a:Lcom/yelp/android/ui/activities/nearby/e;

    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/activities/nearby/e;->b(Lcom/yelp/android/serializable/RichSearchSuggestion;)V

    .line 74
    :cond_0
    :goto_1
    iget-object v1, v1, Lcom/yelp/android/ui/activities/nearby/c$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void

    .line 61
    :cond_1
    iget-object v2, v1, Lcom/yelp/android/ui/activities/nearby/c$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object v2, v1, Lcom/yelp/android/ui/activities/nearby/c$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 65
    invoke-direct {p0, p1, v1, v0}, Lcom/yelp/android/ui/activities/nearby/c;->a(Landroid/view/View;Lcom/yelp/android/ui/activities/nearby/c$a;Lcom/yelp/android/serializable/RichSearchSuggestion;)V

    goto :goto_0

    .line 71
    :cond_3
    iget-object v2, v1, Lcom/yelp/android/ui/activities/nearby/c$a;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, v1, Lcom/yelp/android/ui/activities/nearby/c$a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/View;Lcom/yelp/android/ui/activities/nearby/c$a;Lcom/yelp/android/serializable/RichSearchSuggestion;)V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3}, Lcom/yelp/android/serializable/RichSearchSuggestion;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    invoke-virtual {p3}, Lcom/yelp/android/serializable/RichSearchSuggestion;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/ui/activities/nearby/c$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p2, Lcom/yelp/android/ui/activities/nearby/c$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/nearby/c;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/RichSearchSuggestion;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion;->a()Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .prologue
    .line 39
    if-nez p2, :cond_0

    invoke-direct {p0, p3}, Lcom/yelp/android/ui/activities/nearby/c;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 40
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/yelp/android/ui/activities/nearby/c;->a(Landroid/view/View;I)V

    .line 41
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;->values()[Lcom/yelp/android/serializable/RichSearchSuggestion$RichSearchSuggestionType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
