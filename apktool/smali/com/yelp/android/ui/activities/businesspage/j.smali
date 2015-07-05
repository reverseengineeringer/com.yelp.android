.class Lcom/yelp/android/ui/activities/businesspage/j;
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
    .line 834
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/j;->a:Lcom/yelp/android/ui/activities/businesspage/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 837
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 838
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/j;->a:Lcom/yelp/android/ui/activities/businesspage/h;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/businesspage/h;->b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Z)V

    .line 839
    return-void
.end method
