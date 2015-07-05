.class public Lcom/yelp/android/ui/activities/events/aq;
.super Lcom/yelp/android/ui/util/au;
.source "EventTopAttendeesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
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
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 18
    new-instance v0, Lcom/yelp/android/serializable/User;

    const/4 v4, 0x0

    move-object v2, v1

    move-object v3, v1

    move v6, v5

    move-object v7, v1

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/serializable/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/ui/activities/events/aq;->a:Lcom/yelp/android/serializable/User;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    return-void
.end method

.method private a(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/aq;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 67
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300d6

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030144

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/yelp/android/ui/util/cn;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/ui/util/cn;-><init>(Landroid/view/View;Z)V

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private b()I
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/aq;->b()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 45
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    .line 47
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/events/aq;->a:Lcom/yelp/android/serializable/User;

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
    .line 33
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/aq;->a(Ljava/util/List;)V

    .line 34
    iput-object p2, p0, Lcom/yelp/android/ui/activities/events/aq;->b:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->clear()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/aq;->b:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/aq;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 61
    :goto_0
    if-eqz v0, :cond_1

    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    return v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :cond_1
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->getCount()I

    move-result v0

    goto :goto_1
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/aq;->a(I)Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/aq;->b()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 80
    if-nez p2, :cond_0

    .line 81
    invoke-direct {p0, p1, p3}, Lcom/yelp/android/ui/activities/events/aq;->a(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/events/aq;->b()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 85
    const v0, 0x7f0c0324

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/aq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_0
    return-object p2

    .line 87
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/cn;

    .line 88
    iget-object v1, v0, Lcom/yelp/android/ui/util/cn;->n:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/aq;->a(I)Lcom/yelp/android/serializable/User;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/cn;->a(Lcom/yelp/android/serializable/DisplayableAsUserBadge;)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x2

    return v0
.end method
