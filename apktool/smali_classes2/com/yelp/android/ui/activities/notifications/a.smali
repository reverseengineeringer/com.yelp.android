.class public Lcom/yelp/android/ui/activities/notifications/a;
.super Lcom/yelp/android/ui/util/w;
.source "AlertListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/notifications/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/Alert;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/notifications/a$a;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/notifications/a$a;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/a;->a:Lcom/yelp/android/ui/activities/notifications/a$a;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/notifications/a;)Lcom/yelp/android/ui/activities/notifications/a$a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/a;->a:Lcom/yelp/android/ui/activities/notifications/a$a;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 30
    if-nez p2, :cond_0

    .line 31
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ea

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 34
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/b;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/notifications/b;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/notifications/b;

    .line 37
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/notifications/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Alert;

    .line 38
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/notifications/b;->a(Lcom/yelp/android/serializable/Alert;)V

    .line 40
    iget-object v3, v0, Lcom/yelp/android/ui/activities/notifications/b;->b:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 41
    iget-object v3, v0, Lcom/yelp/android/ui/activities/notifications/b;->b:Landroid/widget/Button;

    new-instance v4, Lcom/yelp/android/ui/activities/notifications/a$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/yelp/android/ui/activities/notifications/a$1;-><init>(Lcom/yelp/android/ui/activities/notifications/a;Lcom/yelp/android/serializable/Alert;I)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    :cond_1
    iget-object v3, v0, Lcom/yelp/android/ui/activities/notifications/b;->a:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 53
    iget-object v3, v0, Lcom/yelp/android/ui/activities/notifications/b;->b:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v2, 0x1

    .line 55
    :cond_2
    iget-object v3, v0, Lcom/yelp/android/ui/activities/notifications/b;->a:Landroid/widget/Button;

    new-instance v4, Lcom/yelp/android/ui/activities/notifications/a$2;

    invoke-direct {v4, p0, v1, v2, p1}, Lcom/yelp/android/ui/activities/notifications/a$2;-><init>(Lcom/yelp/android/ui/activities/notifications/a;Lcom/yelp/android/serializable/Alert;II)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_3
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Alert;->d()Lcom/yelp/android/serializable/Video;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 65
    iget-object v0, v0, Lcom/yelp/android/ui/activities/notifications/b;->d:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/notifications/a$3;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/notifications/a$3;-><init>(Lcom/yelp/android/ui/activities/notifications/a;Lcom/yelp/android/serializable/Alert;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_4
    :goto_0
    return-object p2

    .line 72
    :cond_5
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Alert;->h()Lcom/yelp/android/serializable/Photo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 73
    iget-object v0, v0, Lcom/yelp/android/ui/activities/notifications/b;->d:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/notifications/a$4;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/notifications/a$4;-><init>(Lcom/yelp/android/ui/activities/notifications/a;Lcom/yelp/android/serializable/Alert;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
