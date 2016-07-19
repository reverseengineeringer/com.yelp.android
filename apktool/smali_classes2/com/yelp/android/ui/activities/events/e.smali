.class public Lcom/yelp/android/ui/activities/events/e;
.super Lcom/yelp/android/ui/util/w;
.source "EventTopAttendeesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/User;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/yelp/android/serializable/User;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x0

    .line 18
    new-instance v0, Lcom/yelp/android/serializable/User;

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move v8, v7

    move-object v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/serializable/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/events/e;->a:Lcom/yelp/android/serializable/User;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    return-void
.end method

.method private a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/e;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 68
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030106

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301a7

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/yelp/android/ui/util/ap$b;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/ui/util/ap$b;-><init>(Landroid/view/View;Z)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private b()I
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/e;->b()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 46
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 48
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/events/e;->a:Lcom/yelp/android/serializable/User;

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/User;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/e;->a(Ljava/util/List;)V

    .line 35
    iput-object p2, p0, Lcom/yelp/android/ui/activities/events/e;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->clear()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/e;->b:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 62
    :goto_0
    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    return v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_1
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v0

    goto :goto_1
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/e;->a(I)Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/e;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 54
    const/4 v0, 0x1

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 83
    if-nez p2, :cond_0

    .line 84
    invoke-direct {p0, p1, p3}, Lcom/yelp/android/ui/activities/events/e;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/e;->b()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 88
    const v0, 0x7f0f03a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_0
    return-object p2

    .line 90
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ap$b;

    .line 91
    iget-object v1, v0, Lcom/yelp/android/ui/util/ap$b;->n:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/e;->a(I)Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ap$b;->a(Lcom/yelp/android/serializable/DisplayableAsUserBadge;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x2

    return v0
.end method
