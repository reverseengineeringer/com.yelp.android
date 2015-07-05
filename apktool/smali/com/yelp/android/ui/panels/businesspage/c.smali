.class Lcom/yelp/android/ui/panels/businesspage/c;
.super Ljava/lang/Object;
.source "PanelBusinessPageHeader.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/businesspage/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesspage/b;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesspage/c;->a:Lcom/yelp/android/ui/panels/businesspage/b;

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
    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/panels/businesspage/c;->a:Lcom/yelp/android/ui/panels/businesspage/b;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/businesspage/b;->a(Lcom/yelp/android/ui/panels/businesspage/b;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->requestDisallowInterceptTouchEvent(Z)V

    .line 82
    const/4 v0, 0x0

    return v0
.end method
