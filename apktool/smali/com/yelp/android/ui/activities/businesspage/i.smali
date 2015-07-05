.class Lcom/yelp/android/ui/activities/businesspage/i;
.super Ljava/lang/Object;
.source "ActivityBusinessPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/h;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/h;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/i;->a:Lcom/yelp/android/ui/activities/businesspage/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 828
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/i;->a:Lcom/yelp/android/ui/activities/businesspage/h;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/businesspage/h;->b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/i;->a:Lcom/yelp/android/ui/activities/businesspage/h;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/businesspage/h;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/i;->a:Lcom/yelp/android/ui/activities/businesspage/h;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/businesspage/h;->b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->startActivity(Landroid/content/Intent;)V

    .line 830
    return-void
.end method
