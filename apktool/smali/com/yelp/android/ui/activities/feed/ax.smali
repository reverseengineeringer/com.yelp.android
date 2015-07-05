.class Lcom/yelp/android/ui/activities/feed/ax;
.super Ljava/lang/Object;
.source "PhotoMeFeedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/BizPhotoFeedEntry;

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/activities/feed/aw;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/aw;Lcom/yelp/android/serializable/BizPhotoFeedEntry;I)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/ax;->c:Lcom/yelp/android/ui/activities/feed/aw;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/ax;->a:Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    iput p3, p0, Lcom/yelp/android/ui/activities/feed/ax;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 92
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 93
    const-string/jumbo v0, "photos"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/ax;->a:Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    iget-object v2, v2, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 94
    const-string/jumbo v2, "subindex"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    const-string/jumbo v0, "entryindex"

    iget v2, p0, Lcom/yelp/android/ui/activities/feed/ax;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ax;->c:Lcom/yelp/android/ui/activities/feed/aw;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/aw;->a(Lcom/yelp/android/ui/activities/feed/aw;)Lcom/yelp/android/ui/activities/feed/ay;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ax;->a:Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    iget-object v2, v0, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Lcom/yelp/android/ui/activities/feed/ax;->b:I

    invoke-interface {v1, v2, v0, v3}, Lcom/yelp/android/ui/activities/feed/ay;->a(Ljava/util/ArrayList;II)V

    .line 97
    return-void
.end method
