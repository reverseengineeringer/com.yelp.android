.class public Lcom/yelp/android/ui/activities/profile/c;
.super Lcom/yelp/android/ui/util/w;
.source "ReviewDraftAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/profile/c$1;,
        Lcom/yelp/android/ui/activities/profile/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/ReviewDraft;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/util/t;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/util/t;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/c;->a:Lcom/yelp/android/ui/util/t;

    .line 31
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/yelp/android/serializable/ReviewDraft;
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/c;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewDraft;

    .line 49
    invoke-static {p1}, Lcom/brightcove/player/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/ReviewDraft;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/c;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 36
    if-nez p2, :cond_0

    .line 37
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03015d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 40
    new-instance v0, Lcom/yelp/android/ui/activities/profile/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/yelp/android/ui/activities/profile/c$a;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/profile/c$1;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/profile/c$a;

    .line 43
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/c;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/ReviewDraft;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/c;->a:Lcom/yelp/android/ui/util/t;

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/profile/c$a;->a(Lcom/yelp/android/ui/activities/profile/c$a;Lcom/yelp/android/serializable/ReviewDraft;Landroid/content/Context;Lcom/yelp/android/ui/util/t;)V

    .line 44
    return-object p2
.end method
