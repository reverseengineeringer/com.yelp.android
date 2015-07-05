.class Lcom/yelp/android/ui/activities/reviews/w;
.super Ljava/lang/Object;
.source "ActivityReviewWrite.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/u;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/u;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/w;->a:Lcom/yelp/android/ui/activities/reviews/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/w;->a:Lcom/yelp/android/ui/activities/reviews/u;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviews/u;->a:Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityReviewWrite;->finish()V

    .line 879
    return-void
.end method
