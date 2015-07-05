.class Lcom/yelp/android/ui/activities/reviewpage/bj;
.super Ljava/lang/Object;
.source "TranslatableReviewAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/reviewpage/aj;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/bi;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/bi;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/bj;->a:Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/bj;->a:Lcom/yelp/android/ui/activities/reviewpage/bi;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/bi;->notifyDataSetChanged()V

    .line 216
    return-void
.end method
