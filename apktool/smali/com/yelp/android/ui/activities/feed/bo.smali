.class Lcom/yelp/android/ui/activities/feed/bo;
.super Ljava/lang/Object;
.source "TipMeFeedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/br;

.field final synthetic b:Lcom/yelp/android/ui/activities/feed/bl;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/bl;Lcom/yelp/android/ui/activities/feed/br;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/bo;->b:Lcom/yelp/android/ui/activities/feed/bl;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/bo;->a:Lcom/yelp/android/ui/activities/feed/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bo;->a:Lcom/yelp/android/ui/activities/feed/br;

    const v0, 0x7f0c002f

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v0, 0x7f0c0026

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TipFeedEntry;

    invoke-interface {v1, v2, v0}, Lcom/yelp/android/ui/activities/feed/br;->c(ILcom/yelp/android/serializable/TipFeedEntry;)V

    .line 63
    return-void
.end method
