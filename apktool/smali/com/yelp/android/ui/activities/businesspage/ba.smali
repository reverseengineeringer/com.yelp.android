.class Lcom/yelp/android/ui/activities/businesspage/ba;
.super Ljava/lang/Object;
.source "BusinessPageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/YelpActivity;

.field final synthetic b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/ui/activities/support/YelpActivity;)V
    .locals 0

    .prologue
    .line 2546
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ba;->b:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/ba;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2552
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ba;->a:Lcom/yelp/android/ui/activities/support/YelpActivity;

    check-cast v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    const/16 v1, 0x132

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->showDialog(I)V

    .line 2554
    return-void
.end method
