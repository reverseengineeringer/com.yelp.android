.class Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$3;
.super Ljava/lang/Object;
.source "ActivityBusinessPage.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 864
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$3;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;

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

    .line 874
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 876
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6$3;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage$6;->b:Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Z)V

    .line 878
    :cond_0
    return v1
.end method
