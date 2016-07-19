.class Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$1;
.super Ljava/lang/Object;
.source "ActivityBusinessPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;->onInflate(Landroid/view/ViewStub;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;)V
    .locals 0

    .prologue
    .line 841
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$1;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 844
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$1;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;->b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$1;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$1;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;->b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->c(Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityRegularUsers;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->startActivity(Landroid/content/Intent;)V

    .line 849
    return-void
.end method
