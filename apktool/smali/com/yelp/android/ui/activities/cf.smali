.class Lcom/yelp/android/ui/activities/cf;
.super Ljava/lang/Object;
.source "ActivityFullScreenAward.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityFullScreenAward;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityFullScreenAward;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/yelp/android/ui/activities/cf;->a:Lcom/yelp/android/ui/activities/ActivityFullScreenAward;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cf;->a:Lcom/yelp/android/ui/activities/ActivityFullScreenAward;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->finish()V

    .line 112
    return-void
.end method