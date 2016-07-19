.class public Lcom/yelp/android/ui/activities/mediagrid/a;
.super Lcom/yelp/android/ui/util/w;
.source "MediaGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/mediagrid/a$1;,
        Lcom/yelp/android/ui/activities/mediagrid/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/Media;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/a;->a(Ljava/util/List;)V

    .line 36
    iput-object p2, p0, Lcom/yelp/android/ui/activities/mediagrid/a;->a:Landroid/view/View$OnClickListener;

    .line 37
    return-void
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/Media;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/a;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/mediagrid/a;->b:Z

    .line 90
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Media;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/a;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/mediagrid/a;->c:Z

    .line 94
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 44
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v1

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/mediagrid/a;->c:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/a;->a(I)Lcom/yelp/android/serializable/Media;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mediagrid/a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mediagrid/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/a;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 70
    if-nez p2, :cond_0

    .line 71
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03005d

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/a;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :goto_0
    return-object p2

    .line 75
    :cond_1
    if-nez p2, :cond_2

    .line 76
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0301c6

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 77
    new-instance v0, Lcom/yelp/android/ui/activities/mediagrid/a$a;

    invoke-direct {v0, p2, v2}, Lcom/yelp/android/ui/activities/mediagrid/a$a;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/mediagrid/a$1;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/mediagrid/a$a;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/mediagrid/a;->a(I)Lcom/yelp/android/serializable/Media;

    move-result-object v1

    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/mediagrid/a;->b:Z

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/mediagrid/a$a;->a(Lcom/yelp/android/ui/activities/mediagrid/a$a;Lcom/yelp/android/serializable/Media;Z)V

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
