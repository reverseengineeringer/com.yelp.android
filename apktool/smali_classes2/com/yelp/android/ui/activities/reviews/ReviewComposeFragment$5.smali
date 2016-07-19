.class Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$5;
.super Ljava/lang/Object;
.source "ReviewComposeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$5;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$5;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a()I

    move-result v0

    .line 272
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$5;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->d:Lcom/yelp/android/ui/activities/reviews/c;

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/reviews/c;->a(I)V

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment$5;->a:Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;

    sget v1, Lcom/yelp/android/ui/util/av;->c:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewComposeFragment;J)V

    .line 274
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ReviewWriteRating:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "source"

    const-string/jumbo v2, "compose_page"

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    return-void
.end method
