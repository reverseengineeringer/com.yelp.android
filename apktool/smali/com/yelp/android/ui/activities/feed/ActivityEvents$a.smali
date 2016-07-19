.class Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;
.super Lcom/yelp/android/ui/util/w;
.source "ActivityEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/ActivityEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/Event;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/feed/ActivityEvents$1;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 60
    if-nez p2, :cond_0

    .line 61
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030123

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 64
    new-instance v0, Lcom/yelp/android/cg/e;

    invoke-direct {v0, p2}, Lcom/yelp/android/cg/e;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/cg/e;

    .line 67
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Event;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/cg/e;->a(Lcom/yelp/android/serializable/Event;Landroid/content/Context;)V

    .line 68
    new-instance v1, Lcom/yelp/android/ui/activities/feed/ActivityEvents$a$1;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/feed/ActivityEvents$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;I)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/e;->b(Landroid/view/View$OnClickListener;)V

    .line 80
    return-object p2
.end method
