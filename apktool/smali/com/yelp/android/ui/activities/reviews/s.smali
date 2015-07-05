.class Lcom/yelp/android/ui/activities/reviews/s;
.super Ljava/lang/Object;
.source "ActivityReviewWrite.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/r;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/r;)V
    .locals 0

    .prologue
    .line 677
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/s;->a:Lcom/yelp/android/ui/activities/reviews/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/s;->a:Lcom/yelp/android/ui/activities/reviews/r;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/r;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->finish()V

    .line 683
    return-void
.end method
