.class Lcom/yelp/android/ui/activities/feed/l;
.super Ljava/lang/Object;
.source "CheckInMeFeedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/n;

.field final synthetic b:Lcom/yelp/android/ui/activities/feed/k;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/k;Lcom/yelp/android/ui/activities/feed/n;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/l;->b:Lcom/yelp/android/ui/activities/feed/k;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/l;->a:Lcom/yelp/android/ui/activities/feed/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 41
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/l;->a:Lcom/yelp/android/ui/activities/feed/n;

    const v0, 0x7f0c002f

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v0, 0x7f0c0026

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/CheckInFeedEntry;

    invoke-interface {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/n;->a(ILcom/yelp/android/serializable/CheckInFeedEntry;)V

    .line 43
    return-void
.end method