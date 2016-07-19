.class Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a$2;
.super Ljava/lang/Object;
.source "ActivityReviewWrite.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;)V
    .locals 0

    .prologue
    .line 930
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a$2;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a$2;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite$a;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->finish()V

    .line 934
    return-void
.end method
