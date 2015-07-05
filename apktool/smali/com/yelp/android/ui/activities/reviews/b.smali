.class Lcom/yelp/android/ui/activities/reviews/b;
.super Ljava/lang/Object;
.source "ActivityFlagReview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/b;->a:Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/b;->a:Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->finish()V

    .line 117
    return-void
.end method
