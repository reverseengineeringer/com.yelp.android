.class Lcom/yelp/android/cg/a$2;
.super Ljava/lang/Object;
.source "BaseBusinessFeedViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/cg/a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ci/f;

.field final synthetic b:Lcom/yelp/android/serializable/FeedItem;

.field final synthetic c:Lcom/yelp/android/serializable/YelpBusiness;

.field final synthetic d:Lcom/yelp/android/cg/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/cg/a;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/yelp/android/cg/a$2;->d:Lcom/yelp/android/cg/a;

    iput-object p2, p0, Lcom/yelp/android/cg/a$2;->a:Lcom/yelp/android/ci/f;

    iput-object p3, p0, Lcom/yelp/android/cg/a$2;->b:Lcom/yelp/android/serializable/FeedItem;

    iput-object p4, p0, Lcom/yelp/android/cg/a$2;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/yelp/android/cg/a$2;->a:Lcom/yelp/android/ci/f;

    new-instance v1, Lcom/yelp/android/ci/b;

    iget-object v2, p0, Lcom/yelp/android/cg/a$2;->b:Lcom/yelp/android/serializable/FeedItem;

    iget-object v3, p0, Lcom/yelp/android/cg/a$2;->c:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/ci/b;-><init>(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/serializable/YelpBusiness;)V

    invoke-interface {v0, v1}, Lcom/yelp/android/ci/f;->a(Lcom/yelp/android/ci/e;)V

    .line 108
    return-void
.end method
