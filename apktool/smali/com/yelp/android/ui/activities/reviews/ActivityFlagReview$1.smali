.class Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview$1;
.super Ljava/lang/Object;
.source "ActivityFlagReview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview$1;->a:Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviews/ActivityFlagReview;->finish()V

    .line 125
    return-void
.end method
