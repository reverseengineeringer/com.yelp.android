.class Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$2;
.super Ljava/lang/Object;
.source "ActivityMenuWebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$2;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$2;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;

    const v1, 0x7f0f01a4

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 183
    invoke-static {v0, p0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 184
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView$2;->a:Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;

    const v2, 0x7f0f01a2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityMenuWebView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v1, v3, v3, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 185
    return-void
.end method
