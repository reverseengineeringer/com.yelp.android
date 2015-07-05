.class public Lcom/yelp/android/ui/activities/notifications/a;
.super Lcom/yelp/android/ui/util/au;
.source "AlertListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/Alert;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/notifications/e;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/notifications/e;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/a;->a:Lcom/yelp/android/ui/activities/notifications/e;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/notifications/a;)Lcom/yelp/android/ui/activities/notifications/e;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/a;->a:Lcom/yelp/android/ui/activities/notifications/e;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 30
    if-nez p2, :cond_0

    .line 31
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300c7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 33
    new-instance v0, Lcom/yelp/android/ui/activities/notifications/f;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/notifications/f;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/notifications/f;

    .line 36
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/notifications/a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Alert;

    .line 37
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/notifications/f;->a(Lcom/yelp/android/serializable/Alert;)V

    .line 39
    iget-object v2, v0, Lcom/yelp/android/ui/activities/notifications/f;->a:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 40
    iget-object v2, v0, Lcom/yelp/android/ui/activities/notifications/f;->a:Landroid/widget/Button;

    new-instance v3, Lcom/yelp/android/ui/activities/notifications/b;

    invoke-direct {v3, p0, v1, p1}, Lcom/yelp/android/ui/activities/notifications/b;-><init>(Lcom/yelp/android/ui/activities/notifications/a;Lcom/yelp/android/serializable/Alert;I)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    :cond_1
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Alert;->getVideo()Lcom/yelp/android/serializable/Video;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 50
    iget-object v0, v0, Lcom/yelp/android/ui/activities/notifications/f;->c:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/notifications/c;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/notifications/c;-><init>(Lcom/yelp/android/ui/activities/notifications/a;Lcom/yelp/android/serializable/Alert;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_2
    :goto_0
    return-object p2

    .line 56
    :cond_3
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Alert;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 57
    iget-object v0, v0, Lcom/yelp/android/ui/activities/notifications/f;->c:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/notifications/d;

    invoke-direct {v2, p0, v1}, Lcom/yelp/android/ui/activities/notifications/d;-><init>(Lcom/yelp/android/ui/activities/notifications/a;Lcom/yelp/android/serializable/Alert;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
