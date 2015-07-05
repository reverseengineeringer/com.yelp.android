.class Lcom/yelp/android/ui/activities/businesspage/f;
.super Ljava/lang/Object;
.source "ActivityBusinessPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

.field final synthetic b:Lcom/yelp/android/serializable/YelpBusiness;

.field final synthetic c:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/f;->c:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/businesspage/f;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/businesspage/f;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/f;->c:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/f;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->l()V

    .line 678
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/f;->b:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/f;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/f;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 682
    :cond_0
    return-void
.end method
