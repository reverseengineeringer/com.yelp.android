.class public Lcom/yelp/android/ui/activities/events/f;
.super Lcom/yelp/android/ui/util/w;
.source "NearbyEventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/events/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/Event;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Lcom/yelp/android/serializable/Event;


# instance fields
.field private b:Lcom/yelp/android/ui/util/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/yelp/android/serializable/Event;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Event;-><init>()V

    sput-object v0, Lcom/yelp/android/ui/activities/events/f;->a:Lcom/yelp/android/serializable/Event;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/yelp/android/ui/util/t;->a(Landroid/support/v4/app/Fragment;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/events/f;->b:Lcom/yelp/android/ui/util/t;

    .line 30
    return-void
.end method


# virtual methods
.method public a(I)Lcom/yelp/android/serializable/Event;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/f;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/events/f;->a:Lcom/yelp/android/serializable/Event;

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/yelp/android/ui/util/w;->a(Ljava/util/List;)V

    .line 85
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/events/f;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/f;->a(I)Lcom/yelp/android/serializable/Event;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const v5, 0x7f0200c3

    const/4 v3, 0x0

    .line 34
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/f;->a(I)Lcom/yelp/android/serializable/Event;

    move-result-object v0

    sget-object v2, Lcom/yelp/android/ui/activities/events/f;->a:Lcom/yelp/android/serializable/Event;

    if-ne v0, v2, :cond_0

    .line 36
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030106

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 39
    const v0, 0x7f0f03a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0703db

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 65
    :goto_0
    return-object p2

    .line 45
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/events/f$a;

    if-nez v0, :cond_2

    .line 46
    :cond_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030103

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v0, Lcom/yelp/android/ui/activities/events/f$a;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/events/f$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 51
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/events/f$a;

    .line 52
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/events/f;->a(I)Lcom/yelp/android/serializable/Event;

    move-result-object v2

    .line 54
    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->J()Lcom/yelp/android/serializable/Photo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 55
    iget-object v3, p0, Lcom/yelp/android/ui/activities/events/f;->b:Lcom/yelp/android/ui/util/t;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->J()Lcom/yelp/android/serializable/Photo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v3

    iget-object v4, v0, Lcom/yelp/android/ui/activities/events/f$a;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 63
    :goto_1
    iget-object v3, v0, Lcom/yelp/android/ui/activities/events/f$a;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Event;->G()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, v0, Lcom/yelp/android/ui/activities/events/f$a;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Lcom/yelp/android/serializable/Event;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :cond_3
    iget-object v3, v0, Lcom/yelp/android/ui/activities/events/f$a;->a:Lcom/yelp/android/ui/widgets/RoundedImageView;

    invoke-virtual {v3, v5}, Lcom/yelp/android/ui/widgets/RoundedImageView;->setImageResource(I)V

    goto :goto_1
.end method
