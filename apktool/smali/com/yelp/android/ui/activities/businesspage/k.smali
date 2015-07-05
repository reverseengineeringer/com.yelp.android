.class Lcom/yelp/android/ui/activities/businesspage/k;
.super Ljava/lang/Object;
.source "ActivityBusinessPage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/h;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/h;)V
    .locals 0

    .prologue
    .line 843
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/k;->a:Lcom/yelp/android/ui/activities/businesspage/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 852
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 853
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/k;->a:Lcom/yelp/android/ui/activities/businesspage/h;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/businesspage/h;->b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Z)V

    .line 855
    :cond_0
    return v1
.end method
